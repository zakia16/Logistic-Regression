y = dlmread('E:\classification\trainingLabels.txt');
x = dlmread('E:\classification\trainingData.txt');
%coefficients
coefs = glmfit(x,y,'binomial','link','logit');
coefficients = coefs

testData= dlmread('E:\classification\testData.txt');
testlables= dlmread('E:\classification\testLabels.txt'); 

%Identify Predicted Class Labels 
PC = logit(testlables,testData,coefs);
fprintf('Predicted Class Labels\n');  
fprintf('\t\t%d\n',PC');

%calculate F-measure
F_measure = Fmeasure(testlables,PC)




    

    
