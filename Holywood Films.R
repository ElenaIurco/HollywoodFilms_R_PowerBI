df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

# Having a look at the dataset

View(df)

# Importing the tidyverse library

library(tidyverse)

# Check the data types

str(df)

# Check for missing values

colSums(is.na(df))


# Drop missing values

df <- na.omit(df)

# Check to ensure the rows have been removed

colSums(is.na(df))

# Summary Statistics

summary(df)

# Create a scatter plot

ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

# Bar chart

ggplot(df, aes(x=Year)) + geom_bar()

# Exported cleaned data

write.csv(df, "clean_df_asg.csv")

