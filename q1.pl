% Q1)
%   Write a DCG that accepts strings of the form u2v where:
%   - u, v are strings of the alphabet {0, 1}
%   - the number of 0s in u = the number of 1s in v
%
%   ?- s([0, 1, 1, 2, 0, 0, 1, 0], L).
%   L = [];
%   L = [0];
%   false.
%

s([2], []). % no 1s and no 0s
