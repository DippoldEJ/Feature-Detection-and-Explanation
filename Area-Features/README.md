

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
 
The Indices  - Vegetation
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

|No |Acronym |Formula| Long Form with Legend | Example|
|---|--------|----------|--------|--------|
|01| <p align="center">NDVI</p>| <img width="196" height="54" alt="image" src="https://github.com/user-attachments/assets/437685f4-527f-4046-94b0-e20890fb1145" />| <p align="center"> **Normalized Differential Vegetation Index** </p> <img width="400" height="76" alt="Image" src="https://github.com/user-attachments/assets/f9272c30-9a30-4fc4-9254-fafd28564ba7" />| <img width="101" height="101" alt="Image" src="https://github.com/user-attachments/assets/64f5a061-f6d0-447d-932f-68aca26e5063" />
|03| <p align="center">NDRE</p> | <img width="209" height="45" alt="image" src="https://github.com/user-attachments/assets/a5d1e1db-f2ee-4c64-85b0-ae603057a91c" />| Long form | Example|
|04| <p align="center">EVI</p> | <img width="408" height="62" alt="image" src="https://github.com/user-attachments/assets/7fb973b5-8116-4230-8bb3-1196d5b62d18" />| Enhanced Vegetation Index| Example| 
|05| <p align="center">EVI 2</p> | <img width="306" height="57" alt="image" src="https://github.com/user-attachments/assets/4a269d17-03c2-40c5-9470-ca23e611a9b0" />|  Enhanced Vegetation Index 2 | Example|
|06| <p align="center">CVI</p> | <img width="151" height="43" alt="image" src="https://github.com/user-attachments/assets/b6632b24-9f8a-4dfe-8d04-3762f488c892" />|  Chlorophyll Vegetation Index | Example|
|07| <p align="center">CI-RedEdge</p> | <img width="241" height="46" alt="image" src="https://github.com/user-attachments/assets/26994b03-1456-4589-b9f4-be0908478c78" />|   Long form | Example|
<br />

References 
------------------------

Feng, H., Tao, H., Li, Z., Yang, G., Zhao, C., 2022. Comparison of UAV RGB Imagery and Hyperspectral Remote-Sensing Data for Monitoring Winter Wheat Growth, Remote Sensing, p. 3811.

Tran, T.V., Reef, R., Zhu, X., 2022. A Review of Spectral Indices for Mangrove Remote Sensing, Remote Sensing, p. 4868.
 
<br />
