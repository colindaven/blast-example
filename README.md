# Blast example 

A basic Blast pipeline using Nextflow. Here a working SLURM example to blast against the nt database (you'll need to download nt separately).

[![Build Status](https://travis-ci.org/nextflow-io/blast-example.svg?branch=master)](https://travis-ci.org/nextflow-io/blast-example)

## Get started 

Install Nextflow 

    curl https://get.nextflow.io | bash 


## Step 0: Prepare paths in scripts and edit all config files in your environment

## Step 1: Run using the SLURM script

sbatch run_nextflow_blast_SLURM.sh x.fasta
  

## Step 2: Polish the output

Reformat the output file to get a) counts of best hits, and b) exclude nextflow runtime crap

bash polish_nextflow_blast_output.sh
  

## Step 3: Do ID annotation on the polished data

Requires ~30 GB of RAM

bash runbatch_NextflowBlastIDmapper.sh
  


## Dependencies 

* Java 8 or later 
* Docker 1.10 or later 
