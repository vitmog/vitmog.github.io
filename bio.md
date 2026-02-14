---
layout: page
title: R&D Background
description: "Professional autobiography of Vitaly Mogulian."
permalink: /bio/     
sidebar: true
toc: true
redirect_from:
  - /bio.html
---

[***Curriculum Vitae***](/files/mogulian-cv.pdf)

# R&D Background

The majority of my research and technical activity is Monte Carlo studies accompanying the maintenance and developing the legacy BRAND Monte Carlo code. At this moment, the maintenance of the BRAND code was terminated and I switched to more general problems and open source contributions.

## Timeline

### Research Activity (2007-p.t.)
A Monte Carlo methodology of techniques for shielding calculations of neutral particles transport has been designed and implemented as a kit of independent extensions and custom modules to the neutron-gamma part of legacy BRAND codebase. The methodology consists of the following techniques:
 - Expected crossings estimator;
 - Joint location-direction importance sampling from source (for gamma only);
 - Energy importance sampling from source (for gamma only);
 - Exponential transform modification for convex shields;
 - Simplified adaptive splitting.

All of these techniques have been designed by 2016, except for the _Simplified Adaptive Splitting_ which has been created later.

Additionally, it was designed by 2019 and integrated as a stand-alone _Multi-Kernel Geometry Module_ for penetrating ray tracing written in Fortran-2008. This work can be characterized as an architectural research.

It allowed providing calculations of full-scale models without using high-performance workstations. You can find details about the BRAND modernization experience [here](brand-hist.md).

### Industrial Activity (2011-2021)
My industrial experience involves working in the role of a Lead Modelling Engineer in JSC "Engineering Center of Nuclear Containers" from 2011 to 2021. In this role, I develop safety cases and provided _criticality_ (SCALE/KENO), _depletion_ (SCALE/TRITON/KENO, SCALE/TRITON/NEWT, etc.), and _shielding_ evaluations (neutron-gamma BRAND) for _design and optimization_ of spent fuel and radioactive waste equipment (primarily, spent fuel casks) to support review the completed projects by regulatory authorities.

The primary and most challenging problem of technical kind was design of transportation spent fuel casks which often have strict limitations on both its mass and size parameters, cost of manufacturing, designer's construction, internal and external temperatures, the criticality criterion, and outshield dose rates in various external conditions. These characteristics effects by changing construction parameters are often concurrent with each other, so the design problem boils down to an optimization problem whose solution requires consideration of the entire system. For this reason, the significant part of my work served providing search criticality and shielding calculations to determine fit parameters satisfying the external limitations. That was a source of [motivation](brand-hist.md) for designing advanced Monte Carlo shielding techniques to simplify my workflow in the most heavy part and increase my productivity. Finally, that has provided minimization of the required design margin and simplified the project licensing process.

As a result, all of the projects, which are leaded by me in shielding and criticality evaluations issues, have been successfully licensed by Russian and Chinese regulatory authorities with my support where it was needed.

### Current Position (01.2022-p.t.)
Independent researcher.

I am open to collaborations, consulting about issues of reimplementation of the described techniques and approaches, and discussions.
                    
## Core Interests
My research interest focuses on Monte Carlo numerical integration via Markov Chains which involves both the ordinary Neumann-Ulam scheme and advanced approaches, such as MCMC and SMC.

I am currently working on a general-purpose adaptive optimizer for numerical integration via the Neumann-Ulam scheme which generalizes some successful approaches found in the neutral particle transport applications and implemented in the simplified adaptive splitting scheme. I believe it will provide the transfer of the successful experience to new fields where this scheme is used, such as charged particle transport and solution of linear algebraic systems, partial differential equations via the walks on spheres and the Feynman-Kac formula, etc.

[Back](index.md)
