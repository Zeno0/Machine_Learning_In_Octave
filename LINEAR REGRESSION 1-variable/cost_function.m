function j = cost_function(X,y,theta)
% get usefull information from the agruments
m = length(y);
predic = X*theta;
% use formula to calculate the cost function
j = 1/(2*m) * sum((predic - y).^2);
% here the dot represents the elementwise square
 
