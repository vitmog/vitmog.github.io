---
layout: page
title: Ueki 3-layer shielding experiment (Type 3)
permalink: /ueki-experiments/
redirect_from:
  - /ueki-experiments.html
plots:
  - path: "/plots/ueki-experiments/n_1.apng"
  - path: "/plots/ueki-experiments/g2_1.apng"
  - path: "/plots/ueki-experiments/n_1_err.apng"
    label: "(a) Neutron"
  - path: "/plots/ueki-experiments/g2_1_err.apng"
    label: "(b) Sec. Gamma"
---

[**.....**](shielding-evaluations.md#computations-results) [Next](protvino-labyrinth.md)

# Ueki 3-layer shielding experiment (Type 3)

A californium-252 neutron source of intensity $5.33 \cdot 10^8$ n/s is placed into a conic paraffin collimator.
The goal is computation of neutron and secondary (capture) gamma dose rates behind 3-layered shield
 of steel ($t$ cm) - polyethylene ($15$ cm) - steel  ($25 - t$ cm) slabs, where $t$ determines the position of the polyethylene slab and can take the following values: $0$, $5$, $10$, $15$, $20$, $25$. That is, there are six computational cases in total.

|[![]({{ site.baseurl }}/plots/ueki-experiments/xz.png)]({{ site.baseurl }}/plots/ueki-experiments/xz.png) |
|:--:|
| Figure 1: Cross-section of the model for the case $t=15$ cm |

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Exponential transform (actually demanded for secondary gamma only);
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting** and **exponential transform** (for secondary gamma) techniques.

Computed flux functional - rates of equivalent dose ANSI 77 [2].

Thicknesses of volumetric detectors are equal to 2 cm. Results of the six computations, each took approximately 3 hours, are presented in Figures 2 and 3 (see details in [3]).

{% include plot_grid.html
   plots=page.plots
   cols=2
   caption="Figure 2: Dose rate (in μSv/h) and 1σ relative error plots."
%}

[**.....**](shielding-evaluations.md#computations-results) [Next](protvino-labyrinth.md)


# References
1. K. Ueki, A. Ohashi, Nobuteru Nariyama, S. Nagayama, T. Fujita, K. Hattori, and Y. Anayama.
Systematic evaluation of neutron shielding effects for materials. Nuclear Science and Engineering,
124:455-464, 10 1996.
2. American National Standard: neutron and gamma-ray ux-to-dose rate factors. American Nuclear
Society, United States, 1977.
3. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
