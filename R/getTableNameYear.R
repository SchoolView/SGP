`getTableNameYear` <- 
function(year) {
	if (is.numeric(type.convert(unlist(strsplit(year, "[.]"))[3], as.is=TRUE))) {
		return(paste(unlist(strsplit(year, "[.]"))[2:3], collapse="."))
	} else {
		return(unlist(strsplit(year, "[.]"))[2])
	}		
} ### END getTableNameYear
