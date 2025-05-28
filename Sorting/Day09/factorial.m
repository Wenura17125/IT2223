%function func = factorial(n)
 % if n==0
 %     func = 1;
%  else
%      func = n * factorial(n-1);
%  end
%end





%function result = factorial(n)
%   result = 1;
%   for i = 1:n
%       result = result * i;
%   end
% end



function f= factorial(n)
if n==0||n==1
    f=1;
else
    f=n*factorial(n-1);
end
end