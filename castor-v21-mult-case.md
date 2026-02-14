---
layout: page
title: CASTOR-V/21 multi-thickness computations
permalink: /castor-v21-multi-thick/
redirect_from:
  - /castor-v21-mult-case.html
plots:
  - path: "/plots/castor-v21/single-mult-thick/n_3.apng"
  - path: "/plots/castor-v21/single-mult-thick/g2_3.apng"
  - path: "/plots/castor-v21/single-mult-thick/g_3.apng"
  - path: "/plots/castor-v21/single-mult-thick/n_3_err.apng"
    label: "(a) Neutron"
  - path: "/plots/castor-v21/single-mult-thick/g2_3_err.apng"
    label: "(b) Sec. Gamma"
  - path: "/plots/castor-v21/single-mult-thick/g_3_err.apng"
    label: "(c) Pr. Gamma"
---

[Prev](castor-v21.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-source.md)

# CASTOR-V/21 multi-thickness computations

For the given [model](castor-v21.md) of the isolated CASTOR-V/21 cask, additional five cases are considered for each type of radiation, which are defined by cutting the cask side wall shield with cylindrical surfaces. These six cases in total have been completed in a single computation of total running time 12.1 hours using the multi-thickness Monte Carlo technique [2].

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Multi-thickness calculations;
 - Joint location-direction importance sampling from source (for primary gamma only);
 - Energy importance sampling from source (for primary gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **exponential transform** (for both gamma), and **multi-thickness calculation** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates.

Below, the obtained results of neutron-gamma and gamma problems calculations are presented (see details in [2]).

{% include plot_grid.html
   plots=page.plots
   cols=3
   caption="Figure: Axial dose rate and 1σ relative error plots for the single cask."
%}

[Prev](castor-v21.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-source.md)


# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
2. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).