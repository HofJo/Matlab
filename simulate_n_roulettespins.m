function [arry] = simulate_n_roulettespins(probArray,nSpins)
% SIMULATE_N_ROULETTESPINS Simulates spins of roulettewheel created by 
% array of probabilities.
%
%   [ARRAY] = SIMULATE_N_ROULETTESPINS(probabilityArray) 
%   simulates single spin and returns array of amount of events.
%
%   [ARRAY] = SIMULATE_N_ROULETTESPINS(probabilityArray,nSpins) 
%   simulates nSpins spins and returns array of amount of events.

    arguments
        probArray (1,:) double {mustBeLessThan(probArray, 1.001)}
        nSpins (1,1) uint8 = 1
    end
    arry = zeros(1,size(probArray, 2));
    wheel = cumsum(probArray);
    for i = 1:nSpins
        index = find(rand() <= wheel, 1, 'first');
        arry(1,index) = arry(1,index) + 1;
    end
end