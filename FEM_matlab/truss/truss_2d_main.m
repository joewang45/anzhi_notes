%% TRUSS_2D_MAIN %%

%% initializing
clc % clear screen 
clear % clear variables in memory

% get variables
global truss_model_name   
global node   n_nd   el_cfg   n_el   n_dof_tot   
global U_tot_gl 

%% input model information
truss_2d_input_data

%% build the gloabal equation

% build the global stiffness matrix
K_tot_gl = zeros(n_dof_tot)

for i = 1 : n_el 
    K_el_lo = truss_2d_K_el_lo(i)
    Q = coor_trans_1d (i)
    K_el_gl = Q * K_el_lo * Q'
    K_tot_gl = truss_2d_K_tot_gl ( i, K_tot_gl, K_el_gl )
end 

% build the global force vector 
F_tot_gl = zeros(n_dof_tot,1)
k = 1
for i = 1 : n_nd
    for j = 1 : 2
        F_tot_gl(k) = node ( i, 4+j)
        k = k + 1
    end
end

% adding boundary conditions
k = 1
for i = 1 : n_nd
    for j = 3 : 4 
        if node(i,j) == 0
           K_tot_gl(k,k) = K_tot_gl(k,k) + max( max (el_cfg,[],2) ) * 10^6
        end
        k = k + 1
    end
end

%% Solve the global equation
U_tot_gl = K_tot_gl \ F_tot_gl

%% Post Process
% get the local nodal displacement 


% calculate the truss force

% output 
