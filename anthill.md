# Anthill

This is a model which imitates a hypothetical large spent fuel dry storage. It has heterogeneous concrete shield including lots of labyrinths, rooms, and cavities of intractable configurations. An interesting feauture of the designed problem is the relatively strong attenuation of dose rates for both neutrons and gamma radiation which magnitudes achieves $10^{-15} - 10^{-19}$. In couple with a large self-shielded source, that make this problem quite problematic for shielding avaluations.

The model is based on a regular $61 \times 61$ mesh of $25 \times 25 \times 410$ cm prisms. In the middle $21 \times 21$ cells fragment, 441 PWR spent fuel assemblies form the Castor-V/21 [model](castor-v21.md) are placed. The reminded part of the model is a complex heterogenous shield and its prisms are filled by either concrete or air (see Figure 1). In total, shield thickness in each side direction are 500 cm, shield thickness of the monolite concrete slab in the top direction is 400 cm.

|![](plots/anthill/xy.png)|
|:--:|
| Figure 1: Horizontal model cross-section |

Computable flux functional - ambient equivalent dose H*(10) [1] rates, thickness of volumetric detectors are 100 cm.
Below, results of neutron-gamma and gamma problems 19.9 hours long computation are presented.

|![](plots/anthill/n_1.png)|
|:--:|
| Figure 2: Neutron horizontal dose rates distribution |

|![](plots/anthill/g2_1.png)|
|:--:|
| Figure 3: Secondary gamma horizontal dose rates distribution |

|![](plots/anthill/g_1.png)|
|:--:|
| Figure 4: Primary gamma horizontal dose rates distribution |

[Back to top](shielding-evaluations.md)

# References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coecients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.


<sub>Copyright &copy; 2025 Vitaly Mogulian</sub>