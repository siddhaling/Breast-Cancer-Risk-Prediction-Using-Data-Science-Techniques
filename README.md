# Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques
Breast Cancer Risk Prediction Using Data Science Techniques
### This project carried out under my guidance by talented students Arushi Kansal Rishika Bansal and Dona Varghese
Data science is an interdisciplinary field that includes the process of gathering, analyzing and summarizing structured and unstructured data to provide useful information. They involve several processes like Data Acquisition, Wrangling, Analysis, Modeling, and Visualisation. Using several data mining techniques we can find new patterns from large data sets. Medical data is produced in a large amount continuously and stored on different databases. In this work, we will be focusing on breast cancer risk prediction and how applied data science can help save many people's lives from this life-threatening disease. Data science approaches in breast cancer risk prediction prove to be very efficient to patients due to their high outcome predictability, reducing spend on buying medicines, promoting patients health and above all, saving lives. Through electronic health records, generic data and data on risk factors are becoming easily accessible for clinical practice. Therefore, there is a growing need for breast cancer prediction.
We use the method of Naive Bayes Classifier for Breast Cancer Risk Prediction. It is a probabilistic classifier. Naive Bayes is also used to build predictions and make models easily. It depends upon the Bayes theorem. 

![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/13.jpg)

Suppose there are n classes of Breast Cancer ( here n=2, the two classes are Benign and Malignant) and each sample has N dimensional symptoms of Breast Cancer (here N=9, as each sample has 9 attributes). S={S1, S2….,S9} 

    • Step 1: To calculate probability of cancer type, first identify symptoms of cancer P(Benign| S1, S2…,S9). 

    • Step 2: Calculate probability of each of the symptoms.
     P(Si|C1) = probability of each attribute, where i=1,2…,9.

    • Step 3: Multiply each attribute probability together 
     P(C1)= P(S1|C1) * P(S2|C1)* P(S3|C1).....P(S9|C1) 
    • Step 4: Repeat steps 1-3 for the second class of Cancer. 

    • Step 5: Conclude that S belongs to the cancer type with higher probability.
    
 We take 100 samples as training data to create the model and take 26 (1/4th of the total) samples as testing data, to test the Naive Bayes Model. After performing Naive Bayes algorithm, we create a confusion matrix using the test data set to find the Accuracy, Sensitivity and Specificity of this method. 
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/1.jpg)
 
 Variable Declaration
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/2.jpg)
 
 Output:
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/3.jpg)
 
 Prediction Statistics
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/4.jpg)
 
 The accuracy increased to 97% after discretizing the attributes.
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/6.jpg)
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/5.jpg)
 
 The following table shows the testing data set, the highlighted columns are the samples that have correctly predicted using the Naive Bayes Classifier model that we created. 
 
 ![alt text](https://github.com/siddhaling/Breast-Cancer-Risk-Prediction-Using-Data-Science-Techniques/blob/main/images/7.jpg)
 
 # Further Projects and Contact
www.researchreader.com

https://medium.com/@dr.siddhaling

Dr. Siddhaling Urolagin,\
PhD, Post-Doc, Machine Learning and Data Science Expert,\
Passionate Researcher, Deep Learning, Machine Learning and applications,\
dr.siddhaling@gmail.com
