

function x=addsignals(t)
t=-10:0.01:10;

while(1)
    op=input('1.shift 2.flip 3.scale');
    switch op
        
        case 1
            
            x=shiftt(t);
            figure(1);
            plot(t,x);
            
            
        case 2
            y=fliplr(x);
            x=y;
            figure(2);
            plot(t,x);
            
            
        case 3
            b=input('Enter time scale value:');
            if(b>0)
                t1=t./b;
                figure(3);
                plot(t1,x);
                
            else
                t1=t.*b;
                figure(3);
                plot(t1,x);
                
            end
            break;
            
        otherwise
            disp('Enter other:');
            
    end
    

    
end 
    
end
