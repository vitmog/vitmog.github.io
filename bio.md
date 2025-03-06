[Back](index.md)

[GitHub](https://github.com/vitmog)

# About me

<!--## Curriculum Vitae
-->

## Research Autobiography

### The Academic Roots (2007-2011)
I began my research career as a student of P.A. Androsenko (1952-2011) in 2007 in Obninsk State Technical University for Nuclear Power Engineering, IATE (it was renamed to IATE MEPhI by 2009). He was the creator of the BRAND (BRothers ANDrosenko) Monte Carlo complex of codes for numerical simulation of quite a wide range of physical processes such as neutral and charged particle transport, thermal conduction, etc. Building upon the foundational view and ideas of P.A. Androsenko and under his mentoring, I designed, implemented in the gamma module of BRAND, and investigated three variance reduction techniques of Monte Carlo for particle transport in 2008-2010:
 * Double-point estimator by 2008;
 * Combined point and double-point estimator by 2009 [1, 2];
 * Azimuthal scattering angle importance sampling by 2010 [3].

 The results were included in my Specialist's degree thesis titled "Development of the Monte Carlo method non-analog modifications for shielding evaluations" by 2011. From 2011 to 2021, I have continued maintaining the neutron-gamma part of the legacy BRAND codebase while developing independent extensions and custom modules as an independent researcher.

### Industrial Activity (2011-2021)
My experience involves working as a _de facto_ Modelling Engineer in JSC "Engineering Center of Nuclear Containers" of the nuclear power industry from 2011 to 2021. In this role, I provided criticality (SCALE/KENO), depletion (SCALE/TRITON/KENO, SCALE/TRITON/NEWT, etc.), and shielding evaluations (BRAND) for design and optimization of spent fuel and radioactive waste equipment (primarily, spent fuel casks) to support the design process by construction optimizations and to review the completed projects by regulatory authorities. The shielding evaluations were performed using BRAND and it soon became clear that many practical problems of radiation shielding R&D can be efficiently resolved by designing advanced Monte Carlo particle transport algorithms and approaches.

The projects I was involved in were exclusively in the civil nuclear industry field and the results have been successfully certified by Russian and Chinese regulatory authorities with my support where it was needed.

### Independent Research Activity (2011-p.t.)
During the Industrial Period, I combined my role as a modeling engineer with independent research activity for design and implementation of novel Monte Carlo algorithms inspired by the challenges of the real-world problems. As a result, an original Monte Carlo scheme for efficient neutral particles shielding numerical simulation was designed for providing high-fidelity calculations with detailed dose rate mapping on a typical office personal computer. The scheme recommended itself in the engineering practice and some components of the scheme have been presented at several scientific conferences in Russia and shortly described below.

#### Variance Reduction Research
The scheme includes the following well-known **expected-value estimators** for dose rate mapping:
* Expected crossings estimator 2012 [4];.
* Expected track-length (volumetric) estimator 2015 [4].

The geometry model-independent surface dose rate mapping allowed to eliminate the need for search calculations to estimate location of the extremal point on regulatory control levels. The volumetric estimators were primarily used by me for equipment construction optimizations to view how the fluxes penetrate through heterogeneous shields.

The **importance sampling** modifications of the Neumann-Ulan scheme are the following:
* Exponential transform modification for convex shields by 2012 [4];
* Coupled location-direction source importance sampling technique by 2015;
* Multi-thickness calculation technique for expected-value estimators by 2013 [4];
* Multi-source calculation technique by 2021 [4].

As a result, the obtained numerical performance provided the ability to obtain detailed smooth dose rate mappings in the screen resolution (typically, 1000 on 1000 bins) for high-fidelity calculations on an office workstation since 2015-2016. It allowed me to reduce the number of calculations and greatly simplified my life with search calculations and shielding design as quite a large number of non-standard calculational cases and projects.

Quite late implementation of the **splitting** technique was motivated by labirynth-like problem of a ventilated dry storage calculation:
* Splitting technique by 2021 [4];
* Simplified adaptive splitting technique by 2022.

The implementation of the simplified adaptive splitting technique additionally to the described above ones was motivated by the lacked access to the office workstation and allows to provide high-fidelity calculations with detailed dose rate mappings on my personal home laptop based on dual-core Intel Core i3-5005U CPU @ 2.00GHz accompanied by the increased per time efficiency.

#### Methodological Research
Additionally, it was designed and implemented an external post-processing utility
 * Automated producing spent fuel qualification tables scheme by 2014 [5].

It provides the ability to
 * Find the dependency of total multi-kind dose rates on spent fuel parameters (such as enrichment, burn-up, and cooling time) per a single calculation in assumptions about cask loading (such as full uniform or two-zone, for example);
 * Solve the inverse problem of finding the fuel parameters set's boundary to fulfill a given criteria.

It uses the computed kind-wise expansions of high-resolution dose rate maps by cask's control level surfaces for solution of the given criteria's linear equation. This scheme allows me to eliminate the need for a large number of calculations to fill the qualification tables in the cases of complex multi-modal out-of-shield dose rate profiles on some projects.

#### Visualization Research
I served as a technical consultant of T.V. Utyanskaya during the creation of a graphical visualizer for geometry and mapping results working principles and API and I provided feedback on the prototypes. As a result, Tatiana Utyanskaya designed the first stable version of a high performance interactive multifunctional plotter by 2015 and further continued development of the application. Since 2015, I am actively using this visualizer in all related to BRAND works in publications rather than general-purpose plotting utilities.

#### Architectural Research
Another development is a portable general-purpose
 * Multi-Kernel Geometry Module by 2019 [4].

This module is written in Fortran-2008 and intended for Monte Carlo geometry integration and it is a result of formalization of geometry model representation and ray tracing abstractions to allow flexibility in the geometry capabilities. The core feature is a found geometry topology concept compatible with efficient computational algorithms and API using Object-Oriented Paradigm for the inner interface with kernels and external Functional Paradigm interface for calling from guide programs (particle transport code, ray-tracer, etc.). That provides easy portability and inclusion/exclusion of kernels, including third-party ones, relatively low cost of tracing (less than $5 \cdot 10^{-7}$ sec/cell on a 2GHz CPU), and opens new possibilities of geometry model construction by user.

For example, it has been allowed to overcome the BRAND's `GEOUN94` combinatorial geometry module limitations and keep backward compatibility with the designed library. Also, it was a successful experience with integration of principally differently organized legacy codes of the MMK family:
 * Experimental integration of two external MMKFK-2 problem-oriented efficient geometry modules (OBHEX4 and HRAN2) authored by A.A. Blyskavka in collaboration with V.B. Polevoy;
 * Experimental integration of the module within OBHEX4 and HRAN2 into the MMKFK-2 code.

A minimal workable example of integration was obtained by me after spending just one working week in spring of 2019 which signifies the appropriate choice of the paradigm. Such an extension allowed to use mixed BRAND/MMKFK-2 geometries in both BRAND and MMKFK-2. I am still looking at it as a promising project.

#### Results
Some results of the scheme usage can be found [here](shielding-evaluations.md) and in the working paper [4].
My further activity focuses on more general theoretical (consequently, more universal) investigations which results currently are not published.

## Core Interests
My research interest focuses on Monte Carlo numerical integration via Markov Chains which involves both the ordinary Neumann-Ulam scheme and advanced approaches, such as MCMC and SMC. I am currently working on a general-purpose adaptive optimizer for numerical integration via the Neumann-Ulam scheme which generalizes some successful approaches found in the neutral particle transport applications and implemented in the adaptive splitting scheme. I believe it will provide the transfer of the successful experience to new fields where this scheme is used, such as charged particle transport and solution of linear algebraic systems, partial differential equations via the walks on spheres and the Feynman-Kac formula, etc.

## Current Position (2021-p.t.)
Independent researcher.

## Contact
Please find my email in the author's footnote of the [paper](https://doi.org/10.5281/zenodo.16781416).

## References
1. P.A. Androsenko, V.G. Mogulian. Algorithms of the Monte Carlo method based on combination of local and double-local estimations (in Russian). In proceedings of Conference of Computatuinal Mathematics CVM-2009, 23-25 June, Akademgorodok, Novosibirsk, Russia, 2009.
2. P.A. Androsenko, V.G. Mogulian. A modification of the Monte Carlo method based on combination the point and double-point estimators (in Russian -- Модификация метода Монте-Карло, основанная на комбинации локальной и двойной локальной оценок). MEPhI-2010 scientific session proceedings, 2010
3. P.A. Androsenko, V.G. Mogulian. Efficient methods of non-analog simulation of scattering as solving of radiation transport by the Monte Carlo method (in Russian). "Neutron physics problems of nuclear power (Neutronica-2010)" seminar, 2010.
4. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).
5. V.G. Mogulian and T.V. Utyanskaya. Estimation of allowed spent fuel parameters values range boundaries by usage of the BRAND post-processing module on the TUK-141O instance (in Russian). Slides on the "Neutron physics problems of nuclear power (Neutronica-2016)" conference, Obninsk, Russia, 23-25 November, 2016.

[Back](index.md)


<sub>Copyright &copy; 2025-2026 Vitaly Mogulian. All rights reserved. [Legal Status & IP Statement](LEGAL.md).</sub>
