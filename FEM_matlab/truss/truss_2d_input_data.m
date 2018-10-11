%% TRUSS_2D_INPUT_DATA %%

%% global variables
global truss_model_name
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% Name the Model 
truss_model_name = 'HT-1'

%% Nodal Coordiantes, Boundary Conditions and Forces
% Units in mm, N
%  0 = constrainted ; 1 = free
%  positive directions: UP and RIGHT
%              1)x0    2)y0     3)x-BC   4)y-BC   5)Fx      6)Fy  |  7)DOF      8)Rx         9)Ry         10)x1       11)y1
node = [       0       0        0        0        0         0        0          0            0            0           0     ;  
               4000    0        1        0        0         0        0          0            0            0           0     ; 
               4000    6000     1        1        100000     0        0          0            0            0           0     ;
       ]

for i = 1 : size(node, 1)
    node(i, 10) = node(i,1)
    node(i, 11) = node(i,2)
end 

%% Element Properties
E = 200000
A = 2300

%% Element Configuration
%           Node A  Node B  EL_TYPE  E-Modulus  Section Area   Length_0    Length_1   epsilon    N
el_cfg= [      1       2       1         E            A          0            0          0       0 ;
               2       3       1         E            A          0            0          0       0 ;
               1       3       1         E            A          0            0          0       0 ;
        ]

% Calculate the Lengthes
for i = 1 : size (el_cfg,1)
    el_cfg (i,6) = sqrt( ...
                   ( node( el_cfg(i,2),2 ) - node ( el_cfg(i,1),2 ) ) ^ 2 ...
                 + ( node( el_cfg(i,2),1 ) - node ( el_cfg(i,1),1 ) ) ^ 2 ...
                   )
    % set the length after deformation
    el_cfg (i,7) = el_cfg (i,6)
end
        

