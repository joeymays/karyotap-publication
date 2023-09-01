# KaryoTap Publication Codebook

Codebook for analyses in Mays et al., 2023

## Data Availability

*coming soon*

## Analysis

### R Dependencies

Analysis:

- karyotapR
- here
- tidyverse
- GenomicRanges
- furrr
- emmeans
- scuttle

Plotting:

- ggplotify
- cowplot
- ggplot2
- ggrastr
- ComplexHeatmap
- karyoploteR
- ggdist   
- geomtextpath


### Scripts

```
# Experiment Files
rmarkdown::render('analysis-notebooks/exp01-cnweaver-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/exp04-cnweaver-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/exp05-cnweaver-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 1
rmarkdown::render('analysis-notebooks/Figure-A_panel-maps.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-01.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure S1
rmarkdown::render('analysis-notebooks/Figure-B_heatmap-clustering.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-S01.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 2
rmarkdown::render('analysis-notebooks/Figure-C-sensitivity-specificity.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-02.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 3
rmarkdown::render('analysis-notebooks/Figure-03.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure S2
rmarkdown::render('analysis-notebooks/Figure-S02.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 4
##hpc
##rmarkdown::render('analysis-notebooks/Figure-D-downsample-sim.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-D-downsample-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"
##hpc
##rmarkdown::render('analysis-notebooks/Figure-E-panel-sim.Rmd', 'html_notebook', output_dir = "analysis-html"
##rmarkdown::render('analysis-notebooks/Figure-E-panel-sim-3component.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-E-panel-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-E-panel-analysis-3component.Rmd', 'html_notebook', output_dir = "analysis-html"
##hpc
##rmarkdown::render('analysis-notebooks/Figure-G-depth-sim.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-G-depth-analysis.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-04.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure S3
rmarkdown::render('analysis-notebooks/Figure-S03.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 5 
#need 3 component
rmarkdown::render('analysis-notebooks/Figure-I_exp4_sensitivity.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-J_exp4_barcoding.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-05.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure 6
rmarkdown::render('analysis-notebooks/Figure-K_exp5_karyocreate.Rmd', 'html_notebook', output_dir = "analysis-html"
rmarkdown::render('analysis-notebooks/Figure-06.Rmd', 'html_notebook', output_dir = "analysis-html"

# Figure S4
rmarkdown::render('analysis-notebooks/Figure-S04.Rmd', 'html_notebook', output_dir = "analysis-html"
```

