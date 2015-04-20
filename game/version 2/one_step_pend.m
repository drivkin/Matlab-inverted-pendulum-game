
function [xkret fret] = one_step_pend(dsys,xk,f)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

global a d w s 
global l

global inited

persistent user_ferocity

global sensitivity;
global ext_sens;

if(~inited)
    inited=1;
    user_ferocity=2;
end

if(isempty(xk))
    xk=[0 0 .01 0]';
    f=0;
    a=0;
    d=0;
end

% if(a || d)  
%     user_ferocity=user_ferocity+1;
% else
%     user_ferocity=user_ferocity-1;
% end
% 
% if(~user_ferocity)
%     user_ferocity=1;
% end

if(a)
    if(~d) 
        f=f-sensitivity;
    end
else
    if(d)
        f=f+sensitivity;
    end
end


if(s)
    if(~w)
        l=l-ext_sens;
    end
else
    if(w)
        l=l+ext_sens;
    end
end



xk=(dsys.a)*xk+(dsys.b)*f;
xkret=xk;
fret=f;
end

