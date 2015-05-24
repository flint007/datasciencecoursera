#read from the url then decompress
input <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
dest <- "data/summarySCC_PM25.rds"
if (!file.exists(dest)) {
  #temp <- tempfile()
  download.file(input, dest, "curl")
  #unlink(temp)
}
if (!file.exists("data/exdata_data_NEI_data.zip")) {
  untar(dest)
}
data <- read.table("data/summarySCC_PM25.rds")
