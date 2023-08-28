calcTruePosRate <-
  function(TapestriExperiment, chromosome.scope = "chr") {
    if (chromosome.scope == "chr" | chromosome.scope == "chromosome") {
      gmm.parameters <- TapestriExperiment@gmmParams$chr
      gmm.boundaries <-
        getGMMBoundaries(TapestriExperiment, "chr") %>% nest(.by = "feature.id", .key = "boundaries")
      
    } else if (chromosome.scope == "arm") {
        gmm.parameters <- TapestriExperiment@gmmParams$arm
        gmm.boundaries <-
        getGMMBoundaries(TapestriExperiment, "arm") %>% nest(.by = "feature.id", .key = "boundaries")
    }
    
    
    gmm.parameters <-
      inner_join(gmm.parameters, gmm.boundaries, by = "feature.id")
    
    gmm.metrics <-
      pmap(list(gmm.parameters$feature.id, gmm.parameters$model, gmm.parameters$boundaries), function(feature.id, model, boundaries) {
        result <- model %>%
          add_column(lower.bound = c(NA, unlist(boundaries))) %>%
          add_column(upper.bound = c(unlist(boundaries), NA)) %>%
          add_column(feature.id = feature.id, .after = 0)
        
        result <- result %>%
          mutate(
            lower.p = pnorm(lower.bound, mean, sd, lower.tail = T),
            upper.p = pnorm(upper.bound, mean, sd, lower.tail = F)
          ) %>%
          replace_na(list(upper.p = 0, lower.p = 0)) %>%
          mutate(false.neg.p = lower.p + upper.p) %>%
          mutate(true.pos.p = 1 - false.neg.p)
      })
    
    gmm.metrics <- gmm.metrics %>% list_rbind()
    return(gmm.metrics)
  }

calcTrueNegRate <-
    function(TapestriExperiment, chromosome.scope = "chr") {
        if (chromosome.scope == "chr" | chromosome.scope == "chromosome") {
            gmm.parameters <- TapestriExperiment@gmmParams$chr
            gmm.boundaries <-
                getGMMBoundaries(TapestriExperiment, "chr") %>% nest(.by = "feature.id", .key = "boundaries")
            
        } else if (chromosome.scope == "arm") {
            gmm.parameters <- TapestriExperiment@gmmParams$arm
            gmm.boundaries <-
                getGMMBoundaries(TapestriExperiment, "arm") %>% nest(.by = "feature.id", .key = "boundaries")
        }
        
        gmm.parameters <-
            inner_join(gmm.parameters, gmm.boundaries, by = "feature.id")
        
        gmm.metrics <-
            pmap(list(gmm.parameters$feature.id, gmm.parameters$model, gmm.parameters$boundaries), function(feature.id, model, boundaries) {
                result <- model %>%
                    add_column(lower.bound = c(NA, unlist(boundaries))) %>%
                    add_column(upper.bound = c(unlist(boundaries), NA)) %>%
                    add_column(feature.id = feature.id, .after = 0) %>% 
                    replace_na(list(lower.bound = 0, upper.bound = Inf))

            })
        
        calc.tnr <- function(current.gmm){
            tnr <- numeric(nrow(current.gmm))
            for(i in seq_len(nrow(current.gmm))){
                
                current.lower <- current.gmm[i,"lower.bound", drop = TRUE]
                current.upper <- current.gmm[i, "upper.bound", drop = TRUE]
                
                current.gmm.sub <- current.gmm %>% filter(cn.sim.class != current.gmm[i, "cn.sim.class", drop = TRUE])
                current.gmm.sub <- current.gmm.sub %>% mutate(tn.lower = pnorm(current.lower, mean, sd, lower.tail = T), 
                                                              tn.upper = pnorm(current.upper, mean, sd, lower.tail = F))
                tnr[i] <- (sum(current.gmm.sub$tn.lower) + sum(current.gmm.sub$tn.upper)) / (nrow(current.gmm) - 1)
            }
            current.gmm$tnr <- tnr
            return(current.gmm)
        }
        
        gmm.metrics.results <- map(gmm.metrics, calc.tnr) %>% list_rbind()
        
        return(gmm.metrics.results)
    }

