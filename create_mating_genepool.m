function [matingGenepool] = create_mating_genepool(matOldGenepool, eventsRoulette)
    % CREATE_MATING_GENEPOOL Create 2D-Array of mating genepool by appling
    % roulette spins on genepool of parental generation.
    %
    %   [matingGenepool] = CREATE_MATING_GENEPOOL(matOldGenepool, eventsRoulette)
    %   creates 2D-Array of mating genepool by appling roulette spins on 
    %   genepool of parental generation.

    arguments
        matOldGenepool (:,:) logical
        eventsRoulette (1,:) uint8
    end
    
    matingArray = [];
    for i_nRows = 1:size(matOldGenepool,2)
        % Replicate the value based on the replication count
        replicatedValues = repmat(matOldGenepool(:,i_nRows), 1, eventsRoulette(i_nRows));
        
        % Concatenate the replicated values to the result array
        matingArray = [matingArray, replicatedValues];
    end

    % random columnwise permutation of array
    matingGenepool = matingArray(:,randperm(size(matingArray,2)));
end
