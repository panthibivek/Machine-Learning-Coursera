function p = predict(Theta1, Theta2, X)
% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];
gta = sigmoid(X*Theta1');

vice = size(gta,1);
gta = [ones(vice, 1) gta];

city = sigmoid(gta*Theta2');

[a,p] = max(city, [], 2);
end
