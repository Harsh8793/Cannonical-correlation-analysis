S=[1 0.20079 -0.02819 0.479064;0.20079 1 0.008622 0.066253;-0.02819 0.008622 1 -0.21948;0.4790 0.06625 -0.21948 1]
s11=S(1:2,1:2)
s12=S(1:2,3:4)
s21=S(3:4,1:2)
s22=S(3:4,3:4)
A=(s11^(-1/2)*s12*(inv(s22))*s21*s11^(-1/2))
[v d]=eig(A)
#according to eigen value select eigen vector which has highest eigen value
e1=v(:,1)
a=e1'*s11^(-1/2)
#U1=1.010401*x1(1)-0.060580*x2(2)

B=(s22^(-1/2)*s21*(inv(s11))*s12*s22^(-1/2))
[v1 d1]=eig(B)
#according to eigen value select eigen vector which has highest eigen value
e2=v1(:,2)
b=e2'*s22^(-1/2)
#v1=-0.1649*x1(1)-1.0232*x2(2)
##now canonical pairs are
#U1=1.010401*x1(1)-0.060580*x2(2)
#v1=-0.16490*x1(1)-1.023200*x2(2)

#now cannonical correlation between pair is 
rho=d(1,1)
cor=sqrt(rho)

