# davtools
This package includes some helper functions for different tasks...

## Installation

You can install the development version of davtools from [GitHub](https://github.com/) with:


```R
install.packages("devtools") # if you have not installed "devtools" package
devtools::install_github("dizyd/davtools")
```
## Functions

So far these functions are available (use `?function_name` to see what they are doing):

- `print_bf()`: print Bayes Factors in Markdown files
- `make_df_readme()`: create summary of a data.frame in form of a Markdown table
- `mean_sd()`:  print mean and standarddeviation of a variable in Markdown files
- `RMSE()`: compute the root-mean-squared-error (RMSE) between two numeric variables
- `expand_grid_unique()`: make a grid of uniqe factor combinations (i.e., ignoring order of factors)
- `sigma_tau()`: transform sigma to tau (i.e. precision in JAGS) or the other way around
- `flattenlist()`: flatten a highly nested list as returned by `foreach()` into a simple list
- `install_n_load_packages()`: load packages and install missing packages if necessary
- `save_results()`:  save an R object as `.Rdata` with the current date automatically appended to the file name


## Datasets

Available datasets are:

- `res_rt`


## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(davtools)

RMSE(x = rnorm(100),
     y = rnorm(100))



mean_sd(rnorm(100,23,10))


print_bf(17286345)



```

