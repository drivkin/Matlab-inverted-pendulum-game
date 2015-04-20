function [ ] = change_f( figh,event_dat )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

global f

global sensitivity;

if(isempty(f))
    f=0;
end

if( strcmpi(event_dat.Key,'a'))
    f=f-sensitivity;
end

if( strcmpi(event_dat.Key,'d'))
    f=f+sensitivity;
end
end

