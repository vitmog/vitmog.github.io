---
layout: page
title: BRAND Development Notes
permalink: /brand-hist/
redirect_from:
  - /brand-hist.html
plots_2m:
  - path: "/plots/castor-v21/single/n_5.png"
    label: "(a) Neutron"
  - path: "/plots/castor-v21/single/g_5.png"
    label: "(b) Gamma"
plots_2018:
  - path: "/plots/misc/tuk153_g_1_2018.png"
    label: "(a) Vertical"
  - path: "/plots/misc/tuk153_g_2_2018.png"
    label: "(b) Horizontal"
  - path: "/plots/misc/tuk153_g_3_2018.png"
    label: "(c) Body surface"
plots_mt:
  - path: "/plots/castor-v21/single-mult-thick/n_3.apng"
    label: "(a) Neutron"
  - path: "/plots/castor-v21/single-mult-thick/g2_3.apng"
    label: "(b) Sec. Gamma"
  - path: "/plots/castor-v21/single-mult-thick/g_3.apng"
    label: "(c) Pr. Gamma"
plots_2016:
  - path: "/plots/misc/tuk141_n_2016.png"
    label: "(a) Neutron"
  - path: "/plots/misc/tuk141_g_2016.png"
    label: "(b) Pr. Gamma"
  - path: "/plots/misc/tuk141_tot_2016.apng"
    label: "(c) Total"
plots_anthill:
  - path: "/plots/anthill/n_1_rooms.png"
  - path: "/plots/anthill/g_1_rooms.png"
  - path: "/plots/anthill/n_1_checker.png"
    label: "(a) Neutron"
  - path: "/plots/anthill/g_1_checker.png"
    label: "(b) Gamma"
---

# BRAND Development Notes

Below, it is briefly described the story of my and my collaborators' development of new modules to the neutron-gamma versions of the maintained BRAND legacy code. This non-comprehensive list is intended to demonstrate how the development was moved and utilized to provide formal documentation and preserve the technical heritage of the BRAND codebase development. This material does not include negative results with developments which did not prove effective because such investigations were not finalized in most cases.

## Heritage Note
The project of BRAND (BRothers ANDrosenko) Monte Carlo complex of codes has been initiated by the two mathematicians of IPPE (Obninsk, USSR): Petr Alexandrovich and Alexander Alexandrovich Androsenko. It is intended for Monte Carlo numerical simulation of quite a wide range of physical processes, such as neutral and charged fixed-source particle transport, thermal conduction, adjoint equation for photon transport, etc. As many other Soviet (and Russian too) codes, it was not distributed by shared program banks and used mostly, if not exclusively, by the maintainers.

Among efficient Monte Carlo techniques, which was implemented in BRAND by P.A. Androsenko and his team, the author would like to highlight the following ones which shown efficiency in the performed below examples:
 - Expected track-length estimator;
 - Prohibition of leakage technique.

Also, a notable feature of the Androsenkos' design approach is an informal, but quite strict, paradigm of program modules separation into independent entities encapsulating the target functionality, as far as it was possible in Fortran-77. That made the following extension and modification of BRAND to be much easier than it is for many other codes.

## Academic Period (2007-2011)
I started my research as a student of Prof. P.A. Androsenko in 2007 in Obninsk State Technical University for Nuclear Power Engineering, IATE (it was renamed to IATE MEPhI by 2009), who was the owner and principal maintainer of BRAND. Building upon the foundational view and ideas of P.A. Androsenko and under his mentoring, I designed, implemented in the gamma module of BRAND, and investigated three variance reduction techniques of Monte Carlo for particle transport in 2008-2010:
 * Double-point estimator in 2008;
 * Combined point and double-point estimator in 2009 [1, 2];
 * Azimuthal scattering angle importance sampling in 2010 [3].

The results were included in my Specialist's degree thesis titled "Development of the Monte Carlo method non-analog modifications for shielding evaluations" in 2011.

By 2010, we began a contractor collaboration with the JSC "Engineering Center of Nuclear Containers" (Moscow, Russia) private company by initiative of its co-founder and Chair Chief M.V. Radchenko. Since 2011, I actively maintained the neutron-gamma part of the legacy BRAND codebase transmitted by P.A. Androsenko while developing independent extensions and custom modules as an independent researcher's pet-project for both experimental studies and safety evaluations.



