%% TRUSS_2D_INPUT_DATA %%

global truss_model_name   
global node   n_nd   el_cfg   n_el    n_dof_tot 

% Name the Model 
truss_model_name = 'myTrussModel'

% Units in mm, N

%% Nodal Coordiantes, Boundary Conditions and Forces
%  0 = constrainted ; 1 = free
%  positive directions: UP and RIGHT
%           x-coor.  y-coor.   x-BC    y-BC    x-Force   y-Force   DOF
node = [       0       0        0        0        0         0       0 ;  
               4000    0        1        0        0         0       0 ; 
               4000    6000     1        1        12000     0       0 ;
       ]
n_nd = size(node, 1)

%% Element Properties
E = 200000
A = 2300

%% Element Configuration
%           Node A  Node B  EL_TYPE  E-Modulus  Section Area   Length
el_cfg= [      1       2       1         E            A          0      ;
               2       3       1         E            A          0      ;
               1       3       1         E            A          0      ;
        ]
n_el = size(el_cfg, 1)

% Calculate the Lengthes
for i = 1 : n_el
    el_cfg(i,6) = sqrt( ...
                  ( node( el_cfg(i,2),2 ) - node ( el_cfg(i,1),2 ) ) ^ 2 ...
                + ( node( el_cfg(i,2),1 ) - node ( el_cfg(i,1),1 ) ) ^ 2 ...
                  )
end
         
%% Calculate the total DOFs
% get nodal DOFs depending on element type
for i = 1 : n_el
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
for i = 1 : n_nd
    n_dof_tot = n_dof_tot + node(i, 7)
end


