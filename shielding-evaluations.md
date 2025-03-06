
[**.....**](index.md)

# Radiation shielding Monte Carlo evaluations examples

In this section, short descriptions of examples of modern Monte Carlo techniques for neutral particle transport applications results are provided. For more information about the methodology and considered computational cases, see [[1](https://doi.org/10.5281/zenodo.16781417)].

## Experimental code description
The neutron-gamma and gamma versions of BRAND [2, 3] (below, those will be referred shortly as BRAND) Monte Carlo program complex uses ABBN-78 28-group constant system with subgroups [4] for continuous-energy (sic!) modeling neutron interactions including absorption, elastic scattering, inelastic scattering, fission, (n, 2n), (n, 3n), and a specific based on EPDL97 [5] constant gamma library for modeling photo-effect, Compton scattering, and pair production. It was written in mix of Fortran-66/77/90.

Among efficient Monte Carlo techniques, which was implemented in BRAND by P.A. Androsenko and his team, the author would like to highlight the following ones which shown efficiency in the performed below examples:
 - Expected track-lenght estimator;
 - Prohibition of leakage.

Also, a notable feature of the Androsenko's design approach is an informal, but quite strict, paradigm of program modules separation onto independent entities encapsulating the target functionality, as far as it was possible in Fortran-77. That made the following extension and modification of BRAND to be much eaiser than it is for many other codes.

## Method
In 2011-2021 years, BRAND had been maintained and used by the author for shielding evaluations in safety analyses of radioactive waste and fuel storage, transportation and management. For such purposes, advanced Monte Carlo techniques have been designed and implemented by the author, as a part of his independent research activity, in separated program modules which has been connected to BRAND (see details in [[1](https://doi.org/10.5281/zenodo.16781417)]). This set of techniques includes:
 - Expected crossings estimator;
 - Joint location-direction importance sampling from source (automated, for gamma only);
 - Energy importance sampling from source (manually, for gamma only);
 - Exponential transform modification for convex shields (manually);
 - Simplified adaptive splitting (automated).

 All of these technique has been designed by 2016, except of the _Simplified adaptive splitting_ which has been created later, althrough it is undemaneded too as it is seen.

 Additionally, it was designed by 2019 and interated a stand-alone multi-kernel geometry module for penetrating ray tracing written in Fortran-2008 which structure allows to:
  - Easily extend the range of used geometry modules (kernels), both ailen geometry modules for compatibility purposes and modern _ad hoc_ ones providing high-optimized tracing of specific geometry blocks;
  - Simple construct complex geometry models of mixed types for description of real-world compositions using inclusions and interferences;
  - Porvide a concise API for high-performance computations using ray tracing.

Also, the interactive GUI program for producing geometry cross-sections and computational results plots was designed by Tatiana Utyanskaya in C# as a part of her independent research activity. All of the performed below plots were obtained by this visualizer.

## Computational machine
The performed below calculations results has been obtained on an ASUS laptop with a dual-core Intel Core i3-5005U CPU @
2.00GHz processor (i.e. 5th generation, release date: Q1 '2015) and 4+8 Gb RAM operating under Windows 10.

## Calculational results
The considered problems are brought into a table by the next attributes of the dominating contribution paths to target functionals:
 * **Thick source**: the source body leakage event for an average emitted particle has low probability;
 * **Strong attenuation**: emitted in (leaked from) the source body particles have low probability of passing through homogeneous shield materials;
 * **Skyshine**: the dominating contribution of air-scattered radiation;
 * **Tiny holes**: the dominating contribution through small heterogeneity (-ies) in an attenuating shield;
 * **Labyrinths**: the dominating contribution of multiply scattered on corridors and rooms walls radiation.

| Problem name | Thick source | Strong attenuation | Skyshine | Tiny holes | Labyrinths | Multicase |
| :-- | :--: | :--: | :--: | :--: | :--: | :--: |
| [Ueki experiment (Type 3)](ueki-experiments.md) | ❌ | ✔ | ❌ | ❌ | ❌ | ❌ |
| [Protvino labyrinth benchmark](protvino-labyrinth.md) | ❌ | ❌ | ❌ | ❌ | ✔ | ❌ |
| [CASTOR-V/21 spent fuel cask](castor-v21.md) | ✔ | ✔ | ✔ | ✔ | ❌ | ❌ |
| [CASTOR-V/21 multicase](castor-v21-mult-case.md) | ✔ | ✔ | ❌ | ❌ | ❌ | ✔ |
| [Concrete Anthill storage-like](anthill.md) | ✔ | ✔ | ✔ | ✔ | ✔ | ❌ |
| [Steel Anthill storage-like](anthill-steel.md) | ✔ | ✔ | ✔ | ✔ | ✔ | ❌ |

[**.....**](index.md)

# References
1. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
2. A.A. Androsenko and P.A. Androsenko. Constructing some effective modifications of the Monte Carlo
method for radiation transport problems (in Russian - Построение некоторых эффективных модификаций метода Монте-Карло для решения задач переноса излучения). Preprint FEI-1794, Institute of
Physics and Power Engineering (IPPE), Obninsk, USSR, 1986.
3. P.A. Androsenko, V.I. Belousov, A.V. Konkov, and A.G. Tsarina. Modern status of the BRAND
program complex (in Russian - Современный статус комплекса программ BRAND). Problems of Atomic
Science and Engineering. Series: Physics of Nuclear Reactors, (1):74-83, 2006.
4. L.P. Abagyan, N.O. Bazazyants, M.N. Nikolaev, and A.M. Tsibulia. Group constants for reactor
and shielding calculations (in Russian). Ehnergoizdat, Moscow, 1981. Handbook.
5. Dermott Cullen, J. Hubbell, and Lyssie Kissel. EPDL97: The evaluated photon data library. 6, 01
1997


<sub>Copyright &copy; 2025-2026 Vitaly Mogulian. All rights reserved. [Legal Status & IP Statement](LEGAL.md).</sub>
