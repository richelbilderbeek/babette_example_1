# Code of example 1
#
# Works under Windows
#
#
#

library(babette)

nexus_filename <- beastier::get_beast2_example_filename("Primates.nex")
fasta_filename <- "primates.fas"
ape::write.FASTA(
  ape::as.DNAbin(
    ape::read.nexus.data(nexus_filename)
  ),
  file = fasta_filename
)


inference_results <- bbt_run_from_model(
  fasta_filename = fasta_filename,
  inference_model = create_test_inference_model()
)

png("result.png", width = 600, height = 600)
plot_densitree(inference_results$primates_trees, alpha = 1.0)
dev.off()
