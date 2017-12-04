% Ciarán Ingle
%   15319981
%
% Q2)
%   Write a DCG that outputs strings of the form:
%   [Colour1, Nationality1, Pet1, Colour2, Nationality2, Pet2, Colour3, Nationality3, Pet3]
%

s --> person(C1, N1, P1), person(C2, N2, P2), person(C3, N3, P3),
        {C1 \== C2, C1 \== C3, C2 \== C3,
         N1 \== N2, N1 \== N3, N2 \== N3,
         P1 \== P2, P1 \== P3, P2 \== P3}.

person(C, N, P) --> colour(C), nationality(N), pet(P).

colour('red')   --> [red].
colour('blue')  --> [blue].
colour('green') --> [green].

nationality('english')  --> [english].
nationality('spanish')  --> [spanish].
nationality('japanese') --> [japanese].

pet('jaguar') --> [jaguar].
pet('snail')  --> [snail].
pet('zebra')  --> [zebra].
