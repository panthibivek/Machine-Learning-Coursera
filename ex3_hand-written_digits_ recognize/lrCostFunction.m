function [J, grad] = lrCostFunction(theta, X, y, lambda)
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));
hyper = sigmoid(X*theta);
supe = theta;
supe(1) = 0; 
J = (-1/m)*sum(y.*log(hyper)+(1-y).*log(1-hyper))+(lambda/(2*m))*sum(supe.^2);
grad = (1/m)*(X'*(hyper-y)) + (lambda/m)*supe;
grad = grad(:);
end
