# davtools
This package includes some helper functions for different tasks...

You can install the package with:

```R
install.packages("devtools") # if you have not installed "devtools" package
devtools::install_github("dizyd/davtools")
```


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

Available datasets are:

- `res_rt`
