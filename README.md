# Collective Knowledge repository for MXNet

**All CK components can be found at [cKnowledge.io](https://cKnowledge.io) and in [one GitHub repository](https://github.com/ctuning/ai)!**

[![compatibility](https://github.com/ctuning/ck-guide-images/blob/master/ck-compatible.svg)](https://github.com/ctuning/ck)
[![automation](https://github.com/ctuning/ck-guide-images/blob/master/ck-artifact-automated-and-reusable.svg)](http://cTuning.org/ae)
[![workflow](https://github.com/ctuning/ck-guide-images/blob/master/ck-workflow.svg)](http://cKnowledge.org)

[![DOI](https://zenodo.org/badge/93937682.svg)](https://zenodo.org/badge/latestdoi/93937682)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## Introduction

This repository provides high-level, portable and customizable Collective Knowledge workflows
for [MXNet](http://mxnet.incubator.apache.org).
It is a part of our long-term community initiative
to unify and automate AI, ML and systems R&D
using [Collective Knowledge Framework (CK)](http://cKnowledge.org),
and to collaboratively co-design efficient SW/HW stack for AI/ML
during open [ACM ReQuEST competitions](http://cKnowledge.org/request)
as described in the [ACM ReQuEST report](https://portalparts.acm.org/3230000/3229762/fm/frontmatter.pdf).
All benchmarking and optimization results are available 
in the [public CK repository](http://cKnowledge.org/repo).
See [CK getting started guide](https://github.com/ctuning/ck/wiki/First-Steps)
for more details about CK.

## Minimal CK installation

The minimal installation requires:

* Python 2.7 or 3.3+ (limitation is mainly due to unitests)
* Git command line client.

### Linux/MacOS

You can install latest CK via PIP (with sudo on Linux) as follows:

```
$ sudo pip install ck
```

You can also install CK in your local user space without sudo as follows:

```
$ git clone http://github.com/ctuning/ck
$ export PATH=$PWD/ck/bin:$PATH
$ export PYTHONPATH=$PWD/ck:$PYTHONPATH
```

### Windows

First you need to download and install a few dependencies from the following sites:

* Git: https://git-for-windows.github.io
* Minimal Python: https://www.python.org/downloads/windows

You can then install CK as follows:
```
 $ pip install ck
```

or


```
 $ git clone https://github.com/ctuning/ck.git ck-master
 $ set PATH={CURRENT PATH}\ck-master\bin;%PATH%
 $ set PYTHONPATH={CURRENT PATH}\ck-master;%PYTHONPATH%
```

## CK workflow installation for MXNet 

### CPU

```
$ ck pull repo:ck-mxnet
$ ck install package --tags=lib,mxnet,vcpu
```

### GPU

```
$ ck pull repo:ck-mxnet
$ ck install package --tags=lib,mxnet,vcuda
```

## Checking classification example (and automatically installing available MXNet model(s) via CK)

```
$ ck run program:mxnet
```

* Select 'classify-cpu' or 'classify-gpu' command line
* Select image to classify
* Observe result

## Using CK virtual environment

CK support lightweight virtual environment for all packages 
(automatically setting all necessary environment variables for 
different versions of different tools natively installed on a user machine).

You can start a virtual environment for a given MXNet package as follows:
```
$ ck virtual env --tags=lib,mxnet
> export | grep "CK_"
```

## Building from sources on ARM-based system (FireFly, RPi)

```
$ ck install package:lib-mxnet-master-cpu --env.USE_F16C=0
```

## Trying CK MXNet via Docker

See available Docker images with different python version:
```
$ ck ls docker:ck-mxnet*
```

Build the one you need, for example ck-mxnet-py35:
```
$ ck build docker:ck-mxnet-py35 --sudo
```

You can now run this Docker image and check classification:
```
$ ck run docker:ck-mxnet-py35 --sudo
$ ck run program:mxnet
```

Skip --sudo if you have a local Docker installation.

## Related Publications

```
@article{DBLP:journals/corr/ChenLLLWWXXZZ15,
  author    = {Tianqi Chen and Mu Li and Yutian Li and Min Lin and Naiyan Wang and Minjie Wang and Tianjun Xiao and Bing Xu and Chiyuan Zhang and Zheng Zhang},
  title     = {MXNet: {A} Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems},
  journal   = {CoRR},
  volume    = {abs/1512.01274},
  year      = {2015},
  url       = {http://arxiv.org/abs/1512.01274},
  archivePrefix = {arXiv},
  eprint    = {1512.01274},
  timestamp = {Wed, 07 Jun 2017 14:40:48 +0200},
  biburl    = {http://dblp.org/rec/bib/journals/corr/ChenLLLWWXXZZ15},
  bibsource = {dblp computer science bibliography, http://dblp.org}
}

@inproceedings{ck-date16,
    title = {{Collective Knowledge}: towards {R\&D} sustainability},
    author = {Fursin, Grigori and Lokhmotov, Anton and Plowman, Ed},
    booktitle = {Proceedings of the Conference on Design, Automation and Test in Europe (DATE'16)},
    year = {2016},
    month = {March},
    url = {https://www.researchgate.net/publication/304010295_Collective_Knowledge_Towards_RD_Sustainability}
}

```

## Feedback

* [CK community](https://github.com/ctuning/ck/wiki/Contacts).
* [MXNet community](https://discuss.mxnet.io)
