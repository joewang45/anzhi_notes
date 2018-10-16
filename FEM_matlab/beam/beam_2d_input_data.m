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
% 0 = constrainted ; 1 = free
% positive directions: UP and RIGHT

%              1)x0    2)y0     3)x-BC   4)y-BC   5)Fx      6)Fy  |  7)DOF      8)Rx         9)Ry         10)x1       11)y1
node = [       0       0        0        0        0         0        0          0            0            0           0     ;  
               4000    0        1        0        0         0        0          0            0            0           0     ;
               4000    6000     1        1        120000    0        0          0            0            0           0     ;
       ]


% L = 6000
% F = 12000
% %              1)x0    2)y0     3)x-BC   4)y-BC   5)Fx      6)Fy  |  7)DOF      8)Rx         9)Ry         10)x1       11)y1
% node = [       0       0        0        0        0         0        0          0            0            0           0     ;  
%                L       0        1        1        0         0        0          0            0            0           0     ; 
%                L*0.5   L        1        1        0         -F       0          0            0            0           0     ;
%                L*1.5   L        1        1        0         -F       0          0            0            0           0     ;
%                L*2     0        1        0        0         0        0          0            0            0           0     ;
%        ]


for i = 1 : size(node, 1)
    node(i, 10) = node(i,1)
    node(i, 11) = node(i,2)
end 

%% Element Properties
E = 200000
A = 2300

%% Element Configuration


%           1)Node A  2)Node B  3)EL_TYPE  4)E-Modulus 5)Section Area  6)Length_0   7)Length_1  8)epsilon   9)N
el_cfg= [   1         2         1          E           A               0            0           0           0    ;
            2         3         1          E           A               0            0           0           0    ;
            1         3         1          E           A               0            0           0           0    ;
        ]
    

% %           1)Node A  2)Node B  3)EL_TYPE  4)E-Modulus 5)Section Area  6)Length_0   7)Length_1  8)epsilon   9)N
% el_cfg= [   1         2         1          E           A               0            0           0           0    ;
%             1         3         1          E           A               0            0           0           0    ;
%             2         3         1          E           A               0            0           0           0    ;
%             3         4         1          E           A               0            0           0           0    ;
%             2         4         1          E           A               0            0           0           0    ;
%             2         5         1          E           A               0            0           0           0    ;
%             4         5         1          E           A               0            0           0           0    ;
%         ]

% Calculate the Lengthes
for i = 1 : size (el_cfg,1)
    el_cfg (i,6) = sqrt( ...
                   ( node( el_cfg(i,2),2 ) - node ( el_cfg(i,1),2 ) ) ^ 2 ...
                 + ( node( el_cfg(i,2),1 ) - node ( el_cfg(i,1),1 ) ) ^ 2 ...
                   )
    % set the length after deformation
    el_cfg (i,7) = el_cfg (i,6)
end
        

