# Radiation shielding Monte Carlo evaluations examples

In this section, short desctiptions of examples of modern Monte Carlo techniques for neutral particle transport usage results are provided.

## Code description
The neutron-gamma and gamma versions of BRAND [1, 2] (below those will be referred shortly as BRAND) Monte Carlo program complex uses ABBN-78 28-group constant system with subgroups [3] for continuous-energy (sic!) modeling neutron interactions including absorption, elastic scattering in the P1-approximation, inelastic scattering, fission, (n, 2n), (n, 3n), and a specific based on EPDL97 [4] constant gamma library for modeling photo-effect, Compton scattering, and pair production.

## Method
In 2011-2021 years, BRAND had been maintained and used by the author for shielding evaluations in safety analyses of radioactive waste and fuel storage, transportation, and etc. For such purposes, advanced Monte Carlo techniques has been designed and implemented by the author during the maintaining BRAND.
Also, the interactive GUI program for producing geometry cross-sections and computational results plots was designed by Tatiana Utyanskaya. All of given below plots was obtained by that visualizer.

## Computational machine
Calculations are running on a laptop with a dual-core Intel Core i3-5005U CPU @
2.00GHz processor and 4+8 Gb RAM operating under Windows 10.

## Computations results

The considered problems are brouth into a table by the next attributes of dominating contribution paths to target functionals:
 * Thick source - the source body leakage event for an average emitted particle has low probability;
 * Strong attenuation - emitted in (leaked from) source body particles have low probability of passing through homogenious shield materials;
 * Skyshine - dominating contribution of air-scattered radiation;
 * Tiny holes - dominating contribution through small heterogeneity (-ies) in an attenuating shield;
 * Labyrinths - dominating contribution on corridors and rooms walls multiply scattered radiation.

| Problem name | Thick source | Strong attenuation | Skyshine | Tiny holes | Labyrinths |
| :-- | :--: | :--: | :--: | :--: | :--: |
| [Ueki experiment (Type 3)](ueki-experiments.md) | - | + | - | - | - |
| [Protvino labyrinth benchmark](protvino-labyrinth.md) | - | - | - | - | + |
| [CASTOR-V/21 spent fuel cask](castor-v21.md) | + | + | + | + | - |
| [Anthill storage model](anthill.md) | + | + | + | + | + |

07.02.2025

# References
1. A.A. Androsenko and P.A. Androsenko. Construction some effective modifications of the Monte Carlo
method for radiation transport problems (in Russian: Postroyenie nekotoryh effectivyh modifikatsiy
metoda Monte Carlo dlya resheniya zadach perenosa izlucheniya).
2. P.A. Androsenko, V.I. Belousov, A.V. Konkov, and A.G. Tsarina. Modern status of the BRAND
program complex (in Russian: Sovremenniy status komplexa programm BRAND). Problems of Atomic
Science and Engineering. Series: Physics of Nuclear Reactors, (1):74-83, 2006.
3. L.P. Abagyan, N.O. Bazazyants, M.N. Nikolaev, and A.M. Tsibulia. Group constants for reactor
and shielding calculations (in Russian). Ehnergoizdat, Moscow, 1981. Handbook.
4. Dermott Cullen, J. Hubbell, and Lyssie Kissel. EPDL97: The evaluated photon data library. 6, 01
1997.


<sub>Copyright &copy; 2025 Vitaly Mogulian</sub>