function [  ] = remove_key(figh,event_dat)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

global a d w s

if( strcmpi(event_dat.Key,'a'))
    a=0;
end

if( strcmpi(event_dat.Key,'d'))
    d=0;
end

if( strcmpi(event_dat.Key,'w'))
    w=0;
end

if( strcmpi(event_dat.Key,'s'))
    s=0;
end


end

