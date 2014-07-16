function X = addOneCol(X)
% addOneCol     -   Adds a column of ones to the front of a matrix.
% X             -   Matrix that will have the column of ones added.

    % Add ones to the examples
    X = [ones(size(X,1),1),X];

end