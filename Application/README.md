
# Application and Verification - Feature Detection and Matching of the strongest 30 Features

DippoldEJ Satellite Datasets very-high Resolution medium Resolution Satellite Imagery Application AOI Features Detection and Matching <br />

<br />

Overview 
------------------------

Structure: <br />

```mermaid
flowchart LR;

 subgraph n[Data]
        g[(fa:fa-table MS = Multispectral)]
        h[(fa:fa-table PAN = Panchromatic)]
        i[(fa:fa-table Affine Covarians Features)]
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

n-->o
o-->p

```
 <br />
 
Text 
------------------------

Text 
<br />
