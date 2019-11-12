# Code of example 1
#
# Works under Windows
#
#
#

# Set the RNG seed
rng_seed <- 314
args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 1) {
  arg <- suppressWarnings(as.numeric(args[1]))
  if (is.na(arg)) {
    stop(
      "Please supply a numerical value for the RNG seed. \n",
      "Actual value: ", args[1]
    )
  }
  rng_seed <- arg
  if (rng_seed < 1) {
    stop("Please supply an RNG seed with a positive non-zero value")
  }
}
if (length(args) > 1) {
  stop(
    "Please supply only 1 argument for the RNG seed. \n",
    "Number of arguments given: ", length(args) - 1
  )
}

suppressMessages(library(pirouette))
suppressMessages(library(ggplot2))
library(beautier)

if (1 == 2) {
  setwd("~/GitHubs/pirouette_example_1")
}

root_folder <- getwd()
example_no <- 1
example_folder <- file.path(root_folder, paste0("example_", example_no, "_", rng_seed))
dir.create(example_folder, showWarnings = FALSE, recursive = TRUE)
setwd(example_folder)
set.seed(rng_seed)
testit::assert(is_beast2_installed())
phylogeny <- create_yule_tree(n_taxa = 6, crown_age = 10)

alignment_params <- create_alignment_params(
  root_sequence = create_blocked_dna(length = 1000),
  mutation_rate = 0.1,
  rng_seed = rng_seed
)

experiment <- create_gen_experiment()
experiments <- list(experiment)

# Set the RNG seed
for (i in seq_along(experiments)) {
  experiments[[i]]$beast2_options$rng_seed <- rng_seed
}

# Testing
if (1 == 2) {
  for (i in seq_along(experiments)) {
    experiments[[i]]$inference_model$mcmc <- create_mcmc(chain_length = 20000, store_every = 1000)
  }
}

pir_params <- create_pir_params(
  alignment_params = alignment_params,
  experiments = experiments
)

# Make Peregrine friendly
pir_params <- peregrine::to_pff_pir_params(pir_params)
rm_pir_param_files(pir_params)

errors <- pir_run(
  phylogeny,
  pir_params = pir_params
)

utils::write.csv(
  x = errors,
  file = file.path(example_folder, "errors.csv"),
  row.names = FALSE
)

pir_plot(errors) +
  ggsave(file.path(example_folder, "errors.png"), width = 7, height = 7)

pir_to_pics(
  phylogeny = phylogeny,
  pir_params = pir_params,
  folder = example_folder
)

pir_to_tables(
  pir_params = pir_params,
  folder = example_folder
)