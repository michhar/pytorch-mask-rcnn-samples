# A Sample Inspired by a PyTorch Port of MaskRCNN for Instance Segmentation

Inspired by:  https://github.com/multimodallearning/pytorch-mask-rcnn

![VGG annotated fish pic](images/vgg_annotated_fish.jpg)
<br><p align="right">Adult Schoolmaster Snappers (Lutjanus apodus); Source: Florent Charpin, http://reefguide.org/pixhtml/schoolmaster2.html</p><br>

## Instructions

### Setup and Demo

Work through the notebooks:

* Setup.ipynb - install the PyTorch extensions and grab a few other tools
* Demo.ipynb - to test setup and perform inference with a base model

### Collect and Label Custom Data

1. Choose images with your object(s) of interest
2. Label with the VGG Image Annotator tool (http://www.robots.ox.ac.uk/~vgg/software/via/)

### Train

* Train.ipynb - train on custom-labeled data, supported by this DataSet class

## Wish to Build PyTorch for Your System?

If you wish to build PyTorch latest or from a commit, follow one of the two notebooks:

* InstallPyTorchSourceCPU.ipynb - build from source for CPU-only system
* InstallPyTorchSourceCUDA.ipynb - build from source with CUDA support


## Additional Information and Credits

* See the original repo for more information beyond the two notebooks.  https://github.com/multimodallearning/pytorch-mask-rcnn
* See this original blog post for some of the concepts and processes behind the PyTorch and, subsequently, this repo (the TensorFlow version): https://engineering.matterport.com/splash-of-color-instance-segmentation-with-mask-r-cnn-and-tensorflow-7c761e238b46
* Related project - https://github.com/svanbodegraven/Machine-Learning-Containers
* Related project - https://github.com/Azadehkhojandi/computer-vision-fish-frame-proposal
* Merging VGG annotations - https://github.com/Azadehkhojandi/VGG-Image-Annotator-Json-Merger

> TIP:  You can run this project inside a Docker image such as the `rheartpython/cvdeep` public image that has many Deep Learning frameworks preinstalled.  (more info at https://github.com/michhar/custom-jupyterhub-linux-vm)
