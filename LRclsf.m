function [y_pred,conf]=LRclsf(x_test)

if etahat(x_test)>=.5
    y_pred=-1;
else
    y_pred=1;
end
conf=abs(etahat(x_test)-.5);
end