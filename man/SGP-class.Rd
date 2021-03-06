\name{SGP-class}
\docType{class}
\alias{SGP-class}
\alias{is.SGP}
\title{Class "SGP"}
\description{The formal S4 class for SGP. This class stores the data object for use with the functions \code{\link{analyzeSGP}}, \code{\link{combineSGP}}, \code{\link{summarizeSGP}},
and \code{\link{visualizeSGP}}. The SGP class contains and organizes all the results associated with SGP analyses. \code{\link{is.SGP}} tests for membership for this class.}

\section{Usage}{
Objects can be created by calls of the form \code{new("SGP", ...)}, but this is not encouraged. To instantiate a new instance of SGP class use the function \code{\link{prepareSGP}} instead.

\code{is.SGP(x)}
}

\section{Slots}{
  \describe{
    \item{\code{Data}:}{A data.table including student-level data in a (long) format. For annual testing, each VALID_CASE, CONTENT_AREA, YEAR, ID combination represents a unique case in the data. For
    instances with multiple tests within a year, each VALID_CASE, CONTENT_AREA, YEAR, ID, WITHIN_YEAR combination represents a unique case in the data. See sgpData_LONG for an exemplar data set}
    \item{\code{Data_Supplementary}:}{A list (possibly NULL) providing additional data.tables containing student level multiple-membership lookup tables.
    For example, sgpData_INSTRUCTOR_NUMBER provides student teacher linkages and can be embedded in this slot using a list that contains it.}
    \item{\code{Names}:}{A data.frame with five columns: 'names.provided', 'names.sgp', 'names.type', 'names.info', 'names.output'. This data.frame is used as a lookup table to translate
    state specific variable names to SGP variable names as well as provide information for summarizeSGP on the types of summary tables to produce.}
    \item{\code{SGP}:}{A list including the output from \code{\link{analyzeSGP}}}
    \item{\code{Summary}:}{A list including the output from \code{\link{summarizeSGP}}}
    \item{\code{Version}:}{A list of meta-data including the version of the SGP package used to construct the SGP object and the date the object was created.}
  }
}

\details{
  \describe{
    \item{list.null:}{combines class \code{list} and class \code{NULL}
  }
 }
}

\author{Jonathan P. Weeks \email{weeksjp@gmail.com}, Adam Van Iwaarden \email{avaniwaarden@nciea.org} and Damian W. Betebenner \email{dbetebenner@nciea.org}}

\seealso{
\code{\link{prepareSGP}}
}
\keyword{classes}
