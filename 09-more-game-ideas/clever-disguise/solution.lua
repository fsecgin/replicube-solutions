a=abs(x)
if y<-1 and z==1 and a*y>-9 then return 3 end
if z>0 and y>-2 and z+y+a<3 then return 9 end
if z==1 then
d=max(abs(a-2),abs(y-2))
if d<1 then return 1 end
if d<2 or y==2 and x==0 then return 3 end
end
if a==3 and z<2 and y+step(-2,z)==2 then return 3 end
