\name{ITEMAN1}
\alias{ITEMAN1}
\title{
Classical Item Analysis for Multiple-Choice Test Items
}
\description{
Classicial Item Analysis for Multiple-Choice Test Items
}
\usage{
ITEMAN1(data, key, options, ngroup = ncol(data) + 1, correction = TRUE)
}
\arguments{
  \item{data}{
a data frame with \emph{N} rows and \emph{m} columns, with \emph{N} denoting the number of subjects and \emph{m} denoting the number of items.
}
  \item{key}{
a vector of answer key with a length of \emph{m}
}
  \item{options}{
a vector of response options for the test such as c("A","B","C","D")
}
  \item{ngroup}{
number of score groups to be use for plotting the item trace lines
}
  \item{correction}{
TRUE or FALSE. If it is TRUE, then an adjustment is made for point-biserial correlation.
}
}
\details{
To be added later.
}
\value{
    \item{plots}{a list object storing the item trace line plots for each item}
}

\author{
Cengiz Zopluoglu
}

\seealso{
\code{\link{ITEMAN2}} for classical item analysis of polytomously scored items
}
\examples{

require(ITEMAN)

data(dichotomous)
head(dichotomous)
str(dichotomous)

# Key response vector

key <- c("A","D","C","B","C","B","C","D","A","D","C","A","D","C","A",
          "B","D","B","A","C","A","A","C","B","C","B","D","A","A","A",
          "C","B","B","A","B","D","D","A","D","C","D","A","B","B","C",
          "D","B","C","C","B","D","A","C","B","A","D")

# Use ITEMAN1 function to run the item analysis

item.analysis <- ITEMAN1(data=dichotomous,
                         key=key,
                         options=c("A","B","C","D"),
                         ngroup=20,
                         correction=FALSE)

item.analysis$plots[[1]]   # Item Trace Line for the first item

# item.analysis$plots[[2]]   # Item Trace Line for the second item
# item.analysis$plots[[3]]   # Item Trace Line for the third item
# item.analysis$plots[[4]]   # Item Trace Line for the fourth item
# item.analysis$plots[[5]]   # Item Trace Line for the fifth item
# item.analysis$plots[[6]]   # Item Trace Line for the sixth item
# item.analysis$plots[[7]]   # Item Trace Line for the seventh item
# item.analysis$plots[[8]]   # Item Trace Line for the eigth item
# item.analysis$plots[[9]]   # Item Trace Line for the ninth item
# item.analysis$plots[[10]]  # Item Trace Line for the tenth item

}
