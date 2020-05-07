# RNASeqIntro
Introduction of RNA-seq data analysis
> *Note:* This instruction mostly works for MacOSX/Linux systems but not for Windows.

## Install tools
Please refer to [ChIPseqIntro](https://github.com/thegaolab/ChIPseqIntro#install-tools) for the tool installation and environment management.
As of today (May 7, 2020), the version of `cufflinks` is 2.2.1 in `bioconda` and it is only compatible with python 3.6, so let's create new environment of python 3.6. Open `iTerm` and run following commands:
```
conda create -n rnaseq python=3.6
conda activate rnaseq
conda install cufflinks 
```

## Prepare the project folder
Similar to [ChIPseqIntro](https://github.com/thegaolab/ChIPseqIntro#prepare-the-project-folder), the workspace folder is `~/Research` (change to your own workspace if you have a different forlder).
```
cd ~/Research
git clone https://github.com/thegaolab/RNASeqIntro.git
cd RNASeqIntro
```
Now, `~/Research/RNASeqIntro` is your working directory.

## Download sample data
Dataset
