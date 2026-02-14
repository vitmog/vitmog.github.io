---
layout: page
title: Protvino concrete labyrinth benchmark (ALARM-CF-AIR-LAB-001)
description: "Dose rate plots for a highly attenuating labyrinth benchmark obtained with variance reduction for Monte Carlo particle transport."
permalink: /protvino-labyrinth/    
sidebar: true  
toc: true
redirect_from:
  - /protvino-labyrinth.html
geom_plots:
  - path: "/plots/labyrinth-protvino/xy-5A.png"
    label: "(a) Case 5A"
  - path: "/plots/labyrinth-protvino/xy-6B.png"
    label: "(b) Case 6B"
plots:
  - path: "/plots/labyrinth-protvino/case5A.png"
    alt: "Count rate for Case 5A; passing radiation from bare source through labyrinth with two barriers"
  - path: "/plots/labyrinth-protvino/case6B.png"
    alt: "Count rate for Case 6B; passing radiation from covered source through labyrinth with a dead-end"
  - path: "/plots/labyrinth-protvino/case5A_err.png"
    label: "(a) Case 5A"
    alt: "relative error; passing radiation from bare source through labyrinth with two barriers"
  - path: "/plots/labyrinth-protvino/case6B_err.png"
    label: "(b) Case 6B"
    alt: "relative error; passing radiation from covered source through labyrinth with a dead-end"                     
plot2:
  - path: "/plots/labyrinth-protvino/case5A-2.png"
    label: "Count rate, pulse/sec"
    alt: "Case 5A enlarged; passing radiation through two barriers in the middle section of labyrinth"
  - path: "/plots/labyrinth-protvino/case5A-2_err.png"
    label: "1σ relative error"
    alt: "Case 5A enlarged; passing radiation through two barriers in the middle section of labyrinth"
---

{% include prev-next.html %}

# Protvino concrete labyrinth benchmark (ALARM-CF-AIR-LAB-001)

A californium-252 neutron source of intensity $5.66 \cdot 10^8$ n/s is located at entrance to a three-section concrete labyrinth [1].
The goal is computation of spatial distribution of a neutron flux linear functional which is determined via a fluence-to-energy response funсtion and relates to the Bonner sphere detector count rates.
Those are considered below just two of the most problematic cases among represented in the original work [1]: Case 5A (two polyethylene plates in the second section) and Case 6B (covered source and dead-end).

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the *Simplified Adaptive Splitting* technique.

Computed flux functional - pulse rate by the detector response function is taken from the benchmark data for the case of 5 in. Bonner polyethylene sphere diameter.

{% include plot_grid.html
   plots=page.geom_plots
   cols=2
   caption="Figure 1: Neutron horizontal midplane cross-section plots of the computational model."
%}

Thicknesses of volumetric detectors are equal to 10 cm.
Results of the two 11.2 hours long concurrently executed computations are presented in Figures 2-3 (see details in [2]).

{% include plot_grid.html
   plots=page.plots
   cols=2
   caption="Figure 2: Neutron horizontal midplane count rate (in pulse/sec) and 1σ relative error global plots."
%}

              
{% include plot_grid.html
   plots=page.plot2
   cols=2
   caption="Figure 3: Local plots of count rate spatial distribution for Case 5A."
%}

Validation studies show significant discrepancies with experiment for the most far 10th positions, which are, however, similar to another codes values. For details about comparison with experiment and calculations by the COG 11.3 and SCALE/MAVRIC 6.3 codes, see the full version of preprint [2].

{% include prev-next.html %}

## References
1. Mark Nikolaev, Natalia Prokhorova, Tatiana Ivanova, “Neutron Fields in Three-Section Concrete
Labyrinth from Cf-252 Source,” ALARM-CF-AIR-LAB-001, “International Handbook of Evaluated Criticality
Safety Benchmark Experiments,” OECD Nuclear Energy Agency, NEA-1486/19, 2021 (DVD).
2. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
3. L.P. Abagyan, N.O. Bazazyants, M.N. Nikolaev, and A.M. Tsibulia. Group constants for reactor
and shielding calculations (in Russian). Ehnergoizdat, Moscow, 1981. Handbook.
