

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

The comparision (Tran et al., 2022) and the review (Feng et al., 2022) puplished are used to demonstrate the power of area features and the differences between Pleiades and Pleiades NEO. 
 
<br />

|No |Acronym |long form |Bands |Formula | Range with Legend|
|---|--------|----------|------|--------|--------|
|01| NDVI| Normalized Differential Vegetation Index| Red, NIR| NDVI = $\frac{NIR - RED}{NIR + RED}$ |<img width="233" height="160" alt="Image" src="https://github.com/user-attachments/assets/af961218-2d34-4be1-b277-0205ed4e564c" /> |


<br />

References 
------------------------

Feng, H., Tao, H., Li, Z., Yang, G., Zhao, C., 2022. Comparison of UAV RGB Imagery and Hyperspectral Remote-Sensing Data for Monitoring Winter Wheat Growth, Remote Sensing, p. 3811.

Tran, T.V., Reef, R., Zhu, X., 2022. A Review of Spectral Indices for Mangrove Remote Sensing, Remote Sensing, p. 4868.
 
<br />
