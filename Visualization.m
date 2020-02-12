load mnist_49_3000
[d,n]=size(x);
i=1;
imagesc(reshape(x(:,i),[sqrt(d),sqrt(d)])');