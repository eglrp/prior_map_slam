%  Inputs        :  
%               Coord1,Coord2 - Coordinates to be calculated. Each of them in [X,Y]
%
%  Outputs       :  
%               distance - The calculated distance between each pair of coordinates
%
%  Description   : 
%       Calculates the euclidean_distance between 2 points
%
%  To Run >> distance = euclidean_distance(Coord1,Coord2)
%
%  Example >> distance = euclidean_distance([2,4;5,6],[4,6;5,7]);

function distance = euclidean_distance(Coord1,Coord2)
if isempty(Coord1) | isempty(Coord2)
    error('No data input');
end
[r1,c1] = size(Coord1);
[r2,c2] = size(Coord2);
if ([r1,c1] ~= [r2,c2]) | (c1~=2) | (c2 ~= 2) | (r1 ~= r2)
    error('Invalid matrix dimensions');
end
distance = sqrt((Coord1(:,1)-Coord2(:,1)).^2 + (Coord1(:,2)-Coord2(:,2)).^2);