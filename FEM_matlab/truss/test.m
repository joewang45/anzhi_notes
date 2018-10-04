    nd_el = [1; 3]
    n_nd_a_el = 2
    n_dof_a_nd =2
    n_dof_a_el = 4

    % span [1 ; 3] to [1 ; 1 ; 3 ; 3]
    a = span_array_1 (nd_el, n_dof_a_nd)
 
        
    % create [ 1 ; 0 ; 1 ; 0 ]
    b = span_array_2 (n_nd_a_el, n_dof_a_nd)

    
    % from [1 ; 3] to  [1 ; 2 ; 5 ; 6]
    pos_vec = zeros (n_dof_a_el,1)
    for i = 1 : n_dof_a_el
        pos_vec(i) = a(i) * n_dof_a_nd - b(i)
    end
    
    function [a] = span_array_1 ( nd_el, n_dof_a_nd )
        % this function span an array to a bigger one
        % e.g. span_nd ( [1 ; 3], 2 ) 
        % returns [1; 1; 3 ;3]
        a = ones(n_dof_a_nd,1) * nd_el(1)
            for i = 2 : size(nd_el)
                a = cat(1, a, ones(n_dof_a_nd,1) * nd_el(i) )
            end
    end    
    
    function [b] = span_array_2 ( n_nd , n_dof_a_nd )
        % this function creates an array for positioning
        % e.g. span_array_2 ( 3 , 2 )
        % returns [2 ; 1; 0 ; 2 ; 1 ; 0]

        b = n_dof_a_nd -1 : -1 : 0
        b0 = b
        i = 1
        while i <= n_nd 
            b = cat (2, b, b0)
            i = i + 1
        end
    end    