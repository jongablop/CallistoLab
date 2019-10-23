# CallistoLab 

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3517215.svg)](https://doi.org/10.5281/zenodo.3517215)



A tool aimed for a satisfactory learning experience at the many times never-ending, long void, and tale-telling sessions at the Introductory Physics Laboratory.

CallistoLab was born from the frustration produced by the software commonly used in science laboratories. Having to introduce your data multiple times because the program that you use to analyse it doesn't allow you to export it in a markup language, exporting your plots in a  shameful 96 DPI or having to spend hours programming your plots in Python has finished.

CallistoLab allows you to open your data directly from a CSV file or to introduce it filling a blank chart. Then, after you worked with it, you can export it to both CSV or Latex.

CallistoLab gives you the opportunity to interact with your data in a new way. You can calculate regressions easily, seeing how every point of your data affects the regression curve. You can also simulate what changes in your experiment would produce better results by interacting directly with the points in the figure.

 Once you have finished, you can export your plot to PDF or PNG format in 300 DPI.
 
 
 
## CallistoLab Lite

CallistoLab Lite is a reduced version of CallistoLab, which aims to be a usefull plotting tool. In this version, everything relative to simulations have been taken out simplifying the interface and improving the performance.

[Try it now here](https://mybinder.org/v2/gh/jongablop/CallistoLab/master?urlpath=%2Fapps%2FCallistoLab-Lite.ipynb)


### Dependencies

This package depends on the following packages:

- `qgrid`
- `appmode`
- `bqplot`(=0.11.2)
- `scikit-learn`
- `scipy`
- `numpy`
- `matplotlib`
- `fileupload`
- `jupyterlab_latex`

### Cite as

Jon Gabirondo López. (2019, October 23). jongablop/CallistoLab: First release of CallistoLab (Version v1.0). Zenodo. http://doi.org/10.5281/zenodo.3517215