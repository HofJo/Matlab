function [childGenepool] = create_crossing_over(matingGenepool)
    % CREATE_CROSSING_OVER Create a crossing over at random site between
    % every two adjacent columns.
    %
    %   [childGenepool] = CREATE_CROSSING_OVER(matingGenepool) creates a 
    %   crossing over at random site between every two adjacent columns.
    
    arguments
        matingGenepool (:,:) logical
    end

    childGenepool = matingGenepool;    % no altering of original 2D-array
    [~, nRows] = size(childGenepool);
    k = randi(nRows-1,1, nRows/2);    % determine crossing sites

    % perform crossover of adjacent columns pairwise
    for i_nRows = 1:nRows/2
        temp = childGenepool(k(i_nRows)+1:end,i_nRows*2-1);
        childGenepool(k(i_nRows)+1:end,i_nRows*2-1) = childGenepool(k(i_nRows)+1:end,i_nRows*2);
        childGenepool(k(i_nRows)+1:end,i_nRows*2) = temp;
    end
end