%% TRUSS_2D_K_el_lo %%

function [K_el_lo] = truss_2d_K_el_lo (el_no)

    global node el_cfg
    
    % get the material property for the element
    E_el = el_cfg (el_no,4)
    A_el = el_cfg (el_no,5)
    L_el = el_cfg (el_no,6)
	
    % construct the local stiffness matrix for the truss element
    K_el_lo = [  E_el*A_el/L_el    0     -E_el*A_el/L_el     0 ; ...
                       0           0           0             0 ; ...
                -E_el*A_el/L_el    0      E_el*A_el/L_el     0 ; ...
                       0           0           0             0 ]

                