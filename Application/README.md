
# Application and Verification - Feature Detection and Matching of the strongest 30 Features

DippoldEJ Satellite Datasets very-high Resolution medium Resolution Satellite Imagery Application AOI Features Detection and Matching <br />

<br />

Overview 
------------------------

Structure: <br />

```mermaid
flowchart TD;
%%{init: {
	'themeVariables': { 'fontSize': '20px', 'fontFamily': 'Didot'}
	}
}%%

 subgraph n[Data]
        direction LR
        h[(fa:fa-table Pleiades)]
		s[(fa:fa-table In-situ)]
    end

 subgraph q[Testing and Verficiation]
        direction LR
        r[(fa:fa-table Affine Covarians Features)]
    end

 subgraph o[Feature Detector Operator - FDO]
        direction LR
        j([Single FDO <br /> Edge Detector])
        m([Accumulative])
    end

subgraph p[Area of Interest]
    a([rural])
    b([urban])
    c([misc])
    end

style n color:#f66
style o stroke-width:6px
style o color:#028A0F
style p color:#2798F5

n-->o
o-->p
n-->q

```
 <br />
 
Text 
------------------------

Text 
<br />
