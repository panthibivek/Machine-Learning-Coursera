function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
b = 0;
c = 0; 
d = 0; 
su = 0;
b = ((X*theta-y).*X);
c = sum(b(:,1));
d = sum(b(:,2));
su = [c;d];
theta = theta-(alpha*((1/m)*su));
% Save the cost J in every iteration    
J_history(iter) = computeCost(X, y, theta);
end

end
