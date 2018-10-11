% global variables
global truss_model_name   
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% Create the Output File
fid = fopen([truss_model_name  '_Analysis_Results.md'], 'w+')

%% Cutting Line
n_ul = 20
cutting_line = repmat ('_', 1, n_ul)

%% Print the Head of the File
fprintf (fid, [ '# Analysis Results of Model ' truss_model_name '\n'])

%% Print the Model Information
fprintf (fid, '## Model Information \n')

fprintf (fid, '### Nodes \n')
fprintf (fid, ' | Node No. | X-Coor.[mm] | Y-Coor.[mm] |  X-BC  |  Y-BC  |   Fx [N]   |   Fy [N]   | \n' )
fprintf (fid, ' | -------- | ----------- | ----------- | ------ | ------ | ---------- | ---------- | \n' )
for i = 1 : size(node,1)
    fprintf (fid, ' | %8d | %11g | %11g | %6d | %6d | %10g | %10g | \n', i , node(i,1), node(i,2), node(i,3), node(i,4), node(i,5), node(i,6) )
end

fprintf (fid, '### Elements \n')
fprintf (fid, ' | Element No. | Node 1 | Node 2 | Element Type | E-Modulus [N/mm^2] | Section Area [mm^2] | Length [mm] | \n' )
fprintf (fid, ' | ----------- | ------ | ------ | ------------ | ------------------ | ------------------- | ----------- | \n' )
for i = 1 : size(el_cfg,1)
    fprintf (fid, ' | %11d | %6d | %6d | %12d | %18g | %19g | %11g |\n', i, el_cfg(i,1), el_cfg(i,2), el_cfg(i,3), el_cfg(i,4), el_cfg(i,5), el_cfg(i,6) ) 
end

fprintf (fid, '### Size of the Matrix \n')
fprintf (fid, 'Number of Nd. \t = \t %d \n', size(node,1))
fprintf (fid, 'Number of El. \t = \t %d \n', size(el_cfg,1))
fprintf (fid, 'Number of DOFs \t = \t %d \n', n_dof_tot)

