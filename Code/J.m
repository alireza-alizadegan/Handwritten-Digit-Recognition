function J=J(theta)
global x_train y_train lambda

xTilde_train=[ones(1,size(x_train,2)); x_train];
J=lambda*(norm(theta))^2;
for i=1:numel(y_train)
    J=J+log(1+exp(y_train(i)*theta'*xTilde_train(:,i)));
end
end
