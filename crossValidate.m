function cvError = crossValidate(params, X, y)
% CROSSVALIDATE is the cross validation function.
% params    -   the parameters of a logistic regression function.
% X         -   the features of the cross validation set
% y         -   the labels of the cross validation set.
% cvError   -   the cross validation/classification error.

    % Get the index with the highest value (digit prediction)
    [mx,imx] = max(sigmoid(X*params'),[],2);
    
    % Compare prediction with CV set, getting the number of correct
    % predictions
    correct = sum(y == imx);
    
    % Calculate the Cross Validation Error.
    cvError = 1 - correct/length(y);

end