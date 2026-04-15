

# Comparison - Area Features of Pleiades NEO

DippoldEJ Satellite Datasets Application Area Features VHR Satellite Imagery Pleiades NEO <br />

[SourcePleiades](https://github.com/DippoldEJ/Satellite-Datasets/tree/main/Pleiades-Neo)

Overview 
------------------------

Structure: <br />

```mermaid
flowchart LR;
%%{init: {
	'themeVariables': { 'fontSize': '20px', 'fontFamily': 'Didot'}
	}
}%%

 subgraph n[Data]
        direction LR
        b[(fa:fa-table Pleiades Neo)]
    end

 subgraph q[Bands Available]
        direction LR
        r[(fa:fa-table Red, Green, Blue)]
        h[(fa:fa-table NIR, Red Edge, Deep Blue)]
    end

 subgraph o[Indices]
        direction LR
        j([NIR based like NDVI])
        c([RGB based like NGRDI])
        m([Red Edge, Deep Blue and others])
    end

subgraph p[Area of Interest]
    a([rural <br /> urban  <br />  misc])
    end

style n color:#f66
style o stroke-width:6px
style o color:#77DD77

style p color:#2798F5
style q color:#FFFF00

n-->o
o-->p
q-->o


```
 <br />
 
The Indices 
------------------------

The comparision (Tran et al., 2022) and the review (Feng et al., 2022) puplished are used to demonstrate the power of area features with Pleiades NEO. <br />

```math 
EVI = G * \frac{NIR - RED}{NIR + C_1 * Red - C_2 * Blue + L}
```

Coefficients:<br />
 Gain Factor: 2.5<br />
 Atmospheric resistance coefficient 1: 6.0<br />
 Atmospheric resistance coefficient 2: 7.5<br />
 Canopy background adjustment: 1<br />


<br />

|No |Acronym |Formula| Bands| Long Form with Legend | Example|
|---|--------|----------|------|--------|--------|
|01| <p align="center">NDVI</p>| <img width="196" height="54" alt="image" src="https://github.com/user-attachments/assets/437685f4-527f-4046-94b0-e20890fb1145" />| NIR, Red| <p align="center"> **Normalized Differential Vegetation Index** </p> <img width="400" height="76" alt="Image" src="https://github.com/user-attachments/assets/f9272c30-9a30-4fc4-9254-fafd28564ba7" />| <img width="101" height="101" alt="Image" src="https://github.com/user-attachments/assets/64f5a061-f6d0-447d-932f-68aca26e5063" />
|02 |<p align="center">NDWI</p> |<img width="221" height="53" alt="image" src="https://github.com/user-attachments/assets/27155268-84d3-4a6e-812f-48dd5258e094" />| NIR, Green| **Normalized Differential Water Index**| Example|
|03| <p align="center">EVI</p> | <img width="408" height="62" alt="image" src="https://github.com/user-attachments/assets/7fb973b5-8116-4230-8bb3-1196d5b62d18" />| NIR, Red Blue L| Enhanced Vegetation Index| Example| 
|04| <p align="center">SAVI</p> | Formula | Bands | Long form | Example|

<br />

References 
------------------------

Feng, H., Tao, H., Li, Z., Yang, G., Zhao, C., 2022. Comparison of UAV RGB Imagery and Hyperspectral Remote-Sensing Data for Monitoring Winter Wheat Growth, Remote Sensing, p. 3811.

Tran, T.V., Reef, R., Zhu, X., 2022. A Review of Spectral Indices for Mangrove Remote Sensing, Remote Sensing, p. 4868.
 
<br />
