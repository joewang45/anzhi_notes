%% TRUSS_2D_K_tot_gl_rev2 %%

function [K_tot_gl] = truss_2d_K_tot_gl (el_no, K_tot_gl, K_el_gl)

    global el_cfg
    
    % get DOF information of the element
    if el_cfg ( el_no, 3) == 1
        n_nd_a_el = 2
        n_dof_a_nd = 2
    end
    
    % get the node number of the element el_no
    nd_el = zeros(n_nd_a_el,1)
	for i = 1 : n_nd_a_el
		nd_el(i) = el_cfg(el_no,i)
    end
    
    % get the positioning vector 
    pos = pos_vec (el_no)
    
    %% Form the global stifness matrix
    for i = 1 : n_dof_a_nd * n_nd_a_el
        for j = 1 : n_dof_a_nd * n_nd_a_el
            K_tot_gl ( pos(i), pos(j) ) = K_tot_gl ( pos(i), pos(j) ) + K_el_gl (i,j)
        end
    end
    
end


