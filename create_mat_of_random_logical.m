function [mat] = create_mat_of_random_logical(m,n)
    % CREATE_MAT_OF_RANDOM_LOGICAL Create 2D-Array filled randomly with 
    % logicals.
    %
    %   [mat] = CREATE_MAT_OF_RANDOM_LOGICAL(m,n) 
    %   creates array of size m*n randomly filled with logicals.

    arguments
        m (1,1) uint8 {mustBeNonzero} = 1
        n (1,1) uint8 {mustBeNonzero} = 1
    end
    mat = zeros(m,n);
    for i = 1:m
        for j = 1:n
            mat(i,j) = logical(round(rand()));
        end
    end 
end