---
layout: page
title: Steel Anthill toy model
permalink: /anthill-steel/
redirect_from:
  - /anthill-steel.html
plots:
  - path: "/plots/anthill-steel/n_1.png"
  - path: "/plots/anthill-steel/g2_1.png"
  - path: "/plots/anthill-steel/g_1.png"
  - path: "/plots/anthill-steel/n_1_err.png"
    label: "(a) Neutron"
  - path: "/plots/anthill-steel/g2_1_err.png"
    label: "(b) Sec. Gamma"
  - path: "/plots/anthill-steel/g_1_err.png"
    label: "(c) Pr. Gamma"
---

[Prev](anthill.md) [**.....**](shielding-evaluations.md#computations-results)

# Steel Anthill toy model

All of the model parameters are the same as in [Concrete Anthill](anthill.md), but steel is used as a shielding material instead of concrete one.

|![]({{ site.baseurl }}/plots/anthill-steel/xy.png)|
|:--:|
| Figure 1: Horizontal model cross-section |

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Joint location-direction importance sampling for (for gamma only);
 - Energy importance sampling for (for gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **joint location-direction IS** (for primary gamma), and **exponential transform** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates, the thickness of volumetric detectors are 100 cm.
Below, some results of the neutron-gamma and gamma problems 20.5 hours long concurrently executed computations are presented. Despite the smoothness of the plots, valid estimations require much larger statistics for enough precision.

{::options div.caution="caution" /}
<div class="caution">
  <strong>CAUTION:</strong> The physical capabilities of BRAND (28-group ABBN-78 for neutrons and EPDL97 without coherent scattering for gamma) do not allow for valid attenuation estimations at these magnitudes. Thus, the reader should interpret these results carefully. However, they are sufficient for variance reduction studies, which is the primary focus of this work.
</div>

{% include plot_grid.html
   plots=page.plots
   cols=3
   caption="Figure 2: Dose rate and 1σ relative error distributions."
%}

[Prev](anthill.md) [**.....**](shielding-evaluations.md#computations-results)

# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
