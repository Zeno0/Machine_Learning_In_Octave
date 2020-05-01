function [theta, J_hist] = GD(X, y, theta, alpha, num_iter)
% usefull information from the arguments
m = length(y);
% initialize J_hist
J_hist = zeros(num_iter, 1);
for iter = 1:num_iter,
predic = X*theta;
theta0 = theta(1) - alpha*(1/m)*sum((predic-y)'*X(:,1));
theta1 = theta(2) - alpha*(1/m)*sum((predic-y)'*X(:,2));
% after calculating use this to update theta
theta = [theta0; theta1];
% update J_hist with each iteration
J_hist(iter) = cost_function(X,y,theta);
end;
end;
 