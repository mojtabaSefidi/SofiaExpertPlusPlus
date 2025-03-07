# RQ1: Baseline
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ1 = "RQ1/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ1 = "RQ1/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ1 = "RQ1/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ1 = "RQ1/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ1 = "RQ1/absolute/path/to/kubernetes_conf.json"

# RQ1 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ1


# RQ1 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ1


# RQ1 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ1


# RQ1 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path $rust_conf_RQ1


# RQ1 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ1


# RQ2: Recommenders++
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ2 = "RQ2/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ2 = "RQ2/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ2 = "RQ2/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ2 = "RQ2/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ2 = "RQ2/absolute/path/to/kubernetes_conf.json"

# RQ2 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path $corefx_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path $corefx_conf_RQ2


# RQ2 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path $coreclr_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path $coreclr_conf_RQ2


# RQ2 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path $roslyn_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path $roslyn_conf_RQ2


# RQ2 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path $rust_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path $rust_conf_RQ2


# RQ2 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RecOwnRec  --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec  --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec  --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path $kubernetes_conf_RQ2
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path $kubernetes_conf_RQ2



# RQ3: FarAwareRec
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ3 = "RQ3/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ3 = "RQ3/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ3 = "RQ3/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ3 = "RQ3/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ3 = "RQ3/absolute/path/to/kubernetes_conf.json"

# RQ3 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ3

# RQ3 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ3

# RQ3 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ3

# RQ3 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ3

# RQ3 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ3


# RQ4_2: Hoarded2Rec
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ4_2 = "RQ4_2/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ4_2 = "RQ4_2/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ4_2 = "RQ4_2/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ4_2 = "RQ4_2/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ4_2 = "RQ4_2/absolute/path/to/kubernetes_conf.json"

# RQ4_2 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ4_2

# RQ4_2 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ4_2

# RQ4_2 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ4_2

# RQ4_2 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ4_2

# RQ4_2 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ4_2


# RQ4_3: Hoarded3Rec
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ4_3 = "RQ4_3/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ4_3 = "RQ4_3/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ4_3 = "RQ4_3/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ4_3 = "RQ4_3/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ4_3 = "RQ4_3/absolute/path/to/kubernetes_conf.json"

# RQ4_3 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ4_3

# RQ4_3 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ4_3

# RQ4_3 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ4_3

# RQ4_3 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ4_3

# RQ4_3 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ4_3


# RQ4_4: Hoarded4Rec
# Update the paths in the following variables based on the corresponding configuration file.

$corefx_conf_RQ4_4 = "RQ4_4/absolute/path/to/corefx_conf.json"
$coreclr_conf_RQ4_4 = "RQ4_4/absolute/path/to/coreclr_conf.json"
$roslyn_conf_RQ4_4 = "RQ4_4/absolute/path/to/roslyn_conf.json"
$rust_conf_RQ4_4 = "RQ4_4/absolute/path/to/rust_conf.json"
$kubernetes_conf_RQ4_4 = "RQ4_4/absolute/path/to/kubernetes_conf.json"

# RQ4_4 CoreFX Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $corefx_conf_RQ4_4

# RQ4_4 CoreCLR Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $coreclr_conf_RQ4_4

# RQ4_4 Roslyn Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $roslyn_conf_RQ4_4

# RQ4_4 Rust Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $rust_conf_RQ4_4

# RQ4_4 Kubernetes Simulations
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path $kubernetes_conf_RQ4_4