## Industrial Period (2011-2021)
While I kept the possibility to perform the shielding evaluations using available to me in the source codes BRAND during the [Industrial Period](bio.md#industrial-activity-2011-2021), I combined my role as a Modeling Engineer with independent research activity for design and implementation of **novel** Monte Carlo algorithms. It soon became clear that many real-world problems of radiation shielding R&D can be efficiently resolved by modification of Monte Carlo techniques on the deep level. It resulted in the designing advanced Monte Carlo particle transport algorithms and approaches, which was motivated by my research interest inspired by the challenges of industry problems.

As a result, an original Monte Carlo methodology for efficient neutral particles shielding numerical simulation was designed for providing **full-scale** calculations with **detailed dose rate mapping** on a typical **personal computer**. The methodology proved effective in practice and some of its components, which have been presented at several scientific conferences in Russia, are shortly described below.



### Monte Carlo Techniques Research
At the beginning of 2011, P.A Androsenko, A.V. Masterov, and I designed a scheme using **expected track-length estimator** to estimate linear flux functionals averaged by geometry cells behind shield. Due to the complexity of complex combinatorial model geometry cell separation, just 1-D surface distributions were estimated as a rule.

<figure style="display: flex; flex-direction: column; align-items: center; margin: 20px 0; text-align: center;">
  <img src="{{ site.baseurl }}/plots/misc/minicask-06.11.png"
       style="width: 60%;"
       alt="Dose Rate Map">
  <figcaption style="text-align: center; margin-top: 15px; font-weight: normal; font-size: 1em;">
    Figure 1: Gamma dose rate 1-D profile on the surface of a radioactive waste cask as two cases of the gap thickness [4] (published in 2011). The task of maximal side dose rate location determination is not easy. The right plot was printed from a visualizer designed by A.G. Tsarina.
  </figcaption>
</figure>


#### Estimators for dose rate mapping
The first significant modification of the scheme was based on implementation of the following well-known **expected-value estimators** for dose rate mapping as an independent from geometry model entities:
* Expected crossings estimator in 2012 [7];
* Expected track-length (volumetric) estimator in 2015 [7].

{% include plot_grid.html
   plots=page.plots_2m
   cols=2
   caption="Figure 2: Non-conform dose rate profiles on 2 m from non-uniformly loaded CASTOR-V/21 surface for the same loading configuration [7] (published in 2025). Even just changing the component fractions affects the global total dose rate maxima location."
%}

The geometry model-independent **2-D surface dose rate mapping** allowed me to eliminate the need for multiple search calculations to estimate location of the extremum point on regulatory control levels. It also has been **post-calculation averaging** dependently on the obtained spatial dose profile and statistical quality. The latter was intensively used while the scheme performance had not yet been high enough.

<figure style="display: flex; flex-direction: column; align-items: center; margin: 20px 0; text-align: center;">
  <img src="{{ site.baseurl }}/plots/misc/mc10-05.14.png"
       style="width: 60%;"
       alt="Dose Rate Map">
  <figcaption style="text-align: center; margin-top: 15px; font-weight: normal; font-size: 1em;">
    Figure 3: An attempt to provide cross-section MC-10 cask Gamma dose rate plot using the crossings estimator in the Origin plotter with its standard smoothing (2014, personal archive). The left plot was printed from a visualizer designed by A.G. Tsarina.
  </figcaption>
</figure>


The **volumetric dose rate mapping** was primarily used by me for viewing how the fluxes penetrate through heterogeneous shields. It reduced the number of required search calculation cases on the design stage by providing a deeper understanding of radiation transport trends. Finally, it has been used to formulate recommendations for equipment construction optimization under given limitations and conditions.

{% include plot_grid.html
   plots=page.plots_2018
   cols=3
   caption="Figure 4: Passing gamma radiation through a heterogeneous (cast iron--lead--polyethylene) shield in a thin fragment of the uniformly loaded TUK-153 cask body [6] (published in 2018). The structure of the shield requires the choice of small averaging surface area."
%}


#### History reanalysis for multi-case calculations
The following modifications are related to the **history reanalysis** technique, which can be theoretically considered as a partial case of **importance sampling**, but technically it should be likely categorized as part of the **detector module**, was used for the multicase calculations:
* Multi-thickness calculation technique for expected-value estimators in 2013 [7];
* Multi-source calculation technique in 2021 [7].

{% include plot_grid.html
   plots=page.plots_mt
   cols=3
   caption="Figure 5: Cutting non-uniformly loaded CASTOR-V/21 animation for Neutron, Sec. Gamma, and Pr. Gamma dose rates (laptop results from [7], published in 2025)."
%}

They allowed me to further reduce the number of calculational cases and greatly streamlined the workflow for search calculations and shielding design as quite a large number of non-standard calculational cases and projects.


#### Importance sampling for variance reduction
The "typical" **importance sampling** modifications of the Neumann-Ulan scheme are the following:
* Exponential transform modification for convex shields in 2012 [7];
* Joint location-direction source importance sampling technique in 2015.

Uranium dioxide - the spent fuel source material - is one of the best known gamma-absorbing materials, so significant efficiency (almost 3 orders) in photon calculations gain was taken via the **joint location-direction source importance sampling** technique.

As a result, the achieved numerical performance provided the ability to obtain detailed smooth and valid numerous dose rate mappings in the screen resolution (typically, 1000 on 1000 bins) for full-scale calculations on the workstation based on 4-6 **Intel Core i7-2700K CPU @ 3.50GHz** in around 1-2 days since 2015-2016. However, for final safety report releases and publications, such as the one performed here, I had often been running longer calculations in 1 week.

{% include plot_grid.html
   plots=page.plots_2016
   cols=3
   caption="Figure 6: Dose rates for a uniformly loaded TUK-141/153 family spent fuel cask project for VVER-1000 [5] (published in 2016)."
%}


#### Splitting for variance reduction
Quite late implementation and development of the **splitting** technique was motivated by a labyrinth-like problem case of a ventilated dry storage project shielding calculation:
* Splitting technique using importance map in 2021;
* Simplified adaptive splitting technique.

The implementation of the **simplified adaptive splitting** technique additionally to the described above ones was motivated by transitioning of my calculations from a workstation to personal hardware. In contrast to the CADIS family of methods, the feature of this adaptive scheme concludes in:
 * Single-stage nature which does not require any preliminary calculation;
 * Free combination with arbitrary estimator and variance reduction scheme because of its adaptiveness nature.

{% include plot_grid.html
   plots=page.plots_anthill
   cols=2
   caption="Figure 7: Dose rate plot fragments for the Anthill problem [7] (published in 2025)."
%}

In result, it allows to provide **full-scale** calculations with the same detailed dose rate mappings, but on my personal home laptop based on dual-core **Intel Core i3-5005U CPU @ 2.00GHz** instead of a workstation based on 4 **Intel Core i7-2700K CPU @ 3.50GHz**, accompanied by the increased per time efficiency.

### Methodological Research
Additionally, it was designed and implemented an external post-processing utility
 * Automated producing spent fuel qualification tables scheme in 2014 [5].

It provides the ability to
 * Find the dependency of total multi-kind dose rates on spent fuel parameters (such as enrichment, burn-up, and cooling time) per a single calculation in assumptions about cask loading (such as full uniform or two-zone, for example);
 * Solve the inverse problem of finding the fuel parameters set boundary to fulfill given criteria.

It uses the computed kind-wise linear expansions of calculated **high-resolution dose rate maps** by cask's control level surfaces for solution of the given criteria's linear equation. This scheme allows me to eliminate the need for a large number of calculations to fill the qualification tables in the cases of complex multi-modal (flowing extremals) out-of-shield dose rate profiles on some projects.

For example, in the assumptions of the uniform loading, taken margins for uncertainties, and the set of possible combinations of the average burn-up and initial enrichment is limited by the single line

$$B(E) = \frac{68 GWd/tU}{4.95 \%wt.} E$$

where $B$ is the average burn-up in GWd/tU, $E$ is the initial enrichment in %wt.

the following estimates of cooling time of each FA were obtained for a project of a TUK-141/153 family spent fuel cask project for 18 spent FA (SFA) VVER-1000 as the TS-R-1 regulation dose rate limits (mainly, 100 $\mu$Sv/h on 2 m from vehicle side vertical planes averaged over $30 \times 25$ cm surface fragments):

<div align="center">
  <img src="{{ site.baseurl }}/plots/misc/tuk141_qt_plot_2016.png" style="width: 50%" alt="Dose Rate Map">
  <br>
  <em>Spent fuel cask "qualification line" for the the 4 cases of cask body environment [5] (published in 2016)</em>
</div>

### Visualization Research
I provided technical consultations for T.V. Utyanskaya during the creation of a graphical visualizer for geometry and mapping results, working principles, and API and feedback on the prototypes. As a result, Tatiana Utyanskaya designed the first stable version of a high performance interactive multifunctional plotter by 2015 and further continued development of the application. Since 2015, I am actively using this visualizer in all related to BRAND activity rather than general-purpose plotting utilities.

### Architectural Research
An another development is a portable general-purpose ray-tracing
 * Multi-Kernel Geometry Module in 2019 [7].

This module is written in Fortran-2008 and intended for Monte Carlo integration over geometrical domains.

In the context of the practical side, implementation of MKGM allowed to increase performance by about 30% and migration to pin-wise FA active part models instead of homogenized ones.

_This section will be filled later._

## Conclusion on the BRAND maintenance
A possible case of final output of this methodology application for a **full-scale pin-wise** model of a spent fuel cask is the series by **shield thickness** of minimal allowed **cooling time** vs. **burn-up and enrichment** plot obtained as a result of postprocessing of a **single night-long calculation** on an 2GHz CPU-based laptop per each source type (i.e. neutron/gamma) which used:
 * The **multi-source** technique for source series expansion;
 * The **multi-thickness** technique for series of variable shield thickness;
 * The **expected-value estimators**, **exponential transform**, **location-direction importance sampling**, and **prohibition of leakage** techniques for the entire performance.

Extrapolations this results on a modern (in 2026) laptop, the computational time could be around 10 times lower, i.e. to achieve around **one hour** long that is much less than the typical time for case preparation and report. However, we also should keep in mind the simplified physics of BRAND by modern standards, especially the neutron one. I estimate that usage of the continuous energy and thermalization neutron physics should decrease the performance by several times.

The designed methodology has also **disadvantages**, such as the necessity of variance reduction techniques tuning. Despite the parametrizations are concise (as a rule, just one tuning parameter and intuitive data, such as source/shield boundaries coordinates) and optimal parameters are, as a rule, approximately the same from one problem to another (such as exponential transform parameter we can just take to be equal to $0.8$ for gamma and $0.6$ for neutrons), the issues of its choice and limitations are will be always relevant in general. I believe that a solution of this problem can be found via fully-automated adaptive variance reduction technique implemented in a portable library which is under design.

More results of the methodology usage can be found [here](shielding-evaluations.md) and in the working paper [7] which finalizes the BRAND legacy project on my part.

I saw the only further development of the legacy BRAND project application to the described problems as the design of a new code in a modern programming language and paradigm using the created and linked to BRAND new modules, such as Multi-Kernel Geometry Module. On the one hand, it is obvious that such work should not be made in the pet-project mode. On the other hand, the demand for this work, all the more so the ability to support this project, has been absent during the period of my activity. Therefore, after my retirement from ECNC and following experimental implementation of the last technique -- **simplified adaptive splitting** -- that proved the possibility of full-scale shielding calculations on a laptop using the designed methodology.

Since the methodology achieved its culmination on the basis of the legacy BRAND project, the maintenance and development of the neutron-gamma modules of the BRAND code was terminated. I guess that designed techniques and experience of usage can be reused in future.


## References
1. P.A. Androsenko, V.G. Mogulian. Algorithms of the Monte Carlo method based on combination of local and double-local estimates (in Russian). In proceedings of Conference of Computational Mathematics CVM-2009, 23-25 June, Akademgorodok, Novosibirsk, Russia, 2009.
2. P.A. Androsenko, V.G. Mogulian. A modification of the Monte Carlo method based on combination the point and double-point estimators (in Russian -- Модификация метода Монте-Карло, основанная на комбинации локальной и двойной локальной оценок). MEPhI-2010 scientific session proceedings, 2010
3. P.A. Androsenko, V.G. Mogulian. Efficient methods of non-analog simulation of scattering as solving of radiation transport by the Monte Carlo method (in Russian). "Neutron physics problems of nuclear power (Neutronica-2010)" seminar, 2010.
4. P.A. Androsenko, A.V. Masterov, V.G. Mogulian. AUsage of the BRAND program complex for optimization of a protective reload cask construction in terms of radiation safety (in Russian). Proceedings of the XXII "Neutron physics problems of nuclear power (Neutronica-2011)" seminar, Obninsk, Russia, 2011.
5. V.G. Mogulian and T.V. Utyanskaya. Estimation of allowed spent fuel parameters values range boundaries by usage of the BRAND post-processing module on the TUK-141 instance (in Russian). Presentation on the "Neutron physics problems of nuclear power (Neutronica-2016)" conference, Obninsk, Russia, 23-25 November, 2016.
6. V.G. Mogulian T.V. Utyanskaya. Comparative analysis of calculated and measured dose rates as experimental loadings TUK-153 (in Russian). Presentation on "Neutron physics problems of nuclear power (Neutronica-2018)" conference, Obninsk, Russia, 28-30 November, 2018.
7. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).