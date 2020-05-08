function hes=hes(theta)
global x_train y_train lambda

xTilde_train=[ones(1,size(x_train,2)); x_train];
hes=2*lambda*eye(size(theta,1));
for i=1:numel(y_train)
    hes=hes+y_train(i)^2*xTilde_train(:,i)*xTilde_train(:,i)'*exp(y_train(i)*theta'*xTilde_train(:,i))/(1+exp(y_train(i)*theta'*xTilde_train(:,i)))^2;
end
end

