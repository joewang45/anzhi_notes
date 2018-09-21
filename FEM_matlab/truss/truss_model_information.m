%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: truss_model_information              %
% works with GLOBAL variables                    %
% print the model information of the truss model %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% print the title
% frpintf: write something in the file numbered by "file id" 
% \n in string for "new line"
fprintf(fid, '------------------------------------------------------')
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, '******* PRINTING MODEL DATA **************\n\n\n')

%% list the basic model information
% %g indicates a compact scientific numbering system
% \t for "table"
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Number of nodes: \t %g\n', n_nd)
fprintf(fid, 'Number of elements: \t %g \n', n_el)
fprintf(fid, 'Number of nodes per element: \t %g \n \n', n_nd_a_el)

fprintf(fid, 'Number of dof per node: \t %g \n', n_dof_a_nd)
fprintf(fid, 'Number of dof per element: \t %g \n \n \n', n_dof_a_el)
fprintf(fid, 'Total number of dof in system: \t %d', n_dof_tot)

%% list the node coordinates
% %d for integer
% %07.2f: 0 for 'using 0s to fill the field, 7 for fieldwidth, .2 for
% precision/accuracy , f for float
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Node No. \t X-Coordinate \t Y-Coordiante \n')
for i = 1 : n_nd
    fprintf(fid, '%d \t %07.2f \t %07.2f \n', i, nd_coor(i,1), nd_coor(i,2))
end
fprintf(fid, '\n')

%% list the element configuration
fprintf(fid, 'Element No. \t Node 1 \t Node 2 \n')
for i = 1 : n_el
    fprintf(fid, '%d \t %d \t %d \n', i, el_cfg(i,1), el_cfg(i,2))
end
fprintf(fid, '\n')

% list material properties given to element
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Element No. \t E-Modulus E \t Area A \n')
for i = 1 : n_el
    fprintf(fid, ' %d \t %g \t %g \n', i, prop(i,1), prop(i,2))
end
fprintf(fid, '\n')

%% list nodal boundary conditions
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Node No. \t U \t V \n')
for i = 1 : n_nd 
    fprintf(fid, '%d \t %g \t %g \n', i, nd_bc(i,1), nd_bc(i,2))
end
fprintf(fid, '\n')

%% list nodal loading conditions
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Node No. \t Fx \t Fy \n')
for i = 1 : n_nd
    fprintf(fid, '%d \t %07.2f \t %07.2f \n', i, nd_f(i,1), nd_f(i,2))
end
fprintf(fid, '\n')

fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'END OF MODEL INFORMATION')
fprintf(fid, '------------------------------------------------------ \n')

