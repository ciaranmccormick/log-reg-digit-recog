function params = train(X, y, lambda)
% TRAIN trains the logistic regression algorithm on the training set X and y.
% X         -   no.examples x no.features Matrix
% y         -   no.examples x 1 column vector
% lambda    -   coefficient used to control the amount of regularisation in the
%               model.

    % Initialise matrix that will store the parameters
    params = zeros(10, size(X,2));
    % Initial guess at theta
    initial_theta = zeros(size(X,2),1);

    fprintf('Begin training algorithm.\n');
    % Run logistic regression for each class using fmincg
    for i = 1:10
        fprintf('Begin training handwritten digit %i ...\n', i);

        % Covert multiclass to binary class
        alt_y = y == i;

        % Set options for fminunc
        options = optimset('GradObj', 'on', 'MaxIter', 50);

        % Run fminunc
        [theta,cost] = ...
            fmincg(@(t)(costFunction(t, X, (y == i), 0.7)), ...
                            initial_theta, options);

        % Store resulting theta in trained matrix
        params(i,:) = theta';
    end
end