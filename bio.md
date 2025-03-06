<!--# Vitaly Mogulian | Monte Carlo Physical Modelling-->

**Monte Carlo Variance Reduction Research & Code Developing & Nuclear Engineering**

[Research Profile](bio.md) | [BRAND Shielding Evaluations](shielding-evaluations.md) | [GitHub](https://github.com/vitmog)

---

<!--## Curriculum Vitae
-->

## Research/Industry Background

The most part of my research and technical activity is Monte Carlo studies accompanying the maintenance and developing the legacy BRAND Monte Carlo code. At this moment, the maintenance of the BRAND code is terminated and I switched on more general problems and open source contributions.

### Research Activity (2007-p.t.)
A Monte Carlo methodology of techniques for shielding calculations of neutral particles transport has been designed and implemented as a kit of independent extensions and custom modules to the neutron-gamma part of legacy BRAND codebase. The methodology conststs of the following techniques:
 - Expected crossings estimator;
 - Joint location-direction importance sampling from source (automated, for gamma only);
 - Energy importance sampling from source (manually, for gamma only);
 - Exponential transform modification for convex shields (manually);
 - Simplified adaptive splitting (automated).

All of these techniques has been designed by 2016, except of the **simplified adaptive splitting** which has been created later.

Additionally, it was designed by 2019 and integrated as a stand-alone **multi-kernel geometry module** for penetrating ray tracing written in Fortran-2008. This work can be characterized as an architectural research.

It allowed to provide calculations of full-scale models without using high-performance workstations. You can find details about the BRAND modernization experience [here](brand-hist.md) and in the [[working paper](https://doi.org/10.5281/zenodo.16781417)].

### Industrial Activity (2011-2021)
My industrial experience involves working in the role of a Lead Modelling Engineer in JSC "Engineering Center of Nuclear Containers" from 2011 to 2021. In this role, I develop safety cases and provided **criticality** (SCALE/KENO), **depletion** (SCALE/TRITON/KENO, SCALE/TRITON/NEWT, etc.), and **shielding** evaluations (neutron-gamma BRAND) for **design and optimization** of spent fuel and radioactive waste equipment (primarily, spent fuel casks) to support review the completed projects by **regulatory authorities**.

The primary and most challenging problem of technical kind was design of transportation spent fuel casks which often have strict limitations on both its mass and size parameters, cost of manufacturing, internal and external temperatures, the criticality criterion, and dose rates in various external conditions. These characteristics effects by changing construction parameters are often concurrent with each other, so the design problem boils down to an optimization problem whose solution requires consideration of the entire system. For this reason, the significant part of my work served providing search criticality and shielding calculations to determine fit parameters satisfying the external limitations. That was a source of motivation for designing advanced Monte Carlo [shielding techniques](brand-hist.md) to simplify my workflow in the most heavy part and grow my labor productivity. Finally, that has provided minimization of the required calculational margin and simplified project licensing.

The projects I was involved in were exclusively in the **civil nuclear industry** field. As a result, all of the projects, which I lead in shielding and criticality evaluations issues, have been successfully licensed by Russian and Chinese **regulatory authorities** with my support where it was needed.

## Core Interests
My research interest focuses on Monte Carlo numerical integration via Markov Chains which involves both the ordinary Neumann-Ulam scheme and advanced approaches, such as MCMC and SMC.

I am currently working on a general-purpose adaptive optimizer for numerical integration via the Neumann-Ulam scheme which generalizes some successful approaches found in the neutral particle transport applications and implemented in the adaptive splitting scheme. I believe it will provide the transfer of the successful experience to new fields where this scheme is used, such as charged particle transport and solution of linear algebraic systems, partial differential equations via the walks on spheres and the Feynman-Kac formula, etc.

## Current Position (01.2022-p.t.)
Independent researcher.

I am open to collaborations, consulting about issues of reimplementation of the described techniques and approaches, and discussions.

[Back](index.md)

<sub>Copyright &copy; 2025-2026 Vitaly Mogulian. All rights reserved. [Disclaimer](disclaimer.md).</sub>
