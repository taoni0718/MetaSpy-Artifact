# VRSnoop
Anonymous Artifact of VRSnoop (MobiCom'24 Submission)


### Appendix A: Full list of the energy-based features (time- and frequency-domain) of the harvested RF energy
|    **Time-domain (Abbr.)**    |                                                                                                       **Description**                                                                                                       |
|:-----------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|          Mean (mean)          |                                                                                           The average value of harvested voltages.                                                                                          |
|         Variance (var)        |                                                                                        Measures the variation of harvested voltages.                                                                                        |
|          Median (med)         |                                                                                           The median value of harvested voltages.                                                                                           |
|         Maximum (max)         |                                                                                           The maximum value of harvested voltages                                                                                           |
|         Minimum (min)         |                                                                                           The minimum value of harvested voltages.                                                                                          |
|         Range (range)         |                                                                                       The difference of maximum and minimum voltages.                                                                                       |
|     Root mean square (RMS)    |                                                                                     Measures the effective energy of harvested voltages.                                                                                    |
|      Interquartile (IQR)      |                                                                                                 The difference of Q3 and Q1.                                                                                                |
| Coefficient of variation (CV) |                                                                          The ratio of the Standard Deviation and Mean, where $CV=\frac{std}{mean}$.                                                                         |
| Mean absolute deviation (MAD) |                                                                        Measures the asymmetry and peakness of harvested voltage values distribution.                                                                        |
|        Skewness (skew)        |                                                                        Measures the asymmetry and peakness of harvested voltage values distribution.                                                                        |
|        Kurtosis (kurt)        |                                                                        Measures the asymmetry and peakness of harvested voltage values distribution.                                                                        |
|       Shape factor (SF)       |                                                                            $SF=\frac{s_{rms}}{\frac{1}{N}\sum{\left \|s_{i}  \right \|}}$                                                                           |
|     Impulsive factor (IF)     |                                                                           $IF=\frac{s_{peak}}{\frac{1}{N}\sum{\left \|s_{i}  \right \|}}$                                                                           |
|       Crest factor (CF)       |                                                                               $CF=\frac{s_{peak}}{\sqrt{\frac{1}{N}\sum{s^{2}_{i}}}}$                                                                               |
|  **Frequency-domain (Abbr.)** |                                                                                                       **Description**                                                                                                       |
|         Mean (FDMean)         |                                                                                  The average value of the magnitude of the FFT coefficient.                                                                                 |
|       Entropy (entropy)       | Measures the spectral power distribution of the harvested voltage signal, where the entropy is $entropy=-\sum{P_{n_{i}}log_{2}(P_{n_{i}})}$ and $P_{n_{i}}$ represents the normalized magnitude of FFT coefficient. |


### Appendix B-1:  Full list of 50 Oculus apps in evaluation.
|   #   |          App         |       Category      |     Wi-Fi    |   Mode   |   User   | # Ratings |
|:-----:|:--------------------:|:-------------------:|:------------:|:--------:|:--------:|:---------:|
|  _A1_ |    Population: One   |        Games        | $\checkmark$ |   Both   |   Both   |   13387   |
|  _A2_ |         FitXR        |   Health & Fitness  | $\checkmark$ |   Both   |   Both   |    8279   |
|  _A3_ |      Gun Raiders     |        Games        | $\checkmark$ |   Both   | Multiple |    4556   |
|  _A4_ | Epic Roller Coasters |        Games        | $\checkmark$ |   Both   |   Both   |    3495   |
|  _A5_ |         Bait         |        Games        | $\checkmark$ |   Both   |  Single  |    2724   |
|  _A6_ |      YouTube VR      |    Entertainment    | $\checkmark$ |   Both   |  Single  |    2550   |
|  _A7_ |        Blaston       |        Games        | $\checkmark$ | Standing |   Both   |    2514   |
|  _A8_ |         TRIPP        |      Relaxation     | $\checkmark$ |  Sitting |  Single  |    2436   |
|  _A9_ |  Meta Quest Browser  |     Productivity    | $\checkmark$ |   Both   |  Single  |    2308   |
| _A10_ |        Netflix       |  Media & Streaming  | $\checkmark$ |  Sitting |  Single  |    1979   |
| _A11_ |    Gods of Gravity   |        Games        | $\checkmark$ |   Both   |   Both   |    1156   |
| _A12_ |   Cards & Tankards   |        Games        | $\checkmark$ |   Both   | Multiple |    1070   |
| _A13_ |    Gravity Sketch    | Creativity & Design | $\checkmark$ |   Both   |  Single  |    1031   |
| _A14_ |      Multiverse      |        Social       | $\checkmark$ |   Both   |   Both   |    949    |
| _A15_ |       Half+Half      |        Games        | $\checkmark$ | Standing | Multiple |    847    |
| _A16_ |        HOLOFIT       |   Health & Fitness  | $\checkmark$ |   Both   |   Both   |    840    |
| _A17_ |    Meta Quest Move   |       Utility       | $\checkmark$ |   Both   |  Single  |    805    |
| _A18_ |         VZFit        |        Sports       | $\checkmark$ | Standing |   Both   |    601    |
| _A19_ |       Ultimechs      |        Games        | $\checkmark$ |   Both   |   Both   |    591    |
| _A20_ |        Liminal       |      Lifestyle      | $\checkmark$ |   Both   |  Single  |    543    |
| _A21_ |        Spatial       |  Social, Utilities  | $\checkmark$ |   Both   |   Both   |    521    |
| _A22_ |      Neverboard      |        Games        | $\checkmark$ |   Both   | Multiple |    476    |
| _A23_ |        Alcove        |        Social       | $\checkmark$ |   Both   |   Both   |    458    |
| _A24_ |        ForeVR        |        Games        | $\checkmark$ |   Both   |   Both   |    392    |
| _A25_ |        Maloka        |      Lifestyle      | $\checkmark$ |   Both   |  Single  |    390    |
| _A26_ |      Sphere Toon     |  Media & Streaming  | $\checkmark$ |   Both   |  Single  |    266    |
| _A27_ |         Hoame        |   Health & Fitness  | $\checkmark$ |  Sitting |  Single  |    189    |
| _A28_ |        MLB VR        |  Media & Streaming  | $\checkmark$ |   Both   |  Single  |    186    |
| _A29_ |         Noda         |     Productivity    | $\checkmark$ |   Both   | Multiple |    166    |
| _A30_ |       Instagram      |        Social       | $\checkmark$ |   Both   |  Single  |    155    |
| _A31_ |         vTime        |        Social       | $\checkmark$ |  Sitting |   Both   |    140    |
| _A32_ |        Immerse       |      Lifestyle      | $\checkmark$ |   Both   | Multiple |    120    |
| _A33_ |      VR Workout      |   Health & Fitness  | $\checkmark$ | Standing |   Both   |    104    |
| _A34_ |       Facebook       |        Social       | $\checkmark$ |   Both   |  Single  |    103    |
| _A35_ |         REMIO        |     Productivity    | $\checkmark$ |   Both   | Multiple |     87    |
| _A36_ |       MeetinVR       |        Social       | $\checkmark$ |   Both   | Multiple |     78    |
| _A37_ |    Flipside Studio   |     Productivity    | $\checkmark$ |   Both   |   Both   |     72    |
| _A38_ |      Prisms MATH     |        Social       | $\checkmark$ |   Both   |   Both   |     64    |
| _A39_ |          Zoe         |        Social       | $\checkmark$ |   Both   |   Both   |     60    |
| _A40_ |        Arthur        |        Social       | $\checkmark$ |   Both   |   Both   |     59    |
| _A41_ |     VirtualSpeech    |     Productivity    | $\checkmark$ |   Both   |   Both   |     41    |
| _A42_ |       Pluto TV       |  Media & Streaming  | $\checkmark$ |   Both   |  Single  |     39    |
| _A43_ |       Messenger      |       Utility       | $\checkmark$ |   Both   |  Single  |     21    |
| _A44_ |      Smartsheet      |     Productivity    | $\checkmark$ |   Both   |  Single  |     19    |
| _A45_ |        Nanome        |     Productivity    | $\checkmark$ |   Both   |   Both   |     14    |
| _A46_ |        Resolve       |     Productivity    | $\checkmark$ |   Both   |   Both   |     11    |
| _A47_ |       Softspace      |     Productivity    | $\checkmark$ |   Both   |  Single  |     8     |
| _A48_ |      Monday.com      |     Productivity    | $\checkmark$ |   Both   |  Single  |     5     |
| _A49_ |       LastPass       |       Utility       | $\checkmark$ |   Both   |  Single  |     5     |
| _A50_ |         STARZ        |  Media & Streaming  | $\checkmark$ |  Sitting |  Single  |     2     |
