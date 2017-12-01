% Ciarán Ingle
%   15319981
%
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

mkList(0, []).
mkList(N, [N|T]) :- N > 0, X is N-1, mkList(X, T).

s(0) --> [].
s(N) --> {mkList(N, DescList), member(Item, DescList), Remainder is N-Item}, [Item], s(Remainder).
