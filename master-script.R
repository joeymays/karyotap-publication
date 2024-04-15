#master file

# Experiment Files
rmarkdown::render('analysis-notebooks/exp01-karyotapr-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/exp04-karyotapr-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/exp05-karyotapr-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 1
rmarkdown::render('analysis-notebooks/Figure-A_panel-maps.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-01.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure S1
rmarkdown::render('analysis-notebooks/Figure-B_heatmap-clustering.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-S01.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 2
rmarkdown::render('analysis-notebooks/Figure-C-sensitivity-specificity.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-02.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 3
rmarkdown::render('analysis-notebooks/Figure-03.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure S2
rmarkdown::render('analysis-notebooks/Figure-S02.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 4
##hpc
##rmarkdown::render('analysis-notebooks/Figure-D-downsample-sim.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-D-downsample-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")
##hpc
##rmarkdown::render('analysis-notebooks/Figure-E-panel-sim.Rmd', 'html_notebook', output_dir = "analysis-html")
##rmarkdown::render('analysis-notebooks/Figure-E-panel-sim-3component.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-E-panel-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-E-panel-analysis-3component.Rmd', 'html_notebook', output_dir = "analysis-html")
##hpc
##rmarkdown::render('analysis-notebooks/Figure-G-depth-sim.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-G-depth-analysis.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-04.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure S3
rmarkdown::render('analysis-notebooks/Figure-S03.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 5 
rmarkdown::render('analysis-notebooks/Figure-I_exp4_sensitivity.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-J_exp4_barcoding.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-05.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure 6
rmarkdown::render('analysis-notebooks/Figure-K_exp5_karyocreate.Rmd', 'html_notebook', output_dir = "analysis-html")
rmarkdown::render('analysis-notebooks/Figure-06.Rmd', 'html_notebook', output_dir = "analysis-html")

# Figure S4
rmarkdown::render('analysis-notebooks/Figure-S04.Rmd', 'html_notebook', output_dir = "analysis-html")
