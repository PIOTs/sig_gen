t=-10:0.01:10;
z=zeros(1,length(t));

while(1)
    
    a=input('wish to add:');
    if(a==1)
        y(1:length(t))=addsignals(t);
        z=y+z;
        
    else
        break;
    end
    
end

plot(t,z);