%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: K_lo = truss_K_lo(el_no)                               %
% construct local stiffness                                        %
% for 1-d truss element with 2 nodes with linear shape function    %
% input is Element No. with its geometric and material information %                            %
% returns local stiffness matrix                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [K_lo] = truss_K_lo(el_no)

    global nd_coor el_cfg prop
    
    % get node no. of the given element
    node_1 = el_cfg (el_no, 1)
    node_2 = el_cfg (el_no, 2)
    
    % get the node coordiantes
    x1 = nd_coor (node_1, 1)
    y1 = nd_coor (node_1, 2)
    x2 = nd_coor (node_2, 1)
    y2 = nd_coor (node_2, 2)
    
    % get the length of the truss element
    L = sqrt ( ( x2 - x1 ) ^ 2 + ( y2 - y1 ) ^ 2 )
    
    % get the material property for the element
    E = prop (el_no, 1)
    A = prop (el_no, 2)
    
    % construct the local stiffness matrix for the truss element
    K_lo = [  E*A/L    0     -E*A/L     0 ; ...
                0      0        0       0 ; ...
             -E*A/L    0      E*A/L     0 ; ...
                0      0        0       0 ]

                