% Q3)
%   Write a DCG that given a non-negative integer Sum, accepts lists of integers >= 1 that add up to sum.
%
%   ?- s(3, L, []).
%   L = [3];
%   L = [2, 1];
%   L = [1, 2];
%   L = [1, 1, 1];
%   false.
%


mkList(+Num, ?list).    % + instantiated, ? might not be instantiated
