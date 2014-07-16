function [X,y] = processCSV(filename)
%PROCESSCSV function for loading digit recognition csv
% The csv must have the following format
% label feature1 feature2 fature3 ...
% Once the csv is read into memory the a column vector and matrix are returned
% Since Octave doesn't use the 0 numbering paradigm we map 0 labels to 10.

    fprintf('Reading file %s.\n', filename);
    data = csvread(filename);

    % Format training set into labels and examples
    y = data(:,1);
    X = data(:,2:end);

    % Map 0 to 10
    for j = 1:length(y)
        if y(j) == 0
            y(j) = 10;
        end
    end

end