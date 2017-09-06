#Hands-on Exercise 1
#---------------Exercise starts-----------------
# 1. Install a package - data.table and give a name of function starting character "d"
#Start of problem 1
install.packages("data.table")
#End of problem 1

# 2. Install and Load package -datasets. Use "women" data frame available in this package.
#    Find number of woman with height more than average but weight less than average
#Start of problem 2
install.packages("datasets")
library("datasets")
women
mean.height<-mean(women$height)
mean.weight<-mean(women$weight)
women_df<-subset(women,height > mean.height & weight < mean.weight)
women_df
#nrow(women_df)
#End of problem 2

# 3. Create a data frame of 15 Indian cities and their population size. You could refer cities and
#    population from this page.http://www.worldatlas.com/articles/thebiggest-cities-in-india.html
#Start of problem 3
input_csv <- read.csv(file="C:\\YYYYYY\\AMMA 2017\\Data\\data_2017\\data_2017\\dataset.csv")
class(input_csv)

######OR######

#Load the required libraries
library("xml2")
library("rvest")

#Save URL in a variable
url = "http://www.worldatlas.com/articles/the-biggest-cities-in-india.html"

#Read the HTML data from the URL
file = read_html(url)

#Read the HTML node corresponding to all the tables in 'table' variable
table = html_nodes(file,"table")

#Get the required table in a separate variable
final <- html_table(table[1],fill=TRUE)

#View the table
View(final)

#End of problem 3

#-------------End of exercise 1------------