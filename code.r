# Loading the caret library to build the Naïve Bayes model
library("caret")

# Loading the data
df <- read.table('breast-cancer-wisconsin.data', header = TRUE, sep = ",", na.strings = 'null')

head(df)

"""**Preprocessing the data**"""

# Dropping the id number as it is not required in the analysis
df <- (df[,-1])

# Naming the columns
colnames(df) = c("Clump.Thickness", "Uniformity.of.Cell.Size", "Uniformity.of.Cell.Shape", "Marginal.Adhesion", "Single.Epithelial.Cell.Size", "Bare.Nuclei", "Bland.Chromatin", "Normal.Nucleoli", "Mitoses", "Class")

# When importing the data to a data.frame,
# it gets converted to a factor if the entire column is not numeric and 
# "Bare.Nuclei" has some missing values which is represented as "?" So with that in mind,
# it will have to be converted to character and then to numeric.
str(df)

# Counting the number of rows
nrow(df)

# Converting "Bare.Nuclei" into character and then into numeric
df$Bare.Nuclei = as.numeric(as.character(df$Bare.Nuclei))

# The above line turned "?" in the "Bare.Nuclei" column into the NAs
# Hence missing values needs to be checked
sum(is.na(df))

# Omiting the rows which has missing values
df <- na.omit(df)

# Checking if there no missing values
sum(is.na(df))

# Converting "Bare.Nuclei" into integer just like other attributes
df$Bare.Nuclei<- as.integer(df$Bare.Nuclei)
str(df)

# Factorizing the class attribute and replacing it with the new factorized class attribute
factorizedClass <- as.factor(df$Class)
df <- data.frame(df, factorizedClass)
df <- df[,-10]
head(df)

"""**Building Naïve Bayes Model**"""

# Trainign the Naïve Bayes model using 10 fold cross validation
nbModel <- train(df[,-10], df$factorizedClass, "nb", trControl = trainControl(method = "cv", number = 10))

# Checking the model
nbModel

# Predicting the model
nbPrediction <- predict(nbModel, df[,-10])

# Generating the confusion matrix
confusionMatrix <- confusionMatrix(nbPrediction, df$factorizedClass)
confusionMatrix

"""A confusion matrix is a special contingency table used to evaluate the predictive accuracy of a classifier. Predicted classes are listed in rows & actual classes in columns, w/ counts of respective cases in each cell.

There are two predicted class: Benign and Malignant. 
The "2" in confusion matrix represents as benign and "4" as malignant

We can infer from the above calculation that the specificity for the model is 94% refers that there are proportion of people without the disease who will have a negative result.

Sensitivity value is 97% which means the predicted values were positive when compared to actual positive class.

The accuracy for this model is 96% which means that 96% of the time, the model classified the class benign or malignant correctly.

"""

# Calculation the misclassification rate
misclassificationErr <- mean(nbPrediction != df$factorizedClass)
misclassificationErr

"""The above model classified the patients with either benign or malignant 3% incorrectly.

**Discretising the data**
"""

# Loading the required library
library(infotheo)

# Discritising the data
ef.data <-discretize(df, disc="equalfreq", nbins=3 )

# Factorising the class and replacing old with new factorised attribute
classFactor <- as.factor(ef.data$factorizedClass)
ef.data <- data.frame(ef.data, classFactor)
ef.data <- ef.data[,-10]
head(ef.data)

# Building the new model with discretized data
discretizedModel <- train(ef.data[,-10], ef.data$classFactor, "nb", trControl = trainControl(method = "cv", number = 10))

discretizedModel

discretizedPrediction <- predict(discretizedModel, ef.data[,-10])

discretizedConfusionMatrix <- confusionMatrix(discretizedPrediction, ef.data$classFactor)
discretizedConfusionMatrix

"""The accuracy increased to 97% after discretising the data which is improved from the previous model."""

