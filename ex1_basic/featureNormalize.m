function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

X_norm = X;
m=0
B = std(X);
m = length(X(:,1));
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
mu = mean(X);
sigma = std(X);
for I = (1 : m-1)
B = [B ; std(X)];
end
p =(X_norm - mu);
X_norm = (p./B);
end
