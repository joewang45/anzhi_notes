clear all

r = 1

% a sphere in equation form: x1^2+x2^2+x3^2=1
% what a mass with a cartesian coordinate system

% i0 = -1
% ie = 1
% dist = 0.1
% 
% [x1,x2,x3] = meshgrid (i0:dist:ie,i0:dist:ie,i0:dist:ie)
% C = x1.^2 + x2.^2 + x3.^2
% [F1,F2,F3]=gradient(C)
% 
% x3 = real(sqrt(r^2-x1.^2-x2.^2))
% quiver3(x1,x2,x3,F1,F2,F3)
% hold on


[s1,s2,s3]=sphere
s1 = r.*s1
s2 = r.*s2
s3 = r.*s3
surf(s1,s2,s3)
hold on
[n1,n2,n3]=surfnorm(s1,s2,s3)
quiver3 (s1,s2,s3,n1,n2,n3)