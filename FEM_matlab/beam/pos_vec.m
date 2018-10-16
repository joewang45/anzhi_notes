%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% POSITION VECTOR           %
% TO GET POSITION           %
% IN GLOBAL STIFNESS MATRIX %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [pos] = pos_vec(el_no)

    global el_cfg
    
    % get DOF information of the element
    if el_cfg ( el_no, 3) == 1
        n_nd_a_el = 2
        n_dof_a_nd = 2
    end
    
    % get the node number of the el_no
    nd_el = zeros(n_nd_a_el,1)
	for i = 1 : n_nd_a_el
		nd_el(i) = el_cfg(el_no,i)
    end
    
    % span [1 ; 3] to [1 ; 1 ; 3 ; 3]
    a = span_array_1 (nd_el, n_dof_a_nd)
        
    % create [ 1 ; 0 ; 1 ; 0 ]
    b = span_array_2 (n_nd_a_el, n_dof_a_nd)
    
    % from [1 ; 3] to  [1 ; 2 ; 5 ; 6]
    pos = zeros (n_dof_a_nd * n_nd_a_el, 1)
    for i = 1 : n_dof_a_nd * n_nd_a_el
        pos(i) = a(i) * n_dof_a_nd - b(i)
    end

end

%% Subfunctions for the positioning
    function [a] = span_array_1 ( nd_el, n_dof_a_nd )
        % this function span an array to a bigger one
        % e.g. span_nd ( [1 ; 3], 2 ) 
        % returns [1; 1; 3 ;3]
        a = ones(n_dof_a_nd,1) * nd_el(1)
            for i = 2 : size(nd_el)
                a = cat(1, a, ones(n_dof_a_nd,1) * nd_el(i) )
            end
    end    
    
    function [b] = span_array_2 ( n_nd_a_el , n_dof_a_nd )
        % this function creates an array for positioning
        % e.g. span_array_2 ( 3 , 2 )
        % returns [2 ; 1; 0 ; 2 ; 1 ; 0]

        b = n_dof_a_nd -1 : -1 : 0
        b0 = b
        i = 1
        while i < n_nd_a_el 
            b = cat (2, b, b0)
            i = i + 1
        end
    end    


   
    
