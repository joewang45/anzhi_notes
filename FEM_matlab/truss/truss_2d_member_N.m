%% TRUSS_2D_MEMBER_FORCE %%

function [N_x] = truss_2d_member_N (el_no)
    
    % N = EA epsilon = EA (length - length_0) / (length_0)
    
    global node   el_cfg   pos_vec   n_nd_a_el   n_dof_a_nd   U_tot_gl   
    
    % get the material property for the element
    E_el = el_cfg (el_no,4)
    A_el = el_cfg (el_no,5)
    L_0 = el_cfg (el_no,6)
	
    % get the node number of the el_no
    % e.g. truss element 3 has nodes [1; 3]
    nd_el = zeros(n_nd_a_el,1)
	for i = 1 : n_nd_a_el
		nd_el(i) = el_cfg(el_no,i)
    end
    
    % get the deformation from the global deformation 
    