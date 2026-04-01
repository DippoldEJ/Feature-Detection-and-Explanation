

# Comparison - Area Features of Pleiades VS. Pleiades NEO

DippoldEJ Satellite Datasets Application Area Features <br />

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
        h[(fa:fa-table Pleiades)]
        b[(fa:fa-table Pleiades Neo)]
    end

 subgraph q[Testing and Verification]
        direction LR
        r[(fa:fa-table Benchmark)]
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


h-->b
b-->h

```
 <br />
 
The Indices 
------------------------

Text 
<br />
|No |Acronym |long form | Bands| Formula| 
|---|---|---|---|---|
|01| NDVI| Normalized Differential VEgetation Index| Red, NIR| NDVI = |


References 
------------------------

Hyperspectral Remote-Sensing Data for Monitoring Winter Wheat Growth, Remote Sensing, p. 3811.

Tran, T.V., Reef, R., Zhu, X., 2022. A Review of Spectral Indices for Mangrove Remote Sensing, Remote Sensing, p. 4868.
<img width="468" height="73" alt="image" src="https://github.com/user-attachments/assets/3a2f49b2-784f-4b3e-8ed8-10821e448ceb" />
 
<br />
