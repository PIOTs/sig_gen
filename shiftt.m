
    
function a=shiftt(t)
m=input('1.unitstep 2.ramp 3.sine');
n=input('Enter delay amount:');
    if(m==3)
        T=input('Enter period for sine wave');
    end
p=input('amplitude or slope');
l=length(t);
k=0;
v=t;
for i=1:1:l
    if(t(i)<0)
        k=k+1;
    end
    
end

for i=1:1:l
    
    if(m==1)
      if(t(i)>=n)
        a(i)= p*1;
      else
        a(i)=0;
      end
    
    elseif(m==2)
       if(t(i)>=n)
        a(i)= p*v(k);
        k=k+1;
      else
        a(i)=0;
      end
      
    elseif(m==3)
          if(t(i)>=n)
            a(i)=p*sin(2*pi*(1/T)*v(k));
            k=k+1;
          else
            a(i)=0;
          end
    end
 
      
end

end