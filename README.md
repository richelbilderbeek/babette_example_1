# babette_example_1

Branch   |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)                                                                                               |[![AppVeyor logo](pics/AppVeyor.png)](https://appveyor.com)                                                                                               
---------|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/babette_example_1.svg?branch=master)](https://travis-ci.org/richelbilderbeek/babette_example_1) |[![Build status](https://ci.appveyor.com/api/projects/status/en6tlqa0gk3x1c84/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/babette-example-1/branch/master)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/babette_example_1.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/babette_example_1)|[![Build status](https://ci.appveyor.com/api/projects/status/en6tlqa0gk3x1c84/branch/develop?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/babette-example-1/branch/develop)

A [babette example](https://github.com/richelbilderbeek/babette_examples).

## Example #1: all default

Using all default settings, only specify a DNA alignment.

![Example #1: all default](pics/all_default.png)

```
posterior <- bbt_run(
  "test_output_0.fas"
)
```

All other parameters are set to their defaults, as in BEAUti.

## Result

![](result.png)
