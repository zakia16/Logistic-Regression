
function PC = logit(testlables,testData,coefs)

class=[];
c=1;

b=coefs(1,1);
  for i=1:numel(testlables)
      for j=2:numel(coefs)
         b=b+coefs(j,1)*testData(i,j-1);
      end
      
        P= 1/(1+exp(-b));       
        if(P<0.5)
           class(c,1)=0;
        else
            class(c,1)=1;
        end
        
        c=c+1;
        b=coefs(1,1);
  end
  
  PC = class; 
  
 
