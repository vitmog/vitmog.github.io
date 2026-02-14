---
layout: page
title: Concrete Anthill toy model
permalink: /anthill/
redirect_from:
  - /anthill.html
plots:
  - path: "/plots/anthill/n_1.png"
  - path: "/plots/anthill/g2_1.png"
  - path: "/plots/anthill/g_1.png"
  - path: "/plots/anthill/n_1_err.png"
    label: "(a) Neutron"
  - path: "/plots/anthill/g2_1_err.png"
    label: "(b) Sec. Gamma"
  - path: "/plots/anthill/g_1_err.png"
    label: "(c) Pr. Gamma"
---

[Prev](castor-v21-mult-case.md) [**.....**](shielding-evaluations.md#computations-results) [Next](anthill-steel.md)

# Concrete Anthill toy model

This model imitates a hypothetical large spent fuel dry storage. It has heterogeneous concrete shields including numerous labyrinths, rooms, and cavities of complicated configuration. An interesting feature of the designed problem is the relatively strong attenuation of dose rates for both neutrons and gamma radiation which magnitudes reach $10^{-15} - 10^{-19}$. In combination with a large heterogeneous self-shielded source, it makes this problem to be suitable for investigations of designed variance reduction techniques application to full-scale shielding evaluations.

The model is based on a regular $61 \times 61$ lattice of $25 \times 25 \times 410$ cm prisms. In the central $21 \times 21$ cells fragment, 441 PWR spent fuel assemblies from the [CASTOR-V/21](castor-v21.md) model are placed. The remaining part of the model is a complex heterogeneous shield and its prisms are filled with either concrete or air (see Figure 1). In total, shield thicknesses in each side direction are equal to 500 cm but shield thickness of the monolite concrete slab in the top direction is 400 cm.

|[![]({{ site.baseurl }}/plots/anthill/xy.png)]({{ site.baseurl }}/plots/anthill/xy.png) |
|:--:|
| Figure 1: Horizontal model cross-section |

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Joint location-direction importance sampling for (for gamma only);
 - Energy importance sampling for (for gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **joint location-direction IS** (for primary gamma), and **exponential transform** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates, thickness of volumetric detectors are equal to 100 cm.
Below, some results of the neutron-gamma and gamma problems 24.3 hours long concurrently executed computations are presented  (see details in [2]). Despite the smoothness of the plots, valid estimations seems to require $\times 10$ times larger statistics for enough precision.

{::options div.caution="caution" /}
<div class="caution">
  <strong>CAUTION:</strong> The physical capabilities of BRAND (28-group ABBN-78 for neutrons and EPDL97 without coherent scattering for gamma) do not allow for valid attenuation estimations at these magnitudes. Thus, the reader should interpret these results carefully. However, they are sufficient for variance reduction studies, which is the primary focus of this work.
</div>

{% include plot_grid.html
   plots=page.plots
   cols=3
   caption="Figure 2: Dose rate and 1σ relative error distributions."
%}

[Prev](castor-v21-mult-case.md) [**.....**](shielding-evaluations.md#computations-results) [Next](anthill-steel.md)

# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
2. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).