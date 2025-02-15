# Replication Package

The overall steps are

1. Install Relational Git
2. Get the Database
3. Run the Simulations (seeded random or random). Please see the TSE paper for more details on why we used seeded random.
4. Dump the Simulation Data to CSV
5. Calculate the Expertise, Workload, and FaR measures

## Install Relational Git

1) [Install](https://github.com/fahimeh1368/SofiaWL/blob/gh-pages/install.md) the tool and its dependencies.

## Get the Database

1) Restore the backup of the data into MS SQL Server. For each studied project there is a separate database. You can select individual files from the [db backup](https://www.dropbox.com/home/SofiaWL-Databases). Note that some files are over 15GB.
2) Copy the [configuration files](config).
3) Open and modify each configuration file to set the connection string. You need to provide the server address along with the credentials. The following snippet shows a sample of how the connection string should be set.

```json
 {
	"ConnectionStrings": {
	  "RelationalGit": "Server=ip_db_server;User Id=user_name;Password=pass_word;Database=coreclr"
	},
	"Mining":{
 		
  	}
 }
```

4) Open [simulations.ps1](simulations.ps1) using an editor and make sure the config variables defined at the top of the file refer to the correct location of the downloaded config files. 

```PowerShell
# Each of the following variables contains the absolute path of the corresponding configuration file.
$corefx_conf = "absolute/path/to/corefx_conf.json"
$coreclr_conf = "absolute/path/to/coreclr_conf.json"
$roslyn_conf = "absolute/path/to/roslyn_conf.json"
$rust_conf = "absolute/path/to/rust_conf.json"
$kubernetes_conf = "absolute/path/to/kubernetes_conf.json"
```

## Run the Simulations

1) Run the [simulations.ps1](simulations.ps1) script. Open PowerShell and run the following command in the directory of the file

``` PowerShell
./simulations.ps1
```

This script runs all the defined reviewer recommendation algorithms across all projects.

