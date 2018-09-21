%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: truss_analysis_results               %
% works with GLOBAL variables                    %
% prints the analysis results of the truss model %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% print the title
fprintf(fid, '------------------------------------------------------')
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, '******* PRINTING ANALYSIS RESULTS **************\n\n\n')

%% print force vector in the global function
fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'Force vector in the global function \n')
fprintf(fid, '%g \n', F_gl)

%% print displacement vector in the global function
fprintf(fid, 'Displacement vector in the global function \n')
fprintf(fid, '%g \n', U_gl)

%% print nodal displacement
fprintf(fid, '------------------------------------------------------ \n') 
fprintf(fid, 'Node No. \t Ux \t Uy \n')
for i = 1 : n_nd 
    fprintf(fid, '%d \t %8.5f \t %8.5f \n', i, nd_U(i,1), nd_U(i,2))
end
fprintf(fid, '\n')

%% print element internal forces
fprintf(fid, '------------------------------------------------------ \n') 
fprintf(fid, 'Element No. \t Internal Force \n')
for i = 1 : n_el
    fprintf(fid, '%d \t %9.2f \n', i, el_F(i))
end
fprintf(fid, '\n')

fprintf(fid, '------------------------------------------------------ \n')
fprintf(fid, 'END OF MODEL INFORMATION')
fprintf(fid, '------------------------------------------------------ \n')