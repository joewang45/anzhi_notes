%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION: U0_gl = U0_el_bc_1d_2nd(el_no) %
% construct a BC steering vector           %
% for a 1-d element with 2 nodes           %
% input is Element No. with its nodal BC   %                           
% returns the vector                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U0_gl] = U0_el_bc_1d_2nd(el_no)

    global el_cfg nd_bc
    
    % get node no. of the given element
    node_1 = el_cfg (el_no, 1)
    node_2 = el_cfg (el_no, 2)
    
    % construct the boundary condition steering vector
    U0_gl = [ nd_bc(node_1, 1) ;
              nd_bc(node_1, 2) ;
              nd_bc(node_2, 1) ;
              nd_bc(node_2, 2) ]
      

                