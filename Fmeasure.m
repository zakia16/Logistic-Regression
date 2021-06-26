
function F_measure = Fmeasure(testlables,class)

TP=0;
TN=0;
FP=0;
FN=0;
for i=1:numel(testlables)
     if testlables(i,1)'==1 && class(i,1)==1
            TP=TP+1;
     elseif testlables(i,1)'~= 1 && class(i,1)~= 1
            TN=TN+1;
     elseif testlables(i,1)'== 0 && class(i,1)~= 0
            FP=FP+1; 
     elseif testlables(i,1)'~= 0 && class(i,1)== 0
            FN=FN+1; 
     end
end

%RI= (TP+TN)/(TP+TN+FP+FN);
precision= TP/(TP+FP);
recall= TP/(TP+FN);
F_measure= 2*(precision*recall)/(precision+recall);

