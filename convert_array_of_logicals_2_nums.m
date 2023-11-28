function [arry] = convert_array_of_logicals_2_nums(mat)
    % CONVERT_ARRAY_OF_LOGICALS_2_NUMS Convert an 2D-Array, interpreated as
    % a columnwise binarys, to 1D-Array of decimal numbers.
    %
    %   [array] = CONVERT_ARRAY_OF_LOGICALS_2_NUMS(mat) converts mat into array of
    %   ints.
    
    arguments
        mat (:,:) logical
    end

    [mColumns,~] = size(mat);
    
    factor = 2 .^ (0:mColumns-1);    % array ascending in powers of two

    arry = factor * mat;    %  Zeile1 * Spalte2  =>  nFact == mMat 
end
