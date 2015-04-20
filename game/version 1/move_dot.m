
function [  ] = move_dot( figh,event_dat )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

persistent x y

if (isempty(x))
    x=100;
    y=100;
end

if( strcmpi(event_dat.Key,'a'))
    x=x-1;
end

if( strcmpi(event_dat.Key,'d'))
    x=x+1;
end

if( strcmpi(event_dat.Key,'s'))
    y=y-1;
end

if( strcmpi(event_dat.Key,'w'))
    y=y+1;
end



scatter(x,y);
axis([0 200 0 200]);
shg


end

