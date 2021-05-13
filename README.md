# babette_example_1

Branch   |CRAN                                                                                                  |master                                                                                            |develop                                                                                            
---------|------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------
`master` |[![cran](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/cran.yaml/badge.svg?branch=master)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/cran.yaml)|[![master](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/master.yaml/badge.svg?branch=master)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/master.yaml)|[![develop](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/develop.yaml/badge.svg?branch=master)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/develop.yaml)
`develop`|[![cran](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/cran.yaml/badge.svg?branch=develop)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/cran.yaml)|[![master](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/master.yaml/badge.svg?branch=develop)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/master.yaml)|[![develop](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/develop.yaml/badge.svg?branch=develop)](https://github.com/richelbilderbeek/babette_example_1/actions/workflows/develop.yaml)

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

