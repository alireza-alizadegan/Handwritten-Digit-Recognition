function grad=grad(theta)
global x_train y_train lambda

xTilde_train=[ones(1,size(x_train,2)); x_train];
grad=2*lambda*theta;
for i=1:numel(y_train)
    grad=grad+y_train(i)*xTilde_train(:,i)*exp(y_train(i)*theta'*xTilde_train(:,i))/(1+exp(y_train(i)*theta'*xTilde_train(:,i)));
end
end
