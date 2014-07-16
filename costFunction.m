function [J, grad] = costFunction(theta, X, y, lambda)
%COSTFUNCTION
% theta - "Guess" at the parameters for the predictive function.
% X - The features of the training examples.
% y - The labels of the training examples.

    % Initialise variables used throughout the function.
    m = size(X,1); % Number of training examples.
    grad = zeros(size(theta)); % Empty var to collect theta's.
    J = 0; % Set the cost to zero.

    % Calculate the value of the regression function
    h = sigmoid(X * theta);
    tmp_theta = theta;
    tmp_theta(1) = 0;

    % Find the cost for logistic regression for this training
    % set.
    J = (1/m)*sum(-y.*log(h) - (1-y).*log(1-h)) + (lambda/(2*m))*sum(theta(2:end).^2);

    % Calculate the derivative (gradient) of the cost function.
    grad = (X'*(h - y))/m + (lambda/m)*tmp_theta;

end