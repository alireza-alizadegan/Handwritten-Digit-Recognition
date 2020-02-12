close all; clear all; clc
load mnist_49_3000 
load thetahat

[d,n]=size(x);

x_test=x(:,2001:3000);
y_test=y(2001:3000);

for i=1:size(x_test,2)
    [y_pred(1,i),conf(i)]=LRclsf(x_test(:,i));
end
error=abs(y_pred-y_test);
ind=find(error)
misclsConf=conf(ind);
errorSum=0;
for i=1:numel(error)
    errorSum=errorSum+error(i)/2;
end

errorSum
misclas_rate=errorSum/numel(y_test)

[misclsConfSrt,IndVec]=sort(misclsConf);
ind1=fliplr(ind(IndVec));

k=1;
plotInd=ind1(1:20);
for i=plotInd
    subplot(4,5,k)
    imagesc(reshape(x_test(:,i),[sqrt(d),sqrt(d)])');
%     title(num2str(conf(i)))
    title(num2str(i))
    k=k+1;
end