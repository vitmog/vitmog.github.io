---
layout: page
title: MKGM
description: "Multi-Kernel Geometry Module for efficient ray tracing in particle transport problems on the example of a model of the fully-loaded CASTOR-V/21 cask and lattice of the male and female ICRP-110 phantoms"
permalink: /mkgm/
sidebar: true
toc: true
mkgm-plots:
  - path: "/plots/misc/lat-broke.png"
    label: "(a) Two hexagonal lattices are included in one of a bigger pitch"
  - path: "/plots/misc/fa_vver1000_sph.png"
    label: "(b) VVER-1000 fuel assembly included into cells of a heterogeneous CSG structure"
castor-phantom:
  - path: "/plots/misc/castor-phantom/xy_267cm.png"
    label: "(a) Horizontal cross-section near midplane"
  - path: "/plots/misc/castor-phantom/yz_0cm.png"
    label: "(b) Vertical midplane cross-section orthogonally to the phantom lattice"
  - path: "/plots/misc/castor-phantom/xz_0cm.png"
    label: "(c) Vertical midplane cross-section along the phantom lattice"
  - path: "/plots/misc/castor-phantom/xz_0cm_enlarged.png"
    label: "(d) Enlarged view of the cask, fuel assemblies, and the female phantoms"
  - path: "/plots/misc/castor-phantom/xz_0cm_male-female-exchange.png"
    label: "(e) Enlarged view of the female phantoms replaced by male phantoms in the blue layer"
  - path: "/plots/misc/castor-phantom/castor-phantom-slices.apng"
    label: "(f) Series of vertical slices animation for the cask and rotated phantoms animation"
---

# Multi-Kernel Geometry Module

## Description
Multi-Kernel Geometry Module (MKGM) was designed in 2018--2019 for replacing the legacy module of constructive solid (combinatorial) geometry of BRAND due to its limitations, particularly static memory in COMMON-blocks, the lack of lattices, universes, etc. It allowed us to significantly simplify the design process of [shielding model](brand-hist.md) geometries, increase the model level of detail, and improve the computational performance and reliability via design and implementation of more optimal tracing algorithms than before.

Despite the primary intention for the solution of the radiation transport problems, MKGM can be used for diverse non-particle applications as it is intended exclusively for quite simple computational geometry problems.

### Conception
MKGM consists of the managing part and kernels. Each MKGM kernel provides its own type of sub-model, which can be used in the model design.

The core feature of the MKGM conception is the possibility to include existent geometry modules as MKGM kernels. It allows relatively easy adding both new specially created and third-party geometry modules, even those not necessarily designed for the particle transport, such as a wide range of CAD geometry libraries.

MKGM has the following native (fully designed by the author) geometry modules:
* LPG -- a geometry module for lattice periodic geometries, such as the rectangular and hexagonal ones;
* MRG -- a special internal geometry module.

There is successful experience of linking the following third-party geometry modules as MKGM kernels:
* GEOUN94 (of BRAND) -- a combinatorial geometry module by the Androsenkos, which was heavily modernized (F77 to F2008 paradigm: data rearranged from COMMON-block arrays to structs, static memory to dynamic, optimized the tracing algorithms to improve performance and reliability) in 2018;
* HRAN2 (of MMKFK-2) -- experimental linking of a parametric geometry module of A.A.Blyskavka in collaboration with V.B.Polevoy in 2019;
* OBHEX4 (of MMKFK-2) -- experimental linking of another parametric geometry module of A.A.Blyskavka in collaboration with V.B.Polevoy in 2019.

Thus, the possibility of designing complex models that consist of diverse types of fragments was obtained.

### API features
MKGM provides several pure geometry functions, including the ray tracing routine, and the main types representing _location_, _ray_, and _geometry_ [1]. This interface can be categorized as _functional_, and this choice was made due to the mathematical paradigm of the target usage.

There are the following cases of incorporation of MKGM into codes:
* BRAND -- lots of experience of usage in practical problems since 2019;
* MMKFK-2 -- an experimental linking in collaboration with V.B.Polevoy in 2019.

Some additional information about MKGM with an example of the program interface usage can be found in [1].

