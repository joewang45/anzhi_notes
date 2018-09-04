clear

%% numerical calculation
% be careful with the difference methode
% enought points must be considered for the numerical calculation

ia = -5
ie = 5; 
[x1,x2,x3] = meshgrid(ia:1:ie,ia:1:ie,ia:1:ie);
x3 = x3.*0

u1 = x2
u2 = -x1
u3 = x1.*0

% u1 = 2*x1 .^2 .* x2 + x1 .* x2 .^ 2
% u2 = x1 .^2 - x2
% u3 = x1.*0
quiver3(x1,x2,x3,u1,u2,u3);
hold on

[curlx,curly,curlz,cav] = curl(u1,u2,u3);
curlz
quiver3( x1,x2,x3,curlx,curly,curlz)

% % symbolish calculation
% syms x1 x2 x3
% u = [2*x1^2*x2+x1*x2^2, x1^2-x2, 0]
% x = [x1, x2, x3]
% curl(u,x)
% % 2*x1 - 2*x1*x2 - 2*x1^2
% 
% x1 = ia:1:ie
% x2 = ia:1:ie
% [X1,X2] = meshgrid(x1,x2)
% Z = 2.*X1 - 2.*X1.*X2 - 2.*X1.^2
