%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN PROGRAM: truss_main.m                   %
% linear elastic analysis of a truss structure %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% initializing
% clear screen 
clc 
% clear variables in memory
clear

%% define global variables
global n_nd n_el n_nd_a_el n_dof_a_nd n_dof_a_el n_dof_tot 
global nd_coor el_cfg prop nd_bc nd_f
% disp: print a value in command window without the variable name
disp('truss_main.m is running')

%% i/o
% fopen: open a file for access, return a integer for the identification
fid = fopen('truss_results_1.txt')
disp('Results printed in file: truss_results_1.txt')
% input data from file to define model information
truss_data_1
% print the model data
truss_model_information

%% build the gloabal equation
% initialize the global stiffness matrix and force vector
% the global displacement vector is to derive from them
K_gl = zeros(n_dof_tot)
F_gl = zeros(n_dof_tot,1)

for i = 1 : n_el
    K_el_lo = truss_K_lo(i)
    Q_lo2gl = Q_lo2gl_1d_2nd(i)
    K_el_gl = Q_lo2gl * K_lo * Q_lo2gl'
    U0_gl = U0_el_bc_1d_2nd(i)
    K_gl = K_gl_build(K_gl,K_el_gl,U0_gl)
end

F = form_truss_F(F)

delta = KK\F

for i = 1 : n_nd
    for j = 1 : nodof 
        node_disp(i,j) =0
        if nf(i,j) ~= 0
            node_disp(i,j) = delta (nf(i,j))
        end
    end
end

for i = 1 : nel
    kl = truss_kl(i)
    C = truss_C(i)
    kg = C*kl*C'
    g = truss_g(i)
    for j = 1 : eldof
        if g(j) ==0
            edg(j) = 0
        else
            edg(j) = delta (g(j))
        end
    end
    fg = kg *edg;
    fl = C'*fg
    force(i) = fl(3)
end

print_truss_results
fclose(fid)

    