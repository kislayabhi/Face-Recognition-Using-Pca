function Y = project(W, X, mu)
  if(nargin<3)
    Y = W'*X;
  else
    Y = W'*(X-repmat(mu, 1, size(X,2)));
  end
end
