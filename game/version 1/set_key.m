function [ ] = set_key(figh,event_dat)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
global a d

if( strcmpi(event_dat.Key,'a'))
    a=1;
end

if( strcmpi(event_dat.Key,'d'))
    d=1;
end


end

