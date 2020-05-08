function pr=etahat(x_test)
global thetahat

pr=1/(1+exp(-thetahat'*[1;x_test]));

end