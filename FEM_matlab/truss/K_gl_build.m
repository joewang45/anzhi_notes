%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: K_gl = K_gl_build(el_no) %
% construct a BC steering vector           %
% for a 1-d element with 2 nodes           %
% input is Element No. with its nodal BC   %                           
% returns the vector                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [K_gl] = K_gl_build(K_gl, K_el_gl, U0_gl)

    global n_dof_a_el
    
    for i = 1 : n_dof_a_el
        if U0_gl(i) ~= 0 
            for j = 1 : n_dof_a_el
                if U0_gl(j) ~= 0 
                    K_gl ( U0_gl(i), U0_gl(j) ) = K_gl ( U0_gl(i), U0_gl(j) ) + K_el_gl(i,j)
                end
            end
        end
    end
    
                