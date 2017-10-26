# Unification of collaborative benchmarking, optimization and experimentation of MXNet using Collective Knowledge workflow framework with common JSON API

[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-powered-by-ck.png)](https://github.com/ctuning/ck)
[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-validated-by-the-community-simple.png)](http://cTuning.org)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

## Introduction

This repository is a part of our long-term community initiative
to [unify AI](http://cKnowledge.org/ai) using [Collective Knowledge Framework](http://cKnowledge.org), 
share AI engines, artifacts and workflows as reusable and customizable components,
and help researchers survive in a Cambrian AI/SW/HW explosion:

[![logo](http://cknowledge.org/images/ai-cloud-resize.png)](http://cKnowledge.org/ai)

CK allows to plug in various versions of AI frameworks together with libraries, compilers, tools, models, data sets 
and other artifacts as unified and reusable components with JSON API, automate and customize their 
installation across Linux, Windows, MacOS and Android 
and provide extensible JSON API for common operations 
such as prediction and training.

Furthermore, we are now now developing a CK-powered crowd-tuning platform
to continuously benchmark, optimize and co-design the whole AI stack (SW/HW/models) 
across diverse platforms from mobile devices and IoT to supercomputers
in terms of accuracy, execution time, power consumption, resource usage and other costs with the
help of the community (see [public CK repo](http://cKnowledge.org/repo) 
and vision papers [1](https://arxiv.org/abs/1506.06256), [2](http://doi.acm.org/10.1145/2909437.2909449)).


## Coordination of development

* [cTuning Foundation](http://cTuning.org)
* [dividiti](http://dividiti.com)
* [University of Washnigton](http://www.washington.com)

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

## Next steps

We now have a proof-of-concept to unify AI engines and artifacts to perform collaborative AI/SW/HW benchmarking, 
optimization and co-design to help researchers select the most efficient solutions for their experiments 
(see our [public Collective Knowledge repo](http://cKnowledge.org/repo) 
and [vision paper](https://arxiv.org/abs/1506.06256)). We are now raising
new funding to extend our collaborative approach and crowdsource AI/SW/HW
co-design across billions of diverse devices with the help of the community - 
join [our community initiative](http://cKnowledge.org) to know more.

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
