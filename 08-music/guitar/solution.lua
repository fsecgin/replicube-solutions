e=sqrt((y+5)^2+x*x)
d=ceil(min(sqrt((y+2)^2+x*x)-.8,e-1.5))
if d<3 then
if z==-3 or d>1 and z==-2 then return 15 end
if z==-1 and e>1 then return 8 end
end
if x==0 then
if z==0 and abs(y)<8 then return 3 end
if y>-1 and y<6 and z<0 and y-3*z<9 then return 15 end
end
if y>5 and abs(x)<2 and z==-1 and(y%2<1 or x==0)then return 15 end
