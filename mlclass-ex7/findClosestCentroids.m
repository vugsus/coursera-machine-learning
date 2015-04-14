function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Doing some broadcasting (https://www.gnu.org/software/octave/doc/interpreter/Broadcasting.html)
%warning ("off", "Octave:broadcast");

% calculate all Euclidian distances betweek all X and all centroids (a^2 + b^2 = c^2)
%distances = sqrt(((X(:,1) - centroids(:,1)').^2) + ((X(:,2) - centroids(:,2)').^2));

% get the min value per row and corresponding index (which should be the centroid id)
%[minValues,idx]=min(distances,[],2);

% Restore broadcasting
%warning ("on", "Octave:broadcast");


for i = 1:length(idx)
    distance = zeros(K, 1);
    for j = 1:K
        % TODO(SaveTheRbtz@): Can be vectorized as diff * diff'
        distance(j) = sum(sum((X(i, :) - centroids(j, :)) .^ 2 ));
    endfor
    [value, idx(i)] = min(distance);
endfor


% =============================================================

end

