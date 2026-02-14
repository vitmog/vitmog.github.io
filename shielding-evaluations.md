---
layout: page
title: Radiation shielding Monte Carlo evaluations on the BRAND example
permalink: /shielding-evaluations/
redirect_from:
  - /shielding-evaluations.html
---

# Shielding evaluations

In this section, short descriptions of examples of the designed Monte Carlo scheme for neutral particle transport applications results on the example of BRAND are provided. For more information about the methodology and considered computational cases, see [[1](https://doi.org/10.5281/zenodo.16781417)] and [here](brand-hist.md).

## Experimental code description
The neutron-gamma and gamma versions of BRAND [2, 3] (below, those will be referred shortly as BRAND) Monte Carlo program complex uses ABBN-78 28-group constant system with subgroups [4] for continuous-energy (sic!) modeling neutron interactions including absorption, elastic scattering, inelastic scattering, fission, (n, 2n), (n, 3n), and a specific based on EPDL97 [5] constant gamma library for modeling photo-effect, Compton scattering, and pair production. It was written in a mix of Fortran-66/77/90.

The performed below results aims to finalize the path of development of the neutron-gamma modules of BRAND. The BRAND code neutron-gamma modules are not maintained and supported anymore.

## Method
Advanced Monte Carlo techniques have been designed and implemented by the author, as a part of his independent research activity, in separated program modules written mostly in Fortran-2008 which has been connected to BRAND.

Also, the interactive GUI program for producing geometry cross-sections and computational results plots was designed by Tatiana Utyanskaya in C# as a part of her independent research activity. All of the performed below plots were obtained by this visualizer.

See details for the used method [here](brand-hist.md) and [[1](https://doi.org/10.5281/zenodo.16781417)].

## Computational machine
The performed below calculations results has been obtained on an ASUS laptop with a dual-core Intel Core i3-5005U CPU @ 2.00GHz (i.e. 5th generation, release date: Q1 '2015) and 4+8 Gb RAM operating under Windows 10.

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
| [CASTOR-V/21 multi-thickness](castor-v21-mult-case.md) | ✔ | ✔ | ❌ | ❌ | ❌ | ✔ |
| [CASTOR-V/21 multi-source](castor-v21-mult-source.md) | ✔ | ✔ | ❌ | ❌ | ❌ | ✔ |
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