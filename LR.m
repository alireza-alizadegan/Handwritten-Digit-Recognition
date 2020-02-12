close all; clear all; clc
load mnist_49_3000

global x_train y_train lambda thetahat

[d,n]=size(x);

x_train=x(:,1:2000);
y_train=y(1:2000);
x_test=x(:,2001:3000);
y_test=y(2001:3000);
lambda=10;

k=1;
theta(:,1)=zeros(size(x_train,1)+1,1);
theta_old=ones(size(x_train,1)+1,1);
epsilon=1e-1;
while norm(theta_old-theta(:,k))>epsilon
    grad(theta(:,k));
    hes(theta(:,k));
    theta_old=theta(:,k);
    theta(:,k+1)=theta(:,k)-hes(theta(:,k))\grad(theta(:,k));
    k=k+1;
end
thetahat=theta(:,k);
J(thetahat)
save('thetahat')