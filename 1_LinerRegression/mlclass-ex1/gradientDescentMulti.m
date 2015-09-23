function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta1=0;
theta2=0;
theta3=0;
ThetaSize=size(X,2);
i=0;
thetaT=theta;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    for i=1:size(X,2)
    thetaT(i,1)=theta(i,1)-alpha/m*sum(((theta'*X')'-y).*X(:,i));
    
    %theta(1,1)=theta(1,1)-alpha/m*sum(((theta'*X')'-y).*X(:,1));
    %theta(2,1)=theta(2,1)-alpha/m*sum(((theta'*X')'-y).*X(:,2));
    %theta(3,1)=theta(3,1)-alpha/m*sum(((theta'*X')'-y).*X(:,3));
         % ============================================================
   %thetaT(i,1)=thetaT;
    % Save the cost J in every iteration    
    end
J_history(iter) = computeCostMulti(X, y, theta);
theta=thetaT;
    
   
end
