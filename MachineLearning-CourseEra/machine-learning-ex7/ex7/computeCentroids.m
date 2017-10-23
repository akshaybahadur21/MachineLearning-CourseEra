    function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
%{
len1=0;
sum1=0;
sum1y=0;
len2=0;
sum2=0;
sum2y=0;
len3=0;
sum3=0;
sum3y=0;
for i=1:m
    if idx(i)==1
        len1=len1+1;
        sum1=sum1+X(i,1);
        sum1y=sum1y+X(i,2);
    end
    centroids(1,1)=sum1/len1;
    centroids(1,2)=sum1y/len1;
    
    if idx(i)==2
        len2=len2+1;
        sum2=sum2+X(i,1);
        sum2y=sum2y+X(i,2);
    end
    centroids(2,1)=sum2/len2;
    centroids(2,2)=sum2y/len2;
    
     if idx(i)==3
        len3=len3+1;
        sum3=sum3+X(i,1);
        sum3y=sum3y+X(i,2);
    end
    centroids(3,1)=sum3/len3;
    centroids(3,2)=sum3y/len3;
end
%}

for k = 1:K
	idx_k = find(idx==k);
	centroids(k,:) = sum(X(idx_k,:),1) / length(idx_k);
end







% =============================================================


end

