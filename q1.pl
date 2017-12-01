% Ciarán Ingle
%   15319981
%
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

s --> u(Count), two, v(Count).

u(0)     --> [].
u(Count) --> [0], u(Decrement), {Count is Decrement+1}.
u(Count) --> [1], u(Count).

two --> [2].

v(0)     --> [].
v(Count) --> [1], v(Decrement), {Count is Decrement+1}.
v(Count) --> [0], v(Count).
