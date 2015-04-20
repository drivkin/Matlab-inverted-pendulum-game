function [  ] = remove_key(figh,event_dat)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

global a d

if( strcmpi(event_dat.Key,'a'))
    a=0;
end

if( strcmpi(event_dat.Key,'d'))
    d=0;
end

end

