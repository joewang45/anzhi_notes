% global variables
global truss_model_name   
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% Calculate the total DOFs
% get nodal DOFs depending on element type
for i = 1 : size (el_cfg,1)
    % for truss element
    if el_cfg (i, 3) == 1
        n_dof_a_nd = 2
        node ( el_cfg(i,1), 7 ) = max (node(el_cfg(i,1),7) , n_dof_a_nd)
        node ( el_cfg(i,2), 7 ) = max (node(el_cfg(i,2),7) , n_dof_a_nd)
    end
    % for beam element
    if el_cfg (i, 3) == 2
        n_dof_a_nd = 4
        node ( el_cfg(i,1), 7 ) = max (node(el_cfg(i,1),7) , n_dof_a_nd)
        node ( el_cfg(i,2), 7 ) = max (node(el_cfg(i,2),7) , n_dof_a_nd)
    end
end

% get the total DOFs
n_dof_tot = 0
for i = 1 : size (node,1)
    n_dof_tot = n_dof_tot + node(i, 7)
end

%% build the global stiffness matrix
K_tot_gl = zeros(n_dof_tot)

for i = 1 : size (el_cfg,1)
    K_el_lo = truss_2d_K_el_lo(i)
    Q = coor_trans_1d (i)
    K_el_gl = Q * K_el_lo * Q'
    K_tot_gl = truss_2d_K_tot_gl ( i, K_tot_gl, K_el_gl )
end 

%% build the global force vector 
F_tot_gl = zeros(n_dof_tot,1)
k = 1
for i = 1 : size(node, 1)
    for j = 1 : 2
        F_tot_gl(k) = node ( i, 4 + j)
        k = k + 1
    end
end

%% adding boundary conditions
k = 1
for i = 1 : size(node,1)
    for j = 3 : 4 
        if node(i,j) == 0
            % max( max (el_cfg,[],2)) =  maximal E-Modulus in System
            K_tot_gl(k,k) = K_tot_gl(k,k) + myBigNumber
        elseif node(i,j) == 1

        else
            K_tot_gl(k,k) = K_tot_gl(k,k) + node(i,j)
        end
        k = k + 1
    end
end