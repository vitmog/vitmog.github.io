---
layout: page
title: CASTOR-V/21 multi-source computations
permalink: /castor-v21-multi-source/  
sidebar: true  
toc: true
redirect_from:
  - /castor-v21-multi-source.html
plots:
  - path: "/plots/castor-v21/single-mult-src/g_3_vtn1.apng"
  - path: "/plots/castor-v21/single-mult-src/g_3_vtn4.apng"
  - path: "/plots/castor-v21/single-mult-src/g_3_err_vtn1.apng"
    label: "(a) 18 source energy groups"
  - path: "/plots/castor-v21/single-mult-src/g_3_err_vtn4.apng"
    label: "(b) 44 source energy groups"
---

{%- include prev-next.html -%}

# CASTOR-V/21 multi-source computations

For the given [model](castor-v21.md) of the isolated CASTOR-V/21 cask, six source spactra cases are considered for the gamma type of radiation (see Table).

<style>
.no-zebra tr:nth-child(even) td { background-color: #fff !important; }
.no-zebra td { text-align: center; }
</style>

<div style="display:flex; justify-content:center;">
<table class="no-zebra" style="width:89%; border-collapse:collapse; table-layout:fixed;">
<thead>
<tr>
  <th style="width:20%; text-align:center; padding:6px; border:1px solid #ddd; background:#f5f5f5;">Average Initial Enrichment (%wt.)</th>
  <th style="width:20%; text-align:center; padding:6px; border:1px solid #ddd; background:#f5f5f5;">Average Burnup (GWd/MTU)</th>
  <th style="width:20%; text-align:center; padding:6px; border:1px solid #ddd; background:#f5f5f5;">Cooling Time (months)</th>
  <th style="width:20%; text-align:center; padding:6px; border:1px solid #ddd; background:#f5f5f5;">Spectra Structure</th>
  <th style="width:20%; text-align:center; padding:6px; border:1px solid #ddd; background:#f5f5f5;">Designation</th>
</tr>
</thead>
<tbody>
<tr>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">2.91</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">30.0</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">26</td>
  <td style="padding:6px; border:1px solid #ddd;">18-group</td>
  <td style="padding:6px; border:1px solid #ddd;">V-15</td>
</tr>
<tr>
  <td style="padding:6px; border:1px solid #ddd;">44-group</td>
  <td style="padding:6px; border:1px solid #ddd;">V-15, revised</td>
</tr>
<tr>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">3.11</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">35.7</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">46</td>
  <td style="padding:6px; border:1px solid #ddd;">18-group</td>
  <td style="padding:6px; border:1px solid #ddd;">T-Type</td>
</tr>
<tr>
  <td style="padding:6px; border:1px solid #ddd;">44-group</td>
  <td style="padding:6px; border:1px solid #ddd;">T-Type, revised</td>
</tr>
<tr>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">2.56</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">26.9</td>
  <td rowspan="2" style="padding:6px; border:1px solid #ddd;">172</td>
  <td style="padding:6px; border:1px solid #ddd;">18-group</td>
  <td style="padding:6px; border:1px solid #ddd;">N-Type</td>
</tr>
<tr>
  <td style="padding:6px; border:1px solid #ddd;">44-group</td>
  <td style="padding:6px; border:1px solid #ddd;">N-Type, revised</td>
</tr>
</tbody>
</table>   
</div>

It is seen that the initial enrichment and burn-up are various from case to case, but the strongest parameter here is the cooling time.

 These six cases in total have been completed in a single computation of total running time 9.9 hours using the multi-source Monte Carlo technique [2].

|[![]({{ site.baseurl }}/plots/castor-v21/single-mult-src/spectra-mult.png)]({{ site.baseurl }}/plots/castor-v21/single-mult-src/spectra-mult.png) |
|:--:|
| Figure 1: Gamma source spectra considered in the calculation |

In this calculation, the following techniques are used:
 - Expected-value estimators;
 - Multi-source calculations;
 - Joint location-direction importance sampling from source (for primary gamma only);
 - Energy importance sampling from source (for primary gamma only);
 - Exponential transform;
 - Simplified adaptive splitting.

The primary computational gain is achieved here thanks to the **simplified adaptive splitting**, **exponential transform** (for both gamma), and **multi-source calculation** techniques.

Computed flux functional - ambient equivalent dose H*(10) [1] rates normalized to an emitted source particle.

Below, the obtained results of neutron-gamma and gamma problems calculations are presented (see details in [2]).

{% include plot_grid.html
   plots=page.plots
   cols=2
   caption="Figure: Gamma axial <strong>dose per source particle</strong> and 1σ relative error distributions for the single cask."
%}


{%- include prev-next.html -%}


## References
1. International Commission on Radiological Protection., International Commission on Radiation Units,
and Measurements. Conversion coefficients for use in radiological protection against external radiation.
Annals of the ICRP ; v. 26, no. 3/4. Published for the Commission by Pergamon Press, Oxford ;, 1st
ed. edition, 1996 - 1997.
2. V.G. Mogulian. An approach to radiation shielding evaluations using estimators by expected scoring. 2025. [doi:10.5281/zenodo.16781416](https://doi.org/10.5281/zenodo.16781416).