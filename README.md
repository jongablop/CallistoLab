# CallistoLab

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3517214.svg)](https://doi.org/10.5281/zenodo.3517214) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/jongablop/callistolab)



A tool aimed for a satisfactory learning experience at the many times never-ending, long void, and tale-telling sessions at the Introductory Physics Laboratory.

CallistoLab was born from the frustration produced by the software commonly used in science laboratories. Having to introduce your data multiple times because the program that you use to analyse it doesn't allow you to export it in a markup language, exporting your plots in a  shameful 96 DPI or having to spend hours programming your plots in Python has finished.

CallistoLab allows you to open your data directly from a CSV file or to introduce it filling a blank chart. Then, after you worked with it, you can export it to both CSV or Latex.

CallistoLab gives you the opportunity to interact with your data in a new way. You can calculate regressions easily, seeing how every point of your data affects the regression curve. You can also simulate what changes in your experiment would produce better results by interacting directly with the points in the figure.

 Once you have finished, you can export your plot to PDF or PNG format in 300 DPI.



## CallistoLab Lite

CallistoLab Lite is a reduced version of CallistoLab, which aims to be a usefull plotting tool. In this version, everything relative to simulations have been taken out simplifying the interface and improving the performance.

[Try it now here](https://mybinder.org/v2/gh/jongablop/CallistoLab/master?urlpath=%2Fapps%2FCallistoLab-Lite.ipynb)

You can test the beta version of CallistoLab Lite v2.0 here:

[CallistoLab Lite v2.0 (beta)](https://mybinder.org/v2/gh/jongablop/CallistoLab/master?urlpath=%2Fapps%2F___CallistoLab-Lite-2.0.ipynb)

You can test the beta version of CallistoLab Lite v3.0 here:

[CallistoLab Lite v2.0 (beta)](https://mybinder.org/v2/gh/jongablop/CallistoLab/master?urlpath=%2Fapps%2FCallistoLab-Lite-3.ipynb)

## How to use

Multiarchitecture (ARM32v5, ARM64v7 and AMD64) Docker images of the proyect are available at DockerHub ([``jongablop/callistolab``](https://hub.docker.com/repository/docker/jongablop/callistolab)), so you only have to run the following commands to get the latest version of CallistoLab up and running:

``````
# We strongly recommend to download the latest version of CallistoLab everytime it is used.
$ (sudo) docker pull jongablop/callistolab:latest

# Access CallistoLab at http://localhost:ANY_FREE_PORT
$(sudo) docker run -p ANY_FREE_PORT:8888 jongablop/callistolab:latest
``````

### CAUTION

1. We strongly do **not** recommend using this images in a production environment, as it can generate **security issues**.

2. **ARM64v7 and ARMv5** images (ARM32v5 has not been tested yet, if there is any proble open a new issue, please) need to be configured manually after the container is running. To do so, open a **new terminal in Jupyter and run the following command**:

``````
jupyter nbextension enable --py --sys-prefix qgrid
``````


#### Multiarch images are based in [rmoriz/multiarch-test](https://github.com/rmoriz/multiarch-test) repository.

## Dependencies

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

## Cite as

Gabirondo-López, Jon, & Igartua, Josu M. (2019, October 30). jongablop/CallistoLab: 1.1 (Version v1.1). Zenodo. http://doi.org/10.5281/zenodo.3523220
