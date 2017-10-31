# Collective Knowledge repository for MXNet

[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-powered-by-ck.png)](https://github.com/ctuning/ck)
[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-validated-by-the-community-simple.png)](http://cTuning.org)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## Introduction

This repository provides high-level, portable and customizable workflows
for [MXNet](http://mxnet.incubator.apache.org) 
as a part of our long-term community initiative
to [unify and automate AI](http://cKnowledge.org/ai) 
using [Collective Knowledge Framework (CK)](http://github.com/ctuning/ck/wiki).

CK enables sharing of various AI engines and artifacts 
as reusable, customizable and portable components 
with a simple JSON API and meta information.
CK also helps researchers quickly prototype 
[portable AI workflows](https://github.com/ctuning/ck/wiki/Portable-workflows)
by assembling together CK components similar to LEGO(tm), 
plugging in various versions of AI frameworks together with 
different libraries, compilers, tools, models and data sets,
and automating and customizing their installation across 
Linux, Windows, MacOS and Android
(see shared [CK repositories](https://github.com/ctuning/ck/wiki/Shared-repos),
[modules](https://github.com/ctuning/ck/wiki/Shared-modules),
[packages](https://github.com/ctuning/ck/wiki/Shared-packages) 
and [software detection plugins](https://github.com/ctuning/ck/wiki/Shared-soft-descriptions)).

Such portable workflows can now be crowdsourced 
across diverse platforms from IoT to supercomputers provided by volunteers 
to enable practical and collaborative benchmarking, optimization and co-design of 
the whole AI stack (SW/HW/models) in terms of accuracy, execution time, power consumption, 
resource usage and other costs (see [public open CK repository](http://cKnowledge.org/repo) 
and vision papers [1](https://arxiv.org/abs/1506.06256), [2](http://doi.acm.org/10.1145/2909437.2909449)).

## Coordination of development

* [cTuning Foundation](http://cTuning.org)
* [dividiti](http://dividiti.com)
* [University of Washnigton](http://www.washington.edu)

## Installation (Linux or Windows)

### Pre-requisities

* Python 2.7+ or 3.4+ with pip
* Python sub-packages will be installed by CK

### CPU

```
$ (sudo) pip install ck
$ ck pull repo:ck-mxnet
$ ck install package --tags=lib,mxnet,vcpu
```

### GPU

```
$ (sudo) pip install ck
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

## Trying CK MXNet in Docker

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

Skip --sudo if you have local Docker installation.

## Next steps

We plan to add unified compilation of MXNet via CK 
with various libs on Linux, Windows, MacOS and Android
similar to [ck-caffe](https://github.com/dividiti/ck-caffe), 
[ck-caffe2](https://github.com/ctuning/ck-caffe2) and
[ck-tensorflow](https://github.com/ctuning/ck-tensorflow).

We now have a proof-of-concept to unify AI engines and artifacts to perform collaborative AI/SW/HW benchmarking, 
optimization and co-design to help researchers select the most efficient solutions for their experiments 
(see our [public Collective Knowledge repo](http://cKnowledge.org/repo) 
and [vision paper](https://arxiv.org/abs/1506.06256)). 
Join [our long-term community initiative](http://cKnowledge.org/ai) 
to crowdsource learning and AI/SW/HW co-design across billions of devices!

## Related Publications with long term vision

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

@inproceedings{cm:29db2248aba45e59:cd11e3a188574d80,
    url = {http://arxiv.org/abs/1506.06256},
    title = {{Collective Mind, Part II: Towards Performance- and Cost-Aware Software Engineering as a Natural Science.}},
    author = {Fursin, Grigori and Memon, Abdul and Guillon, Christophe and Lokhmotov, Anton},
    booktitle = {{18th International Workshop on Compilers for Parallel Computing (CPC'15)}},
    publisher = {ArXiv},
    year = {2015},
    month = January,
    pdf = {http://arxiv.org/pdf/1506.06256v1}
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

Get in touch with CK-AI developers [here](https://github.com/ctuning/ck/wiki/Contacts). 
Also feel free to engage with our community via this mailing list:
* http://groups.google.com/group/collective-knowledge
