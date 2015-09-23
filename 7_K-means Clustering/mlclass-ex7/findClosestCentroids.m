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
% temp=[];
%for j=1:size(X,1)
%    D=[];
%for  i=1:K
  
%Pos=dot(X(j,1)-centroids(i,1), X(j,2)- centroids(i,2));
%D=[D,pdist(Pos)];end;
%[M,I] = min(D);
%temp=[temp, I];
%j=j+1;
%end;
%idx=temp;
% TODO(SaveTheRbtz@): Think how it can be vectorized


  %diff_vecs = repmat(x, K, 1) - centroids;
  %diffs = diff_vecs * diff_vecs'; ...
  
  for xi = 1:size(X,1)
  x = X(xi, :);

  % Find closest centroid for x.
  best = Inf;
  for mui = 1:K
    mu = centroids(mui, :);
    d = dot(x - mu, x - mu);
    if d < best
      best = d;
      idx(xi) = mui;
     end
  end

  %diff_vecs = repmat(x, K, 1) - centroids;
  %diffs = diff_vecs * diff_vecs'; ...
end
end


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================



