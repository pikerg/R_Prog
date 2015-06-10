complete <- function(directory, id=1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id = 1:332' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  ##______________________________________________________
  
  ##Create a list of files in the directory
  polFiles <- list.files(directory, full.names=TRUE)
  
  ##Create an empty subset data table
  dataFrame <- data.frame(id, nobs)
  
  for(i in id){
    dataFrame <- rbind(dataFrame, read.csv(polFiles[i]))
  }
  
  ##return
  dataFrame
}
