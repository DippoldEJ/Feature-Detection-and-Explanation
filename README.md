Feature Detection and Explanation
---------------------------------------------------------------------
---------------------------------------------------------------------

DippoldEJ Satellite Datasets very-high Resolution medium Resolution Satellite Imagery Application AOI Features Corners Edges Lines Points <br />
<br />

 Multispectral (MS) and Panchromatic (PAN) Area of Interest
--------------------
Some Areas are in terms of ther intensity adjusted (Matlab, Imadjust). THis can come in handy if the image or band appears too dark for the visual inspection. So That, this cases are mark with an capitilized A.  


Sample AOI

| Img1 | Img2 | Img3 |  Img4 | 
|-------| -------| -------| -------| 
| <p align="center"> CIR Rural <br /> </p> <p align="center"> <img width="150" height="150" alt="Image" src="https://github.com/user-attachments/assets/a7923edb-f4d9-4dc1-b620-c8f74847b0dc" />  </p>  | <p align="center"> A PAN Rural <br /> </p> <p align="center"> <img width="201" height="201" alt="Image" src="https://github.com/user-attachments/assets/85bb0932-5c60-42a9-8c0a-e57d3bd10cc8" /> </p>  |<p align="center"> A RGB Urban <br /> </p>  </p> <p align="center"> <img width="801" height="401" alt="Image" src="https://github.com/user-attachments/assets/347df56c-0046-491f-b528-86d265c8f348"  /> </p> | <p align="center"> A PAN Urban <br /> </p> <p align="center"> <img width="301" height="801" alt="Image" src="https://github.com/user-attachments/assets/042f6b45-be8e-4236-8ba3-ad9a3a54e180" /> |
| <p align="center">  **Img5** </p>| <p align="center">  **Img6** </p> | <p align="center">  **Img7** </p> |  <p align="center">  **Img8** </p> | 
|<p align="center"> A RGB Industrial <br /> </p> <img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/3d054f5a-2959-45af-a464-d786384629ba" /> | <p align="center"> A PAN Industrial <br /> </p> <p align="center"> <img width="400" height="1001" alt="Image" src="https://github.com/user-attachments/assets/49e0e5b6-056e-47b8-9a4d-08c152baebea" />  </p> | <p align="center"> CIR Open Pit Mine <br /> </p> <img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/9793b90d-eb33-4a12-b7e3-37ad61e2d061" /> | <p align="center"> PAN Open Pit Mine <br /> </p> <p align="center"> <img width="1000" height="400" alt="Image" src="https://github.com/user-attachments/assets/473db01a-d605-4e82-9d79-84369d688471" />  </p> |
| <p align="center">  **Img9** </p>| <p align="center">  **Img10** </p> | <p align="center">  **Img11** </p> |  <p align="center">  **Img12** </p> | 
| A RGB Waterstream and Streets  <p align="center"> <br /> <img width="400" height="400" alt="Image" src="https://github.com/user-attachments/assets/61fd179c-4f0e-4e56-9376-bcae0eb81986" /> </p> | <p align="center"> A PAN Waterstream and Streets  <br /> </p> <p align="center"> <img width="500" height="400" alt="Image" src="https://github.com/user-attachments/assets/ef4d731e-8930-4c9f-bb4e-e2fbdbe3597c" />  </p>  | <p align="center"> A RGB Airbase <br /> </p> <img width="200" height="200" alt="Image" src="https://github.com/user-attachments/assets/ec284537-4203-46e4-9a71-1b057cb35222" />|  <p align="center"> A PAN Airbase <br /> </p> <p align="center"> <img width="700" height="1000" alt="Image" src="https://github.com/user-attachments/assets/e6fc5c66-3b10-413c-ac71-b0c35581228b" />  </p>  |

Location of the AOIs in the MS and PAN Imagery
-------------------------
The location of the AOI shown in the RGB true color image. <br />

<img width="760" height="766" alt="Image" src="https://github.com/user-attachments/assets/2ab17605-c5ed-4951-8721-154e1d86a4b4" /> <br />
<br />

Pansharpening
-------------------------
The key idea of Pansharepning is the combination of the low resolution 3D data like RGB or CIR and fuse that with the high resolution oanchromatic band. Gaining high resolution while maintaining color information. <br />
Some areas of green vegetation seems to be effected by noise (discoloration). That is interesting. This can be caused by the image adjustment (Contrast Enhancment) or by the Pansharpening or the vegetation itself is different. <br />

* RGB 1001x701x3 <br />
* PAN 4001x2801 <br />
* Sharped 4001x2801x3 <br />

<img width="1267" height="611" alt="Image" src="https://github.com/user-attachments/assets/aed30908-0ed0-4460-b8f3-1e83884e6ce0" />

<br />

Key Idea
-------------------------
Interesting Pattern in the visual analysis of optical data are features, corners, lines and points.  <br />
Selected properties overview of Features, such as: corners, edges, lines as points summarized down below: <br />
**All feautres consists of points**. For instance a lin is just a infinite amount of points. <br />
Two cases are seperated. Case 1 Gray and Case to Single. In adition, Strong and Fast are the strongest 30 points displayed only. <br />
Case 1 consits of thr RGB turn ito a gray image. <br /> 
The Case 2 processing the RGB bands, red, green and blue, seperatly from each other. <br />

| Figure SURF Features |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
|-------| ------------| 
|<img width="1920" height="971" alt="Image" src="https://github.com/user-attachments/assets/2aa06c8b-69df-4300-8730-8736a706c0aa" />| * RGB to gray  <br /> * 123'330 pt <br /> <br /> - RGB single processed <br /> - red: 122'137 pt <br /> - green: 123'925 pt <br /> - blue: 120'840 pt | 
| <p align="center"> **Figure FAST Corners** |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Description**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
| <img width="1920" height="971" alt="Image" src="https://github.com/user-attachments/assets/27bd7da3-8b1d-4804-b7c3-50831d4e9b59" />| * RGB to gray  <br /> * 41 pt <br /> <br /> - RGB single processed <br /> - red: 665 pt <br /> - green: 562 pt <br /> - blue: 718 pt | 
| <p align="center"> **Figure Canny Edges and Lines** |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Description**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
| <img width="1920" height="971" alt="Image" src="https://github.com/user-attachments/assets/9f3a3650-2e56-4eb9-8e4f-f39941f1cd53" />| * RGB to gray  <br /> *  991'530 pt <br /> <br /> - RGB single processed <br /> - red: 1'160'078  pt <br /> - green: 1'246'100 pt <br /> - blue:  1'090'268 pt <br /> - Total:  1'806'442 pt| 
<br />


Accumulation
-------------------------

The accmullation consits of three steps. Firstly, Sum up all points with repect to their location location. <br />
Secondly, remove reduant points, like double or even triple points at the sam location. <br />
Finally, run the locations through a feature detector of choice to provide for a ll points the same probperties calcualted. <br />
For clarification: it is Feature Detector Operator (FDO) which consits of detector and descriptor.  <br />

| Figure ACC Features Gray | Figure ACC Features Single |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
|-------| ------------|  ------------| 
| img | img |  text | 

Application and Verification 
-------------------------

Text<br />
<br />

References
------------------------

Text <br />
