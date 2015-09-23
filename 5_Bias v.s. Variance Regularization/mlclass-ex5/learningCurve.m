function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.
%

% Number of training examples
m = size(X, 1);

% You need to return these values correctly
error_train = zeros(m, 1);
error_val   = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return training errors in 
%               error_train and the cross validation errors in error_val. 
%               i.e., error_train(i) and 
%               error_val(i) should give you the errors
%               obtained after training on i examples.
%
% Note: You should evaluate the training error on the first i training
%       examples (i.e., X(1:i, :) and y(1:i)).
%
%       For the cross-validation error, you should instead evaluate on
%       the _entire_ cross validation set (Xval and yval).

 %for i=1:size(X) 
 %X_train=X(1:i,1);
 %XT = [ones(length(X_train), 1) X_train];
 %[J_train, grad_train] = linearRegCostFunction(XT, y(1:i), theta, 0);
 
 %X_val=X(i:(i+length(X))/2,1);
 %XV = [ones(length(X_val), 1) X_val];
 %[J_V, grad_V] = linearRegCostFunction(XV, y(i:(i+length(X))/2), theta, 0);

 
 %error_train(i)=J_train; 
 %error_val(i)=J_V;
 %end;
% Note: If you are using your cost function (linearRegCostFunction)
%       to compute the training and cross validation error, you should 
%       call the function with the lambda argument set to 0. 
%       Do note that you will still need to use lambda when running
%       the training to obtain the theta parameters.
%
% Hint: You can loop over the examples with the following:
%
%       for i = 1:m
%           % Compute train/cross validation errors using training examples 
%           % X(1:i, :) and y(1:i), storing the result in 
%           % error_train(i) and error_val(i)
%           ....
%           
%       end
%

% ---------------------- Sample Solution ----------------------

% for all cases
for i = 1:m
	
	% for each training step, the training set must contains 1 to m 
	Xtrain = X(1:i,:);
	ytrain = y(1:i);
	
	% calc the theta
	theta = trainLinearReg(Xtrain, ytrain, lambda);	

	%Compute train/cross validation errors using training examples
	[Jtrain,grad_train]=linearRegCostFunction(Xtrain,ytrain,theta,0); 
	[Jval,grad_val]=linearRegCostFunction(Xval,yval,theta,0);

    %storing the result 
    error_train(i) = Jtrain;  
    error_val(i) = Jval;
end






% -------------------------------------------------------------

% =========================================================================

end
