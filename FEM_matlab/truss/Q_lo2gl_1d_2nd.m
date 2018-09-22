%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: Q_lo2gl = Q_lo2gl_1d_2nd(el_no)          %        
% coordinate transformation from local to global     %
% for 1-d element with 2 nodes                       %
% input is Element No.                               %
% returns transformation matrix from local to global %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% function truss_C: input i, return C
function [Q_lo2gl] = Q_lo2gl_1d_2nd (el_no)

    global nd_coor el_cfg
    
    % get node no. of the given element
    node_1 = el_cfg (el_no, 1)
    node_2 = el_cfg (el_no, 2)
    
    % get the node coordiantes
    x1 = nd_coor (node_1, 1)
    y1 = nd_coor (node_1, 2)
    x2 = nd_coor (node_2, 1)
    y2 = nd_coor (node_2, 2)
    
    % get the angle between the 1-d element and the global coordinate axis
    if x1 == x2
        if y2 > y1 
            theta = pi / 2 
        else 
            theta = - pi / 2
        end
    else 
        theta = atan ( (y2 - y1) / (x2 - x1) )
    end
        
    % construct the transformation matrix for the 1-d element
    Q_lo2gl = [ cos(theta)  -sin(theta)      0            0      ; ...
                sin(theta)   cos(theta)      0            0      ; ...
                    0            0       cos(theta)  -sin(theta) ; ...
                    0            0       sin(theta)   cos(theta) ]
                