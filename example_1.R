# babette example 1: default settings

library(babette)

# Create a FASTA file
fasta_filename <- "primates.fas"
save_nexus_as_fasta(
  nexus_filename = beastier::get_beast2_example_filename("Primates.nex"),
  fasta_filename = fasta_filename
)

inference_results <- bbt_run_from_model(
  fasta_filename = fasta_filename,
  inference_model = create_test_inference_model(),
  beast2_options = create_beast2_options(
    input_filename = "temp_input.xml",
    output_state_filename = "output.state.xml"
  )
)

png("result.png", width = 600, height = 600)
plot_densitree(inference_results$primates_trees, alpha = 1.0)
dev.off()
