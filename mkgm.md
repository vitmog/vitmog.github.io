---
layout: page
title: MKGM
description: "Multi-Kernel Geometry Module for efficient ray tracing in particle transport problems on the example of a model of the fully-loaded CASTOR-V/21 cask and lattice of the male and female ICRP-110 phantoms"
permalink: /mkgm/
sidebar: true
toc: true
mkgm-plots:
  - path: "/plots/misc/lat-broke.png"
    label: "(a) Two hexagonal lattices are included into one of bigger path"
  - path: "/plots/misc/fa_vver1000_sph.png"
    label: "(b) VVER-1000 fuel assembly included into cells of a heteregeneous CSG structure"
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
Multi-Kernel Geometry Module (MKGM) was designed in 2018--2019 for replacing legacy module of constructive solid (combinatorial) geometry of BRAND due to its limitations, particulary static memory in COMMON-blocks, the lack of lattices, universes, etc. It allowed to significantly simplify the design process of [shielding model](brand-hist.md) geometries and increase the models detalization. Some information about MKGM program interface can be found in [1].


## User feautures
The MKGM design conception allow us to flexibly use diverse approaches with various forms of inclusions sub-models each to other keeping high performance of ray tracing and other functionality used in the field of particle transport.

{% include plot_grid.html
   plots=page.mkgm-plots
   cols=2
   caption="Figure 1: Overlaps and advanced inclusions of MKGM that allows us to represent non-nominal conditions, such as deformations, damages in accident cases, etc."
%}

## CASTOR-V/21 and lattices of the ICRP-110 male and female phantoms model of MKGM

A quite simple by construction, but obfuscated on sight, example includes combinations of the constructive solid and lattice periodic models represent the following:
* Male (AM) computational phantom [2], which consists of $254 \times 127 \times 222 = 7 161 276$ voxels;
* Female (AF) computational phantom [2], which consists of $299 \times 137 \times 348 = 14 255 124$ voxels;
* CASTOR-V/21 spent fuel cask [3] fully loaded by PWR $15 \times 15$ [model](castor-v21.md).

Summary:
 * The model contains a single CASTOR-V/21 and a $19 \times 5 \times 3$ regular rectangular lattice of AM and AF surrounding the cask;
 * The phantoms are rotated at $30^\circ$ relatively to the previous row as the row number increases from the cask, so the 7 rows represent all extreme and intermediate states of the full turn over;
 * Also, there are two irregular inclusions into each lattice of female and male phantoms into the opposite lattices in the horizontal orientation;
 * There is also an alternative model, where all AF phantoms are replaced by AM ones and otherwise, which is can be seen in a spherical layer colorised by blue;
 * This model requires just around 200 MB RAM, which is mostly spent on the two phantom models, instead of more than 2 GB thanks to MKGM memory optimizations, what allowed comfortable interactive viewing cross-sections on the ASUS X540L laptop with 4 GB RAM.

{% include plot_grid.html
   plots=page.castor-phantom
   cols=2
   caption="Figure 2: Cross-sections of the joint model of CASTOR-V/21 and rotated ICRP-110 male and female computational phantoms lattices."
%}


## References
1. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
2. ICRP, 2009. Adult Reference Computational Phantoms. ICRP Publication 110. Ann. ICRP 39 (2). URL: https://journals.sagepub.com/doi/pdf/10.1177/ANIB_39_2
3. B. L. Broadhead, J. S. Tang, R. L. Childs, C. V. Parks, and H. Taniuchi. Evaluation of shielding
analysis methods in spent fuel cask environments. Technical Report EPRI TR-104329, Oak Ridge
National Laboratory (ORNL), Oak Ridge, TN (United States), 1995.
