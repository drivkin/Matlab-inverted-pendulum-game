
function [xkret fret] = one_step_pend(dsys,xk,f)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

global a d


global sensitivity;




if(isempty(xk))
    xk=[0 0 .01 0]';
    f=0;
    a=0;
    d=0;
end

if(a)
    if(~d)
        f=f-sensitivity;
    end
else
    if(d)
        f=f+sensitivity;
    end
end



xk=(dsys.a)*xk+(dsys.b)*f;
xkret=xk;
fret=f;
end

