# ANALYSIS RESULTS OF 2D TRUSS MODEL HT-1

## Model Information 

### Nodes 
 | Node No. || X-Coor.[mm] | Y-Coor.[mm] ||  X-BC  |  Y-BC  ||   Fx [N]   |   Fy [N]   | 
 | -------- || ----------- | ----------- || ------ | ------ || ---------- | ---------- | 
 |        1 ||           0 |           0 ||      0 |      0 ||          0 |          0 | 
 |        2 ||        4000 |           0 ||      1 |      0 ||          0 |          0 | 
 |        3 ||        4000 |        6000 ||      1 |      1 ||     120000 |          0 | 

### Elements 
 | Element No. || Node 1 | Node 2 || Element Type | E-Modulus [N/mm^2] | Section Area [mm^2] | Length [mm] | 
 | ----------- || ------ | ------ || ------------ | ------------------ | ------------------- | ----------- | 
 |           1 ||      1 |      2 ||            1 |             200000 |                2300 |        4000 |
 |           2 ||      2 |      3 ||            1 |             200000 |                2300 |        6000 |
 |           3 ||      1 |      3 ||            1 |             200000 |                2300 |      7211.1 |

### Size of the Equation 
Number of Nd. 	 = 	 3 
Number of El. 	 = 	 3 
Number of DOFs 	 = 	 6 

## Analysis Results 

### Nodal Deformaion 
 | Node No. ||   X0 [mm]   |   Y0 [mm]   ||   X1 [mm]   |   X1 [mm]   | 
 | -------- || ----------- | ----------- || ----------- | ----------- | 
 |        1 ||           0 |           0 ||       6e-07 |       9e-07 | 
 |        2 ||       4e+03 |           0 ||       4e+03 |      -9e-07 | 
 |        3 ||       4e+03 |       6e+03 ||       4e+03 |       6e+03 | 

### Element Forces 
 | Element No. || Axial Forces [N] | 
 | ----------- || ---------------- | 
 |           1 ||                0 | 
 |           2 ||         -1.8e+05 | 
 |           3 ||          2.2e+05 | 

### Supporting Forces 
 | Node No. ||   Rx [N]   |   Ry [N]   | 
 | -------- || ---------- | ---------- | 
 |        1 ||   -1.2e+05 |   -1.8e+05 | 
 |        2 ||          0 |    1.8e+05 | 
 |        3 ||          0 |          0 | 

_________________
 END OF ANALYSIS