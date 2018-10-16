function [Q_lo2gl] = coor_trans_1d (el_no)

    global node el_cfg
    
    % get node no. of the given element
    NodeA = el_cfg (el_no, 1)
    NodeB = el_cfg (el_no, 2)
    
    % get the node coordiantes
    x1 = node (NodeA, 1)
    y1 = node (NodeA, 2)
    x2 = node (NodeB, 1)
    y2 = node (NodeB, 2)
    
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
                