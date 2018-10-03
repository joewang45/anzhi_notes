function [K_tot_gl] = truss_2d_K_tot_gl (el_no, K_tot_gl, K_el_gl)

    global node el_cfg n_dof_a_nd n_dof_a_el
    
    NodeA = el_cfg (el_no, 1)
    NodeB = el_cfg (el_no, 2)

    K_tot_gl(NodeA*n_dof_a_nd-1,NodeA*n_dof_a_nd-1) = K_tot_gl(NodeA*n_dof_a_nd-1,NodeA*n_dof_a_nd-1) + K_el_gl(1,1)
    K_tot_gl(NodeA*n_dof_a_nd-1,NodeA*n_dof_a_nd  ) = K_tot_gl(NodeA*n_dof_a_nd-1,NodeA*n_dof_a_nd  ) + K_el_gl(1,2)
    K_tot_gl(NodeA*n_dof_a_nd-1,NodeB*n_dof_a_nd-1) = K_tot_gl(NodeA*n_dof_a_nd-1,NodeB*n_dof_a_nd-1) + K_el_gl(1,3)
    K_tot_gl(NodeA*n_dof_a_nd-1,NodeB*n_dof_a_nd  ) = K_tot_gl(NodeA*n_dof_a_nd-1,NodeB*n_dof_a_nd  ) + K_el_gl(1,4)
    
    K_tot_gl(NodeA*n_dof_a_nd  ,NodeA*n_dof_a_nd-1) = K_tot_gl(NodeA*n_dof_a_nd  ,NodeA*n_dof_a_nd-1) + K_el_gl(2,1)
    K_tot_gl(NodeA*n_dof_a_nd  ,NodeA*n_dof_a_nd  ) = K_tot_gl(NodeA*n_dof_a_nd  ,NodeA*n_dof_a_nd  ) + K_el_gl(2,2)
    K_tot_gl(NodeA*n_dof_a_nd  ,NodeB*n_dof_a_nd-1) = K_tot_gl(NodeA*n_dof_a_nd  ,NodeB*n_dof_a_nd-1) + K_el_gl(2,3)
    K_tot_gl(NodeA*n_dof_a_nd  ,NodeB*n_dof_a_nd  ) = K_tot_gl(NodeA*n_dof_a_nd  ,NodeB*n_dof_a_nd  ) + K_el_gl(2,4)
    
    K_tot_gl(NodeB*n_dof_a_nd-1,NodeA*n_dof_a_nd-1) = K_tot_gl(NodeB*n_dof_a_nd-1,NodeA*n_dof_a_nd-1) + K_el_gl(3,1)
    K_tot_gl(NodeB*n_dof_a_nd-1,NodeA*n_dof_a_nd  ) = K_tot_gl(NodeB*n_dof_a_nd-1,NodeA*n_dof_a_nd  ) + K_el_gl(3,2)
    K_tot_gl(NodeB*n_dof_a_nd-1,NodeB*n_dof_a_nd-1) = K_tot_gl(NodeB*n_dof_a_nd-1,NodeB*n_dof_a_nd-1) + K_el_gl(3,3)
    K_tot_gl(NodeB*n_dof_a_nd-1,NodeB*n_dof_a_nd  ) = K_tot_gl(NodeB*n_dof_a_nd-1,NodeB*n_dof_a_nd  ) + K_el_gl(3,4)
    
    K_tot_gl(NodeB*n_dof_a_nd  ,NodeA*n_dof_a_nd-1) = K_tot_gl(NodeB*n_dof_a_nd  ,NodeA*n_dof_a_nd-1) + K_el_gl(4,1)
    K_tot_gl(NodeB*n_dof_a_nd  ,NodeA*n_dof_a_nd  ) = K_tot_gl(NodeB*n_dof_a_nd  ,NodeA*n_dof_a_nd  ) + K_el_gl(4,2)
    K_tot_gl(NodeB*n_dof_a_nd  ,NodeB*n_dof_a_nd-1) = K_tot_gl(NodeB*n_dof_a_nd  ,NodeB*n_dof_a_nd-1) + K_el_gl(4,3)
    K_tot_gl(NodeB*n_dof_a_nd  ,NodeB*n_dof_a_nd  ) = K_tot_gl(NodeB*n_dof_a_nd  ,NodeB*n_dof_a_nd  ) + K_el_gl(4,4)
    
    
%     NodeA = el_cfg (el_no, 1)
%     NodeB = el_cfg (el_no, 2)
% 
%     nd_el = [el_cfg(el_no,1); el_cfg(el_no,2)]
%     
%     
%     for i = 1 : size(nd_el)
%         for j = 1 : size(nd_el)
%             K_tot_gl ( nd_el(i) * nd_dof_a_nd-1 , nd_el(j) * 
%             
% 
%     