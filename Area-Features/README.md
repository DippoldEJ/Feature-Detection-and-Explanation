

# Comparison - Area Features of Pleiades VS. Pleiades NEO

DippoldEJ Satellite Datasets Application Area Features <br />

<br />

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
        a([RGB based like Text])
        m([Red Edge, Deep Blue and others])
    end

subgraph p[Area of Interest]
    a([rural <br /> urban  <br />  misc])
    end

style n color:#f66
style o stroke-width:6px
style o color:#028A0F
style p color:#2798F5
style q color:#FFFF00

n-->o
o-->p
q-->o


h-->b
b-->h

```
 <br />
 
Text 
------------------------

Text 
<br />