### User features
Each sub-model consists of cells, and it may be included in cells of any other sub-model with translation and rotation transformations. This MKGM design conception allows us to flexibly use diverse approaches with various forms of inclusions of sub-models one into another, keeping high performance of ray tracing and other functionality used in the field of particle transport.

{% include plot_grid.html
   plots=page.mkgm-plots
   cols=2
   caption="Figure 1: Overlaps and advanced inclusions of MKGM that allow us to represent non-nominal conditions, such as deformations, damages in accident cases, etc."
%}

## Environment

### Visualizer
MKGM contains a service library of routines, which are able to return matrices of cell parameters for a given arbitrary cross-section and regular rectangular binning.

Interactive cross-sections viewing is possible thanks to a special GUI visualizer designed by T.V. Utyanskaya in 2015--2019. It is written in C# and implements a wide range of the functionality including diverse viewing modes and a measurement tool for distances between several points at a single cross-section.

### Monte Carlo volume calculation and performance test
An important part of the working process is the debugging and control of both user-designed geometry models and the module. For the solution of both problems, the Markov chain ray tracing volume calculation capability was implemented. The walking algorithm quite closely imitates the particle transport conditions, but it provides a heavier load due to the building longer rays and model domain uniform covering.

Performance measurements of the volume calculation show that MKGM provides the typical tracing cost of a logical cell of a full-scale real-world complex model, such as the loaded [CASTOR-V/21](castor-v21.md), is equal to $3--5 \cdot 10^{-7}$ sec on 2 GHz Intel Core i3 CPU of ASUS X540L laptop. That is, one ray segment tracing requires around 600--1000 instruction cycles with the "O2" optimizations of Intel Fortran Compiler enabled.

## MMKFK-2 linking
As noted in sections above, there were two geometry modules experimentally incorporated from the MMKFK-2 code, and MKGM was connected to MMKFK-2 in collaboration with V.B.Polevoy in 2019. As a result, MMKFK-2 obtained the ability to use a single (because of the static memory of the legacy code) sub-model of both HRAN2 and OBHEX4 models multiple times in the same complex model instead of the initial requirement to choose a geometry module for model design.

## Examples

### Shielding evaluations
Each model of BRAND [shielding evaluations](shielding-evaluations.md) demonstration problem uses MKGM.

### CASTOR-V/21 and lattices of the ICRP-110 male and female phantoms MKGM models
An example that is quite simple in its construction includes the combinations of the constructive solid and lattice periodic models that consist of the following sub-models:
* Male (AM) computational phantom [2], which consists of $254 \times 127 \times 222 = 7 161 276$ voxels;
* Female (AF) computational phantom [2], which consists of $299 \times 137 \times 348 = 14 255 124$ voxels;
* CASTOR-V/21 spent fuel cask [3] fully loaded by PWR $15 \times 15$ [model](castor-v21.md).

Summary:
 * The model contains a single CASTOR-V/21 and a $19 \times 5 \times 3$ regular rectangular lattice of AM and AF surrounding the cask;
 * The phantoms are rotated by $30^\circ$ relative to the previous row as the row number increases from the cask;
 * Also, there are two irregular inclusions of female and male phantoms into the phantom lattice in the horizontal (along the XY-planes) orientation;
 * There is also an alternative model, where all AF phantoms are replaced by AM ones and vice versa, which can be seen in a spherical layer colored blue;
 * This model requires just around 200 MB RAM, which is mostly spent on the two phantom models, instead of more than 2 GB thanks to enabling MKGM/LPG memory optimizations, which allowed comfortable interactive viewing of cross-sections on an ASUS X540L laptop with 4 GB RAM.

{% include plot_grid.html
   plots=page.castor-phantom
   cols=2
   caption="Figure 2: Cross-sections of the joint model of CASTOR-V/21 and rotated ICRP-110 male and female computational phantom lattices."
%}


## References
1. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
2. ICRP, 2009. Adult Reference Computational Phantoms. ICRP Publication 110. Ann. ICRP 39 (2). URL: https://journals.sagepub.com/doi/pdf/10.1177/ANIB_39_2
3. B. L. Broadhead, J. S. Tang, R. L. Childs, C. V. Parks, and H. Taniuchi. Evaluation of shielding
analysis methods in spent fuel cask environments. Technical Report EPRI TR-104329, Oak Ridge
National Laboratory (ORNL), Oak Ridge, TN (United States), 1995.
