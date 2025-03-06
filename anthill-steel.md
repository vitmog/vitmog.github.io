<!--# Vitaly Mogulian | Monte Carlo Physical Modelling-->

**Monte Carlo Variance Reduction Research & Code Developing & Nuclear Engineering**

[Research Profile](bio.md) | [BRAND Shielding Evaluations](shielding-evaluations.md) | [GitHub](https://github.com/vitmog)

---

[Prev](anthill.md) [**.....**](shielding-evaluations.md#computations-results)

# Steel Anthill toy model

All of the model parameters are the same as in [Concrete Anthill](anthill.md), but steel is used as a shielding material instead of concrete one.

|![](plots/anthill-steel/xy.png)|
|:--:|
| Figure 1: Horizontal model cross-section |

In this calculation, the following techniques are used:
 - Expected value estimators;
 - Joint location-direction importance sampling for (for gamma only);
 - Energy importance sampling for (for gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **joint location-direction IS** (for primary gamma), and **exponential transform** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates, the thickness of volumetric detectors are 100 cm.
Below, some results of neutron-gamma and gamma problems 20.5 hours long computation are presented.. Despite the smoothness of the plots, valid estimations require much larger statistics for enough precision.

|![](plots/anthill-steel/n_1.png)|
|:--:|
| Figure 2: Neutron horizontal dose rates distribution |

|![](plots/anthill-steel/g2_1.png)|
|:--:|
| Figure 3: Secondary gamma horizontal dose rates distribution |

|![](plots/anthill-steel/g_1.png)|
|:--:|
| Figure 4: Primary gamma horizontal dose rates distribution |

[Prev](anthill.md) [**.....**](shielding-evaluations.md#computations-results)

# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.

<sub>Copyright &copy; 2025-2026 Vitaly Mogulian. All rights reserved. [Disclaimer](disclaimer.md).</sub>
