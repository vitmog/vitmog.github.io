---
layout: page
title: CASTOR-V/21 multi-source computations
permalink: /castor-v21-multi-source/
redirect_from:
  - /castor-v21-multi-source.html
plots:
  - path: "/plots/castor-v21/single-mult-src/g_3_vtn1.apng"
  - path: "/plots/castor-v21/single-mult-src/g_3_vtn4.apng"
  - path: "/plots/castor-v21/single-mult-src/g_3_err_vtn1.apng"
    label: "(a) 18 source energy groups"
  - path: "/plots/castor-v21/single-mult-src/g_3_err_vtn4.apng"
    label: "(b) 44 source energy groups"
---

[Prev](castor-v21-mult-case.md) [**.....**](shielding-evaluations.md#computations-results) [Next](anthill.md)

# CASTOR-V/21 multi-source computations

For the given [model](castor-v21.md) of the isolated CASTOR-V/21 cask, six source spactra cases are considered for the gamma type of radiation (see Table).

| Average Initial Enrichment (%wt.) | Average Burnup (GWd/MTU) | Cooling Time (months) | Spectra Structure | Designation |
| :--- | :--- | :--- | :--- | :--- |
| 2.91 | 30.0 | 26 | 18-group | V-15 |
| | | | 44-group | V-15, revised |
| 3.11 | 35.7 | 46 | 18-group | T-Type |
| | | | 44-group | T-Type, revised |
| 2.56 | 26.9 | 172 | 18-group | N-Type |
| | | | 44-group | N-Type, revised |

It is seen that the initial enrichment and burn-up are various from case to case, but the strongest parameter here is the cooling time.

 These six cases in total have been completed in a single computation of total running time 9.9 hours using the multi-source Monte Carlo technique [2].

|[![]({{ site.baseurl }}/plots/castor-v21/single-mult-src/spectra-mult.png)]({{ site.baseurl }}/plots/castor-v21/single-mult-src/spectra-mult.png) |
|:--:|
| Figure 1: Gamma source spectra considered in the calculation |

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Multi-source calculations;
 - Joint location-direction importance sampling from source (for primary gamma only);
 - Energy importance sampling from source (for primary gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **exponential transform** (for both gamma), and **multi-source calculation** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates normalized to an emitted source particle.

Below, the obtained results of neutron-gamma and gamma problems calculations are presented (see details in [2]).

{% include plot_grid.html
   plots=page.plots
   cols=2
   caption="Figure: Gamma axial <strong>dose per source particle</strong> and 1σ relative error distributions for the single cask."
%}


[Prev](castor-v21-mult-case.md) [**.....**](shielding-evaluations.md#computations-results) [Next](anthill.md)


# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
2. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).