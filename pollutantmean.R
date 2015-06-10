pollutantmean <- function(directory, pollutant, id=1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files "specdata"
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id=1:332' vector (ignoring NA values)
  ##__________________________________________________________
  
  ##Create a list of files in the directory
  polFiles <- list.files(directory, full.names=TRUE)
  
  ##Create an empty subset data table
  dataFrame <- data.frame()
  
  ##Bind subset together
  for(i in id){
    dataFrame <- rbind(dataFrame, read.csv(polFiles[i]))
  }
  
  polMean <- mean(dataFrame[ , pollutant] , na.rm=TRUE)
  
  ##return
  polMean
}
