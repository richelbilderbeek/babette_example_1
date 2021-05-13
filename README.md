# babette_example_1

Branch   |CRAN                                                                                          |master                                                                                            |develop                                                                                            
---------|----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------
`master` |![cran](https://github.com/ropensci/babette_example_1/workflows/cran/badge.svg?branch=master) |![master](https://github.com/ropensci/babette_example_1/workflows/master/badge.svg?branch=master) |![develop](https://github.com/ropensci/babette_example_1/workflows/develop/badge.svg?branch=master)
`develop`|![cran](https://github.com/ropensci/babette_example_1/workflows/cran/badge.svg?branch=develop)|![master](https://github.com/ropensci/babette_example_1/workflows/master/badge.svg?branch=develop)|![develop](https://github.com/ropensci/babette_example_1/workflows/develop/badge.svg?branch=develop)

A [babette example](https://github.com/richelbilderbeek/babette_examples).

## Example #1: all default

Using all default settings, only specify a DNA alignment.

![Example #1: all default](pics/all_default.png)

```
fasta_filename <- "primates.fas"
save_nexus_as_fasta(
  nexus_filename = beastier::get_beast2_example_filename("Primates.nex"),
  fasta_filename = fasta_filename
)

inference_results <- bbt_run(
  fasta_filename = fasta_filename
)
```

All other parameters are set to their defaults, as in BEAUti.

## Result

![](result.png)
