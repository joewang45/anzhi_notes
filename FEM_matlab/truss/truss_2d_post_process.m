% global variables
global truss_model_name   
global node  el_cfg  n_dof_tot   
global myBigNumber   mySmallNumber   
global K_tot_gl  F_tot_gl  U_tot_gl 

%% get nodal coordinates after deformation
k = 1
for i = 1 : size(node,1) 
    for j = 1 : 2
        node (i, 9 + j) = node (i, 9 + j) + U_tot_gl(k)
        k = k + 1
    end
end

%% calculate the new element length
for i = 1 : size (el_cfg,1)
    el_cfg (i,7) = sqrt( ...
                   ( node( el_cfg(i,2),10 ) - node ( el_cfg(i,1),10 ) ) ^ 2 ...
                 + ( node( el_cfg(i,2),11 ) - node ( el_cfg(i,1),11 ) ) ^ 2 ...
                   )
    % calculate the axial strain
    el_cfg (i,8) = ( el_cfg (i,7) - el_cfg (i,6) ) / el_cfg(i, 6)
    % calculate the axial force
    el_cfg (i,9) = el_cfg (i,4) * el_cfg (i,5) * el_cfg (i,8)
end

%% calculate the supporting reations
for i = 1 : size(node,1)
    for j = 1 : 2  
        if node(i,j + 2) == 0
            node(i, j + 7) = (node(i, j + 9) - node(i, j )) * myBigNumber
        elseif node(i,j + 2) == 1
            
        else
            node(i, j + 7) = (node(i, j + 9) - node(i, j )) * node(i,j)
        end
    end
end

%% check the balance of the system
xBalance = 0 
yBalance = 0
for i = 1 : size(node,1)
    xBalance = xBalance + node(i, 5) - node(i, 8)
    yBalance = yBalance + node(i, 6) - node(i, 9)
end

if abs(xBalance) < mySmallNumber & abs(yBalance) < mySmallNumber
    CRCT = 1
else
    CRCT = 0
end