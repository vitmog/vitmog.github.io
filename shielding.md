---
layout: page
title: Shielding
permalink: /shielding-evaluation-methodology/
---

# Methodology for shielding evaluations

 * [**History** and **motivation** of development](brand-hist.md)

 * [**Examples** of shielding evaluations using BRAND](shielding-evaluations.md)

 * [**Description** of the methodology and BRAND implementation issues](https://doi.org/10.5281/zenodo.16781416) (**preprint** on Zenodo)

<!--

 * [Partial **implementation in OpenMC**](openmc-shield.md) (ongoing project)
-->

### Remark about the source of the gains
There is a fact, which is well-known from the Monte Carlo theory, that we are always able to obtain the _zero-variance_ scheme. However, this ideal case can be achieved only if we have complete information about the solution. In practice, we obviously do not have such _a priori_ information when we need to perform a calculation.

Fortunately, the Monte Carlo theory allows us to approach to the _zero-variance_ scheme **indefinitely** close. Thus, any case of variance reduction by a factor of 100 does not reject the ability of further reduction by a factor of 100 and so on, until our sample size becomes equal to just around several dozens of histories required for consistent estimation of the sample variance for interval estimations. Therefeore, while the minimal sample size is around $10^1 - 10^2$, the current state of the proposed methodology allows us to obtain enough for many practical applications results on the sample size around $10^6 - 10^7$ histories for neutron and gamma problems. The ratio of ones characterizes the remained potential of possible further improvement.

The only principal limitation of scheme efficiency is coupled with possible accompanying increase of the computational cost of each history with the modification of sampling for variance reduction. However, at the moment of writing this work, there are not known any either theoretically or practically substantiated limitations of the performance gain. While it is so, the research in this area remains relevant.
