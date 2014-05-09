rm (list = ls())

filename <- "household_power_consumption.zip"
if (! (filename %in% dir())) {
	download.file (url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
				method = "wget",
				destfile = filename)
	download_date_and_time = Sys.time()
}

textfilename <- "household_power_consumption.txt"
if (! (textfilename %in% dir())) {
	unzip (filename)
}


if (!("whole_data" %in% ls())) {
	whole_data <- read.csv (textfilename, sep=";")
}

whole_data <- subset (whole_data, (Date != "?"))

whole_data$Date <- as.Date (whole_data$Date, format="%d/%m/%Y")
relevant <- subset (whole_data, (Date == "2007-02-01" | Date == "2007-02-02"))
rm (whole_data, filename, textfilename)
save.image (file="household_power_1stFeb2007_to_2ndFeb2007.Rd")





