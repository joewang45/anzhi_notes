global n_nd n_el n_nd_a_el n_dof_a_nd n_dof_a_el n_dof_tot 
global nd_coor el_cfg prop nd_bc nd_f

%% Geometrical Information
% number of nodes
n_nd = 3
% number of elements
n_el = 3
% define nodes by coordiantes
nd_coor = zeros (n_nd, 2)
nd_coor = [ 0     0    ; ...
            4000  0    ; ...
            4000  6000  ]
% define elements by nodes
el_cfg = zeros (n_el, 2)
el_cfg = [  1  2 ; ...
            2  3 ; ...
            1  3   ]

%% Element Information
% Number of nodes per element
n_nd_a_el = 2
% Number of DOF per node
n_dof_a_nd = 2
% Number of DOF per element
n_dof_a_el = n_nd_a_el * n_dof_a_nd

%% Element Material Properties
prop = zeros (n_el, 2)
prop = [ 210000  2000 ; ...
         210000  2000 ; ...
         210000  2000   ]

%% Nodal Boundary Conditions
nd_bc = ones (n_nd, n_dof_a_nd)
nd_bc(1,1) = 0
nd_bc(1,2) = 0
nd_bc(2,2) = 0

n_dof_tot = 0
for i = 1 : n_nd 
    for j = 1 : n_dof_a_nd 
        if nd_bc(i:j) ~= 0
           n_dof_tot = n_dof_tot + 1
           nd_bc(i,j) = n_dof_tot 
        end
    end
end

% define loads
nd_f = zeros(n_nd, 2)
nd_f(3,:) = [1200 0]

