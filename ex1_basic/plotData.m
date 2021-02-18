function plotData(x, y)
figure; % open a new figure window
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y);
plot (X,y,'rx','markersize', 10);
ylabel('Profit in $10,000s'); 
xlabel('Population of City in 10,000s');
end