**Note**: Make sure you have set the PowerShell [execution policy](https://superuser.com/questions/106360/how-to-enable-execution-of-powershell-scripts) to **Unrestricted** or **RemoteAssigned**.

## Research Questions

The following sections describe the commands needed to run simulations for each research question. For each simulation, a sample is provided that illustrates how the simulation can be run using the tool.

**Note:** To run the simulations for each of the following research questions, you need to change the config file of all five projects. We suggest creating an exclusive config file for each research question to avoid confusion.

### Simulation RQ1, Baseline: On PRKRs, how well do existing recommenders perform??

On PRKRs, To replicate the performance of recommenders at the replacement level, you should apply the following change to the config file of each project.

```
"PullRequestReviewerSelectionStrategy" : "0:nothing-nothing,-:farreplacerandom-1",
```

In this way, one of the reviewers of PRKRs will be randomly (seeded) replaced with the top-recommended candidate. Then you should run the following commands for each project to simulate the performance of recommenders.

```PowerShell
# Reality
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Reality --conf-path <path_to_config_file>
# cHRev Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --simulation-type "Random" --conf-path <path_to_config_file>
# AuthorshipRec Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# RevOwnRec Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RevOwnRec --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# LearnRec Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# RetentionRec Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# TurnoverRec Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# Sofia Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy Sofia --simulation-type "SeededRandom" --conf-path <path_to_config_file>
#WhoDo recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --simulation-type "SeededRandom" --conf-path <path_to_config_file>
# SofiaWL Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy SofiaWL --simulation-type "SeededRandom" --conf-path <path_to_config_file>
```

**Note**: In order to select between ```Random``` and ```SeededRandom```, adjust the ```--simulation-type``` command. If you want to run the seeded version, set the value of ```--simulation-type``` to ```Random``` for **cHRev** and all the other algorithms to ```SeededRandom```. If you wish to run the random version, set the value of ```--simulation-type``` to ```Random``` for all the algorithms.

---

### Simulation RQ2, Recommenders++: How does adding a reviewer on PRKRs impact the turnover risk and the amount of extra reviewing work?

To run the Recommenders++ strategy, you should apply the following change to the config file of each project.

```
"PullRequestReviewerSelectionStrategy" : "0:nothing-nothing,-:add-1",
```

In the next step, simulate each recommender. Since the Recommenders++ strategy suggests an extra reviewer for all PRKRs and doesn't do any replacement, there is no need to use the ```--simulation-type``` command.

```PowerShell
# AuthorshipRec++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy AuthorshipRec --conf-path <path_to_config_file>
# RevOwnRec++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RevOwnRec --conf-path <path_to_config_file>
# cHRev++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy cHRev --conf-path <path_to_config_file>
# LearnRec++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy LearnRec --conf-path <path_to_config_file>
# RetentionRec++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy RetentionRec --conf-path <path_to_config_file>
# TurnoverRec++ Recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --conf-path <path_to_config_file>
# WhoDo++ recommender
dotnet-rgit --cmd simulate-recommender --recommendation-strategy WhoDo --conf-path <path_to_config_file>
```
---

### Simulation RQ3, FarAwareRec: What is the impact of adding a reviewer on abandoned files and replacing a reviewer on hoarded files for PRKRs?

To run the FarAwareRec approach, you should apply the following change to the projects' config files.

```
"PullRequestReviewerSelectionStrategy" : "0:nothing-nothing,-:addAndReplace-1",
```

Then, you should simulate the FarAwareRec recommender for each project. The ```--simulation-type``` command forces the recommender to replace the same reviewer in all the simulations.

```PowerShell
# FarAwareRec recommender for CoreFX
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_CoreFX_config_file>
# FarAwareRec recommender for CoreCLR
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_CoreCLR_config_file>
# FarAwareRec recommender for Roslyn
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Roslyn_config_file>
# FarAwareRec recommender for Rust
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Rust_config_file>
# FarAwareRec recommender for Kubernetes
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Kubernetes_config_file>
```
---

### Simulation RQ4, HoardedXRec: Can we balance the trade-off between &#916;FaR and Reviewer++ when we recommend an extra reviewer for PRKRs?

To run the HoardedXRec strategy, you should apply the following changes to the config file of each project.

```
"PullRequestReviewerSelectionStrategy" : "0:nothing-nothing,-:addHoarded_X-1",
```

The X parameter should be adjusted based on the recommender. In our paper, we run simulations for X = {2,3,4}. For example, if you want to run the **Hoarded2Rec** recommender, you should change the config files as follows:

```
"PullRequestReviewerSelectionStrategy" : "0:nothing-nothing,-:addHoarded_2-1",
```

After adjusting the config files for all projects, you should run the HoardedXRec approach for each project and X = {2,3,4}. 

```PowerShell
# HoardedXRec recommender for CoreFX
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_CoreFX_config_file>
# HoardedXRec recommender for CoreCLR
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_CoreCLR_config_file>
#HoardedXRec recommender for Roslyn
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Roslyn_config_file>
# HoardedXRec recommender for Rust
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Rust_config_file>
# HoardedXRec recommender for Kubernetes
dotnet-rgit --cmd simulate-recommender --recommendation-strategy TurnoverRec --simulation-type "SeededRandom" --conf-path <path_to_Kubernetes_config_file>
```
---

## Dump the Simulation Data to CSV

Log into the database of each project and run the following command to find the IDs of your simulation.

```SQL
-- Get the Id of the simulation 
SELECT  Id,
	KnowledgeShareStrategyType, 
	StartDateTime,
	EndDateTime
	PullRequestReviewerSelectionStrategy,
	SimulationType 
FROM LossSimulations
WHERE EndDateTime > StartDateTime
ORDER BY StartDateTime DESC
```

To get your simulation results you should run the analyzer using the following command. Substitute the ```<rec_sim_id>``` variable with the Id of your desired recommender, and compare the recommender performance with the actual values, ```<reality_id>```. Note that you can add multiple simulation IDs and separate them using space.
You should also substitute ```<path_to_result>``` and ```<path_to_config_file>``` variables with the path where you want to save the results and the config file of the corresponding RQ and project.

```PowerShell
dotnet-rgit --cmd analyze-simulations --analyze-result-path <path_to_result> --recommender-simulation <rec_sim_id> --reality-simulation <reality_id>  --conf-path <path_to_config_file>
```
