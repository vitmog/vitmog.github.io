
[Prev](protvino-labyrinth.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-case.md)

# CASTOR-V/21 spent fuel cask

The next load of the CASTOR-V/21 fuel cask [1] is considered below:
 * 10 spent $15 \times 15$ PWR fuel assemblies of 3.11 wt.% initial enrichment, 35.7 GWd/MTU burn-up, and 46 months cooling time;
 * 7 quadratic combined absorbers which consist of two coaxial polyethylene and lead prisms of inradius 7 cm and 10.5 cm respectively;
 * 4 empty positions.

|![](plots/castor-v21/single/xy.png)|
|:--:|
| Figure 1: Horizontal cross-section of the loaded cask |

Computed flux functional - ambient equivalent dose H*(10) [2] rates.

Several computations cases results are provided:
 1. Single cask (total running time - 13.5 hours);
 2. Additional calculation for the single cask side surface primary gamma dose rates distribution (total running time - 25.2 hours);
 3. The cask is located in the center of $10^5$ cm air sphere inside a hypothetical labyrinth-like absorbing either polyethylene or lead construction which is designed for domination of the skyshine effect in radiation transfer (total running time - 12.6 hours);
 4. The same as above model but the construction has an air-filled perforation of 100 cm radius on 2500 cm height above the cask bottom (total running time - 12.7 hours).

Below, the results of the neutron-gamma and gamma problems computations are performed (see details in [3]).

## Neutron results

|![](plots/castor-v21/single/n_1.png)|
|:--:|
| Figure 2: Neutron axial dose rates distribution for the single cask (20 cm thick) |

|![](plots/castor-v21/single-wall/n_1.png)|
|:--:|
| Figure 3: Neutron vertical dose rates distribution for the cask in the skyshine model (20 cm thick) |

|![](plots/castor-v21/single-wall/n_2.png)|
|:--:|
| Figure 4: Neutron vertical dose rates distribution for the cask in the skyshine model (100 cm thick) |

|![](plots/castor-v21/single-perf-wall/n_2.png)|
|:--:|
| Figure 5: Neutron vertical dose rates for the cask in the skyshine model with the perforation (100 cm thick) |


|![](plots/castor-v21/single/n_3.png)|
|:--:|
| Figure 6: Neutron azimuthal dose rates for the single cask (20 cm thick) |

|![](plots/castor-v21/single-wall/n_3.png)|
|:--:|
| Figure 7: Neutron horizontal dose rates for the cask in the skyshine model (50 cm thick) |

## Primary gamma results

|![](plots/castor-v21/single/g_1.png)|
|:--:|
| Figure 8: Primary gamma axial dose rates for the single cask (20 cm thick) |

|![](plots/castor-v21/single-wall/g_1.png)|
|:--:|
| Figure 9: Primary gamma vertical dose rates for the cask in the skyshine model (20 cm thick) |

|![](plots/castor-v21/single-wall/g_2.png)|
|:--:|
| Figure 10: Primary gamma vertical dose rates for the cask in the skyshine model (100 cm thick) |

|![](plots/castor-v21/single-perf-wall/g_2.png)|
|:--:|
| Figure 11: Primary gamma vertical dose rates for the cask in the skyshine model with the perforation (100 cm thick) |


|![](plots/castor-v21/single/g_3.png)|
|:--:|
| Figure 12: Primary gamma azimuthal dose rates for the single cask (20 cm thick) |

|![](plots/castor-v21/single-wall/g_3.png)|
|:--:|
| Figure 13: Primary gamma horizontal dose rates for the cask in the skyshine model (50 cm thick) |

|![](plots/castor-v21/single/g_4_spec.png)|
|:--:|
| Figure 14: Primary gamma side surface dose rates for the single cask (the extended calculation for 25.2 hours) |


[Prev](protvino-labyrinth.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-case.md)


# References
1. B. L. Broadhead, J. S. Tang, R. L. Childs, C. V. Parks, and H. Taniuchi. Evaluation of shielding
analysis methods in spent fuel cask environments. Technical Report EPRI TR-104329, Oak Ridge
National Laboratory (ORNL), Oak Ridge, TN (United States), 1995.
2. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
3. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [DOI:10.5281/zenodo.16995892](https://doi.org/10.5281/zenodo.16995892).


<sub>Copyright &copy; 2025 Vitaly Mogulian</sub>
