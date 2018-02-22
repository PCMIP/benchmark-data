Current and projected climate data for North America (4-km resolution)

Citation for dataset
--------------------
"Stralberg, D., S. M. Matsuoka, A. Hamann, E. M. Bayne, P. Sólymos, F. K. A. Schmiegelow, X. Wang, S. G. Cumming, and S. J. Song. manuscript in review. Projecting boreal bird responses to climate change: the signal exceeds the noise."

Coordinate Systems
------------------
"X,Y:"
Projection: Lambert Conformal Conic
False Easting: 0.00000000
False Northing: 0.00000000
Central Meridian: -95.00000000
Standard Parallel 1: 49.00000000
Standard Parallel 2: 77.00000000
Latitude Of Origin: 0.00000000
Linear Unit:  Meter
Datum: D WGS 1984

"LAT, LONG:"
Geographic Coordinate System: GCS WGS 1984
Datum:  D WGS 1984
Prime Meridian:  Greenwich
Angular Unit:  Degree

ELEV:
Elevation in meters above sea level

Climate Variables
-----------------
"NOTE: IN ASCII FILES, TEMPERATURE VARIABLES ARE GIVEN IN UNITS OF DEGREE CELSIUS * 10"

Monthly variables:
Tmin: minimum temperature for a given month (°C)
Tmax: maximum temperature for a given month (°C)
PPT:  total precipitation for a given month (mm)

Bioclimatic variables:
MAT:  mean annual temperature (°C)
MCMT: mean temperature of the coldest month (°C)
MWMT: mean temperature of the warmest month (°C)
"TD:   difference between MCMT and MWMT, as a measure of continentality (°C)"""
MAP:  mean annual precipitation (mm)
MSP:  mean summer (May to Sep) precipitation (mm)

DD0: degree-days below 0°C (chilling degree days)
DD5: degree-days above 5°C (growing degree days)
NFFD: the number of frost-free days
FFP: length of the frost-free period
PAS:  precipitation as snow (mm)
EMT:  extreme minimum temperature over 30 years
PETpm: Potential Evapotranspiration (Hogg 1997 modified Penmnan-Monteith method)
CMDpm: Climatic moisture deficit (Hogg 1997 modified Penmnan-Monteith method)
CMIpm:  Climatic moisture index (Hogg 1997 modified Penmnan-Monteith method)
CMIJJApm: Summer (Jun to Aug) climate moisture index(Hogg 1997 modified Penmnan-Monteith method)

Tave_wt: winter (Dec to Feb) mean temperature (°C)
Tave_sm: summer (Jun to Aug) mean temperature (°C)
PPT_wt:  winter (Dec to Feb) precipitation (mm)
PPT_sm:  summer (Jun to Aug) precipitation (mm)

Downscaling Methods
-------------------
"General circulation model (GCM) projections were obtained from the Intergovernmental Panel on Climate Change (IPCC) 4th Assessment Report (AR4) as part of the World Climate Research Programme’s Coupled Model Intercomparison Project phase 3 (WCRP CMIP) multi-model dataset (Meehl et al. 2007). Historical projections were taken from the 20th century simulation, which were generally initiated between 1850 and 1880 and run through 1999 or 2000. Future projections were taken from three emissions scenarios--SRESA2 (high), SRESA1B (intermediate), and SRESB2 (low)--run from 2000 or 2001 through at least 2099 or 2100. Monthly temperature (mean + minimum and maximum if available) and total precipitation projections were averaged across multiple model runs (if available) for the following thirty year periods: 1961-1990 (baseline), 2011-2040, 2041-2070, and 2071-2100. A total of 24 GCM simulations were used, 17 of which were run for all three future scenarios. Grid cell resolution ranged from 1.125° to 5°. Temperature values were converted to degrees Celsius and precipitation values were converted to mm/day. Future climate normals (30-year averages) were compared with GCM-projected baseline normals to generate anomalies for each future time period and emissions scenario. Precipitation anomalies were capped at 500%. Anomalies were then clipped to North America and downscaled to a 0.5-degree resolution using a thin-plate spline interpolation. Downscaled anomalies were added to 4-km baseline data for North America based on the Parameter-elevation Regressions on Independent Slopes Model (PRISM) for the 1961-1990 normal period (Daly et al. 2008). For the majority of GCMs that did not have future projections for minimum and maximum temperature (17 of 24), average temperature anomalies were used in place of minimum/maximum temperature anomalies to calculate future minimum/maximum temperature projections. Mean monthly projections for each time period where then converted to a set of derived bioclimatic variables according to Wang et al. (2012) and Hamann et al. (2013). Finally, projections for each variable and each time period (including current baseline) were converted to separate ascii raster layers for GIS analysis and mapping purposes. All climate data manipulations were performed using the program R, version 2.12.1 (R Development Core Team 2010). "

References
----------
"Daly, C., M. Halbleib, J. I. Smith, W. P. Gibson, M. K. Doggett, G. H. Taylor, J. Curtis, and P. P. Pasteris. 2008. Physiographically sensitive mapping of climatological temperature and precipitation across the conterminous United States. International Journal of Climatology 28:2031-2064."
"Hamann, A., T. Wang, D. L. Spittlehouse, T. Q. Murdock. 2013. A comprehensive, high-resolution  database of historical and projected climate surfaces for western North America. Bulletin of the American Meteorological Society, 94(9): 1307-1309."
"Hijmans, R. J., S. E. Cameron, J. L. Parra, P. G. Jones, and A. Jarvis. 2005. Very high resolution interpolated climate surfaces for global land areas. International Journal of Climatology 25:1965–1978."
"Hogg, E. H. 1997. Temporal scaling of moisture and the forest-grassland boundary in western Canada. Agricultural and Forest Meteorology 84:115-122."
"Meehl, G. A., C. Covey, T. Delworth, M. Latif, B. McAvaney, J. F. B. Mitchell, R. J. Stouffer, and K. E. Taylor. 2007. The WCRP CMIP3 multi-model dataset: a new era in climate change research. Bulletin of the American Meteorological Society 88:1383-1394."
"Wang, T., A. Hamann, D. L. Spittlehouse, and T. Q. Murdock. 2012. ClimateWNA—high-resolution spatial climate data for western North America. Journal of Applied Meteorology and Climatology 51:16-29."
