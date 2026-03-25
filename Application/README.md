
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
        h[(fa:fa-table PAN = Panchromatic)]
        g[(fa:fa-table MS = Multispectral)]
		s[(fa:fa-table In-situ)]
    end

 subgraph q[Testing and Verficiation]
        direction LR
        r[(fa:fa-table Affine Covarians Features)]
    end

 subgraph o[Feature Detector Operator]
        j([SURF])
        k([FAST])
        l([Canny])
        m([Accumulative])
    end

subgraph p[Area of Interest]
    a[fa:fa-code Rural]
    b[fa:fa-code Urban]
    c[fa:fa-code Industrial]
    d[fa:fa-code Open Pit Mine]
    e[fa:fa-code Waterstream and Streets]
    f[fa:fa-code Open Airbase]
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
