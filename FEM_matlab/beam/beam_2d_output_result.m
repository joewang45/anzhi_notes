% global variables
global truss_model_name   
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% Create the Output File
fid = fopen([truss_model_name  '_Analysis_Results.md'], 'w+')

%% Cutting Line
n_ul = 17
cutting_line = repmat ('_', 1, n_ul)

%% Print the Head of the File
fprintf (fid, [ '# ANALYSIS RESULTS OF 2D TRUSS MODEL ' truss_model_name '\n'])

%% Print the Model Information
fprintf (fid, '\n## Model Information \n')

fprintf (fid, '\n### Nodes \n')
fprintf (fid, ' | Node No. || X-Coor.[mm] | Y-Coor.[mm] ||  X-BC  |  Y-BC  ||   Fx [N]   |   Fy [N]   | \n' )
fprintf (fid, ' | -------- || ----------- | ----------- || ------ | ------ || ---------- | ---------- | \n' )
for i = 1 : size(node,1)
    fprintf (fid, ' | %8d || %11g | %11g || %6d | %6d || %10g | %10g | \n', i , node(i,1), node(i,2), node(i,3), node(i,4), node(i,5), node(i,6) )
end

fprintf (fid, '\n### Elements \n')
fprintf (fid, ' | Element No. || Node 1 | Node 2 || Element Type | E-Modulus [N/mm^2] | Section Area [mm^2] | Length [mm] | \n' )
fprintf (fid, ' | ----------- || ------ | ------ || ------------ | ------------------ | ------------------- | ----------- | \n' )
for i = 1 : size(el_cfg,1)
    fprintf (fid, ' | %11d || %6d | %6d || %12d | %18g | %19g | %11g |\n', i, el_cfg(i,1), el_cfg(i,2), el_cfg(i,3), el_cfg(i,4), el_cfg(i,5), el_cfg(i,6) ) 
end

fprintf (fid, '\n### Size of the Equation \n')
fprintf (fid, 'Number of Nd. \t = \t %d \n', size(node,1))
fprintf (fid, 'Number of El. \t = \t %d \n', size(el_cfg,1))
fprintf (fid, 'Number of DOFs \t = \t %d \n', n_dof_tot)

%% Print the Analysis Results
fprintf (fid, '\n## Analysis Results \n')

fprintf (fid, '\n### Nodal Deformaion \n')
fprintf (fid, ' | Node No. ||   X0 [mm]   |   Y0 [mm]   ||   X1 [mm]   |   X1 [mm]   | \n' )
fprintf (fid, ' | -------- || ----------- | ----------- || ----------- | ----------- | \n' )
for i = 1 : size(node,1)
    fprintf (fid, ' | %8d || %11.2g | %11.2g || %11.2g | %11.2g | \n', i, node(i,1), node(i,2), node(i,10), node(i,11) )
end

fprintf (fid, '\n### Element Forces \n')
fprintf (fid, ' | Element No. || Axial Forces [N] | \n')
fprintf (fid, ' | ----------- || ---------------- | \n')
for i = 1 : size(el_cfg,1)
    fprintf (fid, ' | %11d || %16.2g | \n', i, el_cfg(i,9))
end

fprintf (fid, '\n### Supporting Forces \n')
fprintf (fid, ' | Node No. ||   Rx [N]   |   Ry [N]   | \n')
fprintf (fid, ' | -------- || ---------- | ---------- | \n')
for i = 1 : size(node,1)
    fprintf (fid, ' | %8d || %10.2g | %10.2g | \n', i, node(i,8), node(i,9))
end

%% END
fprintf (fid, ['\n' cutting_line ])
fprintf (fid, '\n END OF ANALYSIS')
