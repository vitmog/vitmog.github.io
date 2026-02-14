---
layout: page
title: CASTOR-V/21 spent fuel cask
permalink: /castor-v21/
redirect_from:
  - /castor-v21.html
n_plots:
  - path: "/plots/castor-v21/single/n_1.png"
    label: "(a) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_1.png"
    label: "(b) Skyshine (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_2.png"
    label: "(c) Skyshine (100 cm thick)"
  - path: "/plots/castor-v21/single/n_3.png"
    label: "(d) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_3.png"
    label: "(e) Skyshine (50 cm thick)"
  - path: "/plots/castor-v21/single-perf-wall/n_2.png"
    label: "(f) Skyshine perf. (100 cm thick)"
n_plots_err:
  - path: "/plots/castor-v21/single/n_1_err.png"
    label: "(a) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_1_err.png"
    label: "(b) Skyshine (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_2_err.png"
    label: "(c) Skyshine (100 cm thick)"
  - path: "/plots/castor-v21/single/n_3_err.png"
    label: "(d) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/n_3_err.png"
    label: "(e) Skyshine (50 cm thick)"
  - path: "/plots/castor-v21/single-perf-wall/n_2_err.png"
    label: "(f) Skyshine perf. (100 cm thick)"
g_plots:
  - path: "/plots/castor-v21/single/g_1.png"
    label: "(a) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_1.png"
    label: "(b) Skyshine (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_2.png"
    label: "(c) Skyshine (100 cm thick)"
  - path: "/plots/castor-v21/single/g_3.png"
    label: "(d) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_3.png"
    label: "(e) Skyshine (50 cm thick)"
  - path: "/plots/castor-v21/single-perf-wall/g_2.png"
    label: "(f) Skyshine perf. (100 cm thick)"
g_plots_err:
  - path: "/plots/castor-v21/single/g_1_err.png"
    label: "(a) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_1_err.png"
    label: "(b) Skyshine (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_2_err.png"
    label: "(c) Skyshine (100 cm thick)"
  - path: "/plots/castor-v21/single/g_3_err.png"
    label: "(d) Single cask (20 cm thick)"
  - path: "/plots/castor-v21/single-wall/g_3_err.png"
    label: "(e) Skyshine (50 cm thick)"
  - path: "/plots/castor-v21/single-perf-wall/g_2_err.png"
    label: "(f) Skyshine perf. (100 cm thick)"
g_plot:
  - path: "/plots/castor-v21/single/g_4_spec.png"
    label: ""
  - path: "/plots/castor-v21/single/g_4_spec_err.png"
    label: ""
---

[Prev](protvino-labyrinth.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-case.md)

# CASTOR-V/21 spent fuel cask

The following asymmetrical load of the CASTOR-V/21 fuel cask [1] is considered below:
 * Ten spent $15 \times 15$ PWR fuel assemblies of 3.11 wt.% initial enrichment, 35.7 GWd/MTU burn-up, and 46 months cooling time;
 * Seven quadratic combined absorbers which consist of two coaxial polyethylene and lead prisms of inradius 7 cm and 10.5 cm respectively;
 * Four empty positions.

|[![]({{ site.baseurl }}/plots/castor-v21/single/xy.png)]({{ site.baseurl }}/plots/castor-v21/single/xy.png) |
|:--:|
| Figure 1: Horizontal cross-section of the loaded cask |

In these calculations, the following techniques are used:
 - Expected-value estimators;
 - Joint location-direction importance sampling from source (for primary gamma only);
 - Energy importance sampling from source (for primary gamma only);
 - Exponential transform;
 - Prohibition of leakage (for the skyshine problems);
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **exponential transform** (for both gamma), and **prohibition of leakage** (for the skyshine problems) techniques.

Computed flux functional - ambient equivalent dose H*(10) [2] rates.

Several computational case results are provided:
 1. Single cask (total running time - 13.5 hours);
 2. Additional calculation for the single cask side surface primary gamma dose rates distribution (total running time - 25.2 hours);
 3. The cask is located in the center of $10^5$ cm air sphere inside a hypothetical labyrinth-like absorbing either polyethylene or lead construction which is designed for domination of the skyshine effect in radiation transfer (total running time - 12.6 hours);
 4. The same as above model but the construction has an air-filled perforation of 100 cm radius on 2500 cm height above the cask bottom (total running time - 12.7 hours).

For the cases 1, 3, 4, the both neutron-gamma and gamma problems were executed concurrently. Below, the results are presented (see details in [3]).

{% include plot_grid.html
   plots=page.n_plots
   cols=3
   caption="Figure 2: Neutron dose rate distributions."
%}

{% include plot_grid.html
   plots=page.n_plots_err
   cols=3
   caption="Figure 3: Neutron 1σ relative error distributions."
%}

{% include plot_grid.html
   plots=page.g_plots
   cols=3
   caption="Figure 4: Gamma dose rate distributions."
%}

{% include plot_grid.html
   plots=page.g_plots_err
   cols=3
   caption="Figure 5: Gamma 1σ relative error distributions."
%}

{% include plot_grid.html
   plots=page.g_plot
   cols=2
   caption="Figure 6: Primary gamma side surface dose rates and 1σ relative errors for the single cask (the extended calculation for 25.2 hours)."
%}


[Prev](protvino-labyrinth.md) [**.....**](shielding-evaluations.md#computations-results) [Next](castor-v21-mult-case.md)


# References
1. B. L. Broadhead, J. S. Tang, R. L. Childs, C. V. Parks, and H. Taniuchi. Evaluation of shielding
analysis methods in spent fuel cask environments. Technical Report EPRI TR-104329, Oak Ridge
National Laboratory (ORNL), Oak Ridge, TN (United States), 1995.
2. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford;, 1st
ed. edition, 1996 - 1997.
3. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).