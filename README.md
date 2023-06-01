![CRISPRAnalyzeR](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzR_logo5.png)
# CRISPRAnalyzeR - Fully-interactive Analysis and Documentation Suite for Pooled CRISPR Screens
Welcome to the CRISPRAnalyzeR Github page!

CRISPRAnalyeR is a web-based, interactive suite for the analysis and documentation of pooled CRISPR Screens.


---
---

**Attention: CRISPRAnalyzeR is currently with limited support.**

---
---


**See [CRISPRAnalyzeR](http://crispr-analyzer.dkfz.de) in action!**

**Check out the [Wiki Page](https://github.com/boutroslab/crispr-analyzer/wiki) or scroll down for more information and help**

__See our [Manuscript](http://biorxiv.org/content/early/2017/02/20/109967) on biorxiv.org__ http://biorxiv.org/content/early/2017/02/20/109967

---

# <i class="fa fa-info" aria-hidden="true"></i> CRISPRAnalyzeR is now available for download - see below or check out the wiki.

---

**You can use the provided CRISPRAnalyzeR web-service or download the suite for installation within your lab.**

CRISPRAnalyzeR has been developed to provide a fully-interactive and exploratory analysis of pooled CRISPR Screens with user experience in mind.
You can analyse your screen using 8 different analysis methods as well as perform gene annotation, gene set analysis and get detailed information about your sgRNAs - all in a convenient web-browser interface.

**All you need is your sequencing data and the a file describing your pooled CRISPR screen library (we provide you with the most common ones) - and you can go from rawdata to potential followup candidates**

---

CRISPRAnalyzeR uses a **guided-analysis** approach. This means you will be **guided through the analysis**.

CRISPAnalyzeR consists of **four sections**:

- Screen and Sequencing Quality Estimation
- Hit Calling using multiple published hit calling algorithms
- Hit Confirmation which includes information from up to 26 external data ressources
- Download of the interactive report that provides a comprehensive documentation of your screen and analysis  

### The principle CRISPRAnalyzeR Guided-Analysis Workflow
<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_workflow4.png" alt="alt text" width="100%" style="align:center;" >


# What CRISPRAnalyzeR offers you

CRISPRAnalyzeR assists you with the analysis of your screening data.
It contains **4 different sections**, each offering interactive visualizations and tables.


<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_5columns_single.png" alt="alt text" width="80%" style="align:center;" >

## Up to eight Hit Calling Algorithms

CRISPRAnalyzeR combines the power of several CRISPR Analysis Workflows and **incorporates them into a streamlined and convenient workflow.**

**You run one analysis and get the information of up to 8 different analysis workflows**

We implemented multiple available analysis workflows

- DESeq2 (based on gene-level read counts)
- MAGeCK
- sgRSEA
- edgeR
- BAGEL
- ScreenBEAM
- Mann-Whitney Test


## Hit Confirmation

__Use up to 26 external data ressources to enrich information about your favourite candidate - all information is available within the application and can be saved to your report for documentation__

<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_gene_annotation.png" width="50%">

## Interactive Report

Finally you can document the screening data and analysis using the interactive report.  

You can find an example report __[HERE](http://www.dkfz.de/signaling/crispranalyzer/report/)__.  

[![CRISPRAnalyzeR Report Preview](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_YT_report1.png)](https://www.youtube.com/embed/eusAj4LrSik)


---


# How to download the CRISPRAnalyzeR

#### You can also check our [live demo](http://crispr-analyzer.dkfz.de), which you can also use to analyse your screening data.

CRISPRAnalyzeR can be downloaded as as source code and is also available for a **platform-independent installation** as pre-configured docker image.


__Please have a look at the installation tutorials below, which will assist you with the installation__


__We encourage users to obtain the pre-configured application which is described below.__


**The idea of installing CRISPRAnalyzeR is to provide a single installation within a Lab/Institute, so that everyone can access it via the web browser.  
However, you can also also install CRISPRAnalyzeR on your local machine.**

### Minimum System Requirements
CRISPRAnalyzeR is based on R Shiny and uses many different R packages and tools which are listed separately.
For a source code installation, we recommend the use of Ubuntu.


Type | Source Code Installation | Docker Container Installation
----|---|----
Operating System|Ubuntu|Any supported OS by Docker
CPU|Dual Core (Quad Core recommended)| Dual Core (Quad Core recommended)
RAM|8 GB| 8GB
HDD|512 GB (SSD recommended)| 512 GB (SSD recommended)
Additional Software Packages | **See list below!** | All included in container



### Licenses
CRISPRAnalyzeR is published under the GPL-2 license and is **free for non-commercial use only**.  

While CRISPRAnalyzeR does not require an additional license for commercial use itself, _some included tools strictly require additional licensing_.  
**Please note that Highcharts, the COSMIC database and the Enrichr API access require additional licensing for commercial use**.  
**The authors of this application are not responsible for licensing or license issues - please contact the corresponding companies directly.**.

__Highcharts Licensing Options__
https://shop.highsoft.com/  
Please also have a look here: https://github.com/jbkunst/highcharter/issues/254#issuecomment-277253126

__COSMIC Licensing Options__
https://cancer.sanger.ac.uk/cosmic/license

__ENRICHR Licensing Options__
http://www.ip.mountsinai.org/


__It is your responsibility to obtain all required licenses in case of commercial usage!__


<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/large_h-trans.png" width="30%">



#### Latest Version and Changelog  


```
Version 1.51 (latest)
- fixes regarding FASTQ handling, now supports NCBI type of FASTQ
- deactivated fast FASTQ handling due to incopatibility

Version 1.50
- many fixes with mouse libraries
- improoved speed
- added new sample data for cell fittnes screen

Version 1.40
- added new library interface for pre-selection of screens
- added pre-made library re-evaluation for addgene-provide libraries
- fixed smaller bugs
- speed increase for some functions
- improved essential genes information
- added Advanced Options to skip FASTQ Quality Report, create own regular expression, use bad-quality libraries

Version 1.20
- added new user interface for data upload
- fixed many sgRNA libraries
- added Addgene sgRNA libraries for easier use
- started with BETA feature for gene essentiality
- improved overall speed

Version 1.17
- fixed BAGEL issues
- added the possibility to download all data from the DATA REVIEW tab
- improved the performance ovberall
- replaced FASTQ handling by new FASTQ and SAM parser based oN RUST -> speed increase by 6x!
- improved report
- added Visualization of GenomeCRISPR data in Hit Confirmation -> Gene Overview
- added Essential / Non-essential gene Read count in Quality Control
- added Essential/non-essential Log2 FC in Hit Calling section -> you can compare the effect to any published CRISPR screened cell line in GenomeCRISPR

OLDER VERSIONS are not available anymore.

```



## User-Interface based installation (recommended) on macOS and Windows

__Installation Tutorial__

<a href="https://www.youtube.com/watch?v=jlhpsN65-_s&t" target="_blank"><img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_YT_kitematic.png" width="40%" alt="CRISPRAnalyzeR: How to install it using Kitematic"></a>


This installation will use a tool called Kitematic to offer a user interface to start, stop or change settings of the CRISPRAnalyzeR.  
In principal, you first install and start docker, then install and start kitematic and finally download CRISPRAnalyzeR.  

__Individual Steps__

1. __Download the Docker Installer__ for your operating system from the [Docker Website](https://www.docker.com/community-edition#/download)
2. __Install the downloaded file__
3. __Start Docker__ on your machine (e.g. by double clicking on the Docker icon on windows or Mac). 
	A small docker symbol in the taskbar will tell you that docker is ready.
	
5. __Download the [Docker Community Edition (CE)](https://www.docker.com/community-edition)__ from the docker [website](https://www.docker.com/)
6. __Install the Docker COmmunity Edition
7. __Start Kitematic__, which comes with it, otherwise you can get it [here](https://kitematic.com/)
8. __Search for CRISPRAnalyzeR__  
	  
	![Search for CRISPRAnalyzeR](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_search.png)  
	
	__ATTENTION__ In case you will see a red error message like `Could not connect to xxxx`, this is an indication that you are behind a proxy server which blocks the access!  
	If this is the case, please use a network connection without a proxy OR follow the __[Installation Procedure for Advanced Users](https://github.com/boutroslab/CRISPRAnalyzeR#command-line-installation-advanced-users)__
	
9. __Select CREATE__ to install the latest stable version of CRISPRAnalyzeR to install CRISPRAnalyzeR  
10. __OPTIONAL__ If required, you can adjust a couple of parameters, such as a proxy server.  
	All parameters are described in more detail __[below](https://github.com/boutroslab/CRISPRAnalyzeR#available-paramaters-to-start-crispranalyzer)__  
	To adjust these parameters, click on the __Settings__ tab on the upper right corner:  
	
	![CA_overview](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_overview.png)  
	
11. Hit the __START__ button to start CRISPRAnalyzeR

12. __Adjust the port__ :
	
	Before using CRISPRAnalyzeR, you need to adjust the ports by going to Settings -> Ports as illustrated below:  
	
	![CA_port1](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_ports_new.png)
	
	Then proceed by clicking on __SAVE__, which will update the software:
	
	![CA_port2](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_ports_new2.png)

13. __Copy http://localhost:8000/CRISPRAnalyzeR/ to the webbrowser__ to access CRISPRAnalyzeR.
	
	

14. __Now you successfully installed and started CRISPRAnalyzeR!__



### How to Start, Stop or Restart CRISPRAnalyzeR

Hit the __start, stop or restart__ button.  

![CA_overview](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_overview.png)



### How to adjust the CRISPRAnalyzeR settings

As mentioned [below](https://github.com/boutroslab/CRISPRAnalyzeR#available-paramaters-to-start-crispranalyzer), CRISPRAnalyzeR can be adjusted with several parameters.  
With the user-interface provided by Kitematic, you can easily adjust all parameters from the Settings section.  

Open Kitematic and click on the CRISPRAnalyzeR image - you will see a SETTING button on the top right.  

![CA_Options](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_settings.png)



#### ATTENTION: For some genome-wide screens, the available "C Stack" memory might not be sufficient to render the report. In this case, [please increase the stack limit as shown HERE](https://github.com/boutroslab/CRISPRAnalyzeR/#increasing-the-core-ulimit).


### Install specific version

1. Search for CRISPRAnalyzeR in the Kitematic UI repository
2. Click on the three dots for more options  
	
	![More options](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_moreoptions.png)  
	
3. Click on "Selected version"
4. Select the version you want  
	
	![Version](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_version.png)  
	
5. Click on the X at the bottom right
6. Click CREATE


---

## Command Line Installation (advanced users)

#### Installation Tutorial macOS
<a href="https://youtu.be/IFPojCjW0ns" target="_blank"><img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_YT_macos.png" width="40%" alt="CRISPRAnalyzeR: How to install command line version"></a>



1. Download the Docker Installer for your operating system from the [Docker Website](https://www.docker.com/products/overview)
2. Install the downloaded file
3. Start Docker on your machine (e.g. by double clicking on the Docker icon on windows or Mac). 
   A small docker symbol in the taskbar will tell you that docker is ready.
4. Open a terminal or command line (macOS: Terminal; Windows: cmd.exe)
5. Download and run the CRISPRAnalyzeR directly from the online repository (without additional settings)
   ```
   docker run --rm -p 8000:8000 boutroslab/crispranalyzer:latest
   ```
   It is important to keep the __8000:8000__ as this tells the software how to access it via the browser.  
   By default, CRISPRAnalyzeR can be accessed by the web-browser using __http://localhost/CRISPRAnalyzeR__.
   
   If you want to run a specific version, just replace the `latest` with the specific version number
   
   ```
   docker run --rm -p 8000:8000 boutroslab/crispranalyzer:1.40
   ```
   
   All pre-configured versions are listed at the [Docker Hub](https://hub.docker.com/r/boutroslab/crispranalyzer/tags/).  
   
   #### ATTENTION: For some genome-wide screens, the available "C Stack" memory might not be sufficient to render the report. In this case, [please increase the stack limit as shown HERE](https://github.com/boutroslab/CRISPRAnalyzeR/#increasing-the-core-ulimit).

   
   
6. __Familiarize with the parameters you can use to start the CRISPRanalyzeR - they offer proxy settings or additional databases and local sgRNA re-evaluation.__

7. Access CRISPRAnalyzeR using your web-browser - __http://localhost/CRISPRAnalyzeR__

#### ATTENTION: For some genome-wide screens, the available "C Stack" memory might not be sufficient to render the report. In this case, [please increase the stack limit as shown HERE](https://github.com/boutroslab/CRISPRAnalyzeR/#increasing-the-core-ulimit).



CRISPRAnalyzeR re-evaluates every sgRNA during the analysis process. Thus, it needs to map each sgRNA against the reference genome.  
This can be performed locally (does not require a fast internet connection) or via e-crisp.org (requires fast internet connection >10 mbit).

By default, CRISPRAnalyzeR uses e-crisp.org to re-evaluate your sgRNAs. If you want to perform local sgRNA re-evaluation, please see below.


## Update CRISPRAnalyzeR to the latest version

In case you would like to update CRISPRAnalyzer to the latest version, just type

```
  docker pull boutroslab/crispranalyzer:latest
```

to download the latest version and then run it as described above:

 ```
   docker run --rm -p 8000:8000 boutroslab/crispranalyzer:latest
 ```

## How to Start and Restart the CRISPRAnalyzeR

You can start and stop the CRISPRanalyzeR using docker.


---

# Available Paramaters to start CRISPRAnalyzeR

CRISPRAnalyzeR has been designed to be installed once on a machine and then accessed via a webbrowser. Therefore, you can adjust all parameters during the start of the CRISPRAnalyzeR.



Parameter | Meaning | Default Value | Accepted Values 
----------|---------|---------------|-----------------
__websockets_behind_proxy__ | use Websocket protocol | TRUE | TRUE or FALSE
__downloadlogs__ | Allow the download of LOG files | RTRUE| TRUE or FALSE
__verbose_logfiles__ | output of log files | TRUE | TRUE or FALSE
__COSMIC_database__ | Filename of the COSMIC Mutant database (CosmicMutantExport.tsv) | NULL | CosmicMutantExport.tsv
__EnrichR__ | Whether to enable or disable the Enrichr API access | TRUE | TRUE or FALSE
__EnrichR_URL__ | URL to the Enrichr API | http://amp.pharm.mssm.edu/Enrichr/ | Any URL
__max_upload__ | Maximum size of uploaded files in Megabytes | 4096 | any number  
__bowtie_threads__ | Number of bowtie2 threads for mapping | 2 | any number, must be equal or smaller the number of CPU cores
__proxy_url__ | URL to your Proxy server | NULL | URL or NULL to inactivate
__proxy_port__ | Proxy server Port | NULL |Port number of NULL to inactivate

## How to use the parameters with the recommended Kitematic installation

In Kitematic, just go to the settings tab and adjust the options.  
__Be sure to hit the save button__ after you have adjusted the settings.

![CA_Options](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CA_kitematic_settings.png)


### How to use the parameters with the command line

All parameters can be set during the start by the following:

```bash
docker run --rm -e PARAMETER1 -e PARAMETER2 -e PARAMETER3 -p 8000:8000 boutroslab/crispranalyzer:latest
```

this means you always need to add `-e` in front of the parameters, e.g.:

```bash
-e websockets_behind_proxy=TRUE -e verbose_logfiles=TRUE -e bowtie_threads=4
```

e.g.

```bash
docker run --rm -e bowtie_threads=4 -e proxy_url="http://thisismyproxy.com" -e proxy_port=80 -p 8000:8000 boutroslab/crispranalyzer:latest
```




## Installation Tutorial Windows


---

# Source Code

For a source code installation you will need to have docker installed, as this will build your own docker image out of the source code and additional dependencies.

#### Additional Required Software

Software | Version | Link 
---------|---------|------
Bowtie2 | 2.29 | http://bowtie-bio.sourceforge.net/bowtie2/index.shtml
CRISPR ReEvaluation Tool | Latest | https://github.com/boutroslab/Supplemental-Material
PERL | 5 | https://www.perl.org/
Python | 2.7.11 | https://www.python.org/ 
Python Scipy | latest | https://www.scipy.org/


## How to build the docker image for CRISPRAnalyzeR

Navigate to the folder where this dockerfile is located. This will be the folder that is used to create the docker image file.

In general, CRISPRAnalyzeR source code will be retrieved by cloning. In principle, this can be changed to use any fork of CRISPRAnalzyeR, as long as the file structure remains the same!

### Start Docker

Start docker and make sure you have set a proxy, if required. 

### Download the required dependencies 

First download the following dependencies to the directory containing this dockerfile

```bash
wget https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/shiny-server-1.5.2.837-amd64.deb
wget http://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.2.9/bowtie2-2.2.9-linux-x86_64.zip
wget https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.2.0/bowtie-1.2-linux-x86_64.zip
wget http://downloads.sourceforge.net/project/mageck/0.5/mageck-0.5.5.tar.gz
```

### Clone the CRISPRAnalyzeR source code

Now clone the CRISPRAnalyzeR project into the caR-release-git folder and sync the source to caR-release. 
The content of caR-release is the source code of CRISPRAnalyzeR and will be used for building the docker image.

```bash
mkdir ./caR-release

git clone git@github.com:boutroslab/CRISPRAnalyzeR.git ./caR-release-git

rsync -rav caR-release-git/ caR-release/source --exclude=.git
```

### Build the image

Finally build the image, which takes 1-3 hours depending on the computer and network speed.
```bash
docker build -t CRISPRAnalyzeR .
```

## Test the image

```bash
docker run --rm -p 8000:8000 CRISPRAnalyzeR
```

Check it by opening a browser tab and navigating to 

```
http://localhost/CRISPRAnalyzeR
```

If this works you have successfully created a CRISPRAnalyzeR docker image!


---

## How to use the COSMIC Database and Enrichr API

### COSMIC (Catalogue Of Somatic Mutations In Cancer)

__Please note: COSMIC Database access only works in the commmand line installation.__

The COSMIC database can be found [here](https://cancer.sanger.ac.uk/cosmic).
By default, we do not provide the COSMIC database due to licensing compatibility.
In case you want to use the COSMIC database, please proceed as follows.

- Visit the [COSMIC Database Website](https://cancer.sanger.ac.uk/cosmic)
- If you aim for a commercial use, please see the [COSMIC Licensing Information Page](https://cancer.sanger.ac.uk/cosmic/license)
- Head to the [COSMIC download section](https://cancer.sanger.ac.uk/cosmic/download)
- Download the __COSMIC Mutation Data__ database file
- Extract the CosmicMutantExport.tsv.gz file to the __a database__ folder _*DATABASEFOLDER*_ that you can define on your own
- Tell CRISPRAnalyzeR during the start that you have an external folder with your database files using the -v parameter __-v *DATABASEFOLDER*:/srv/shiny-server/CRISPRAnalyzeR/database__ and that you would like to have the COSMIC database included via the parameter __-e COSMIC_database="CosmicMutantExport.tsv"__

Please replace  _*DATABASEFOLDER*_ byt the full path to the directory where you have placed the CosmicMutantExport.tsv!

  ```bash
  docker run --rm -v *DATABASEFOLDER*:/srv/shiny-server/CRISPRAnalyzeR/database -e COSMIC_database="CosmicMutantExport.tsv" -p 80:8000 boutroslab/crispranalyzer:latest
  ```

*Please note that the COSMIC database is loaded during the analysis procedure and requires 1 GB of RAM.*

### Enrichr API
[Enrichr](http://amp.pharm.mssm.edu/Enrichr/) offers API access for a gene set analysis.
By default, CRISPRAnalyzeR has the Enrichr API access ENABLED.
You can DISBALE the Enrichr API access during the start by setting the paratemer __-e disable_EnrichR=TRUE__
```bash
 docker run --rm -e disable_EnrichR=TRUE -p 8000:8000 boutroslab/crispranalyzer:latest
```

Please not that you require a license for commercial use.
A license can be obtained by contacting [the Mount Sinai Technology Development](http://www.ip.mountsinai.org/).

More information can be found at the [Enrichr Help Page](http://amp.pharm.mssm.edu/Enrichr/help#terms).

---

## How to perform local sgRNA Re-evaluation

__Please note: local sgRNA re-evaluation is only supported in the command line installation, not in the Kitematic installation__

CRISPRAnalyzeR re-evaluated your sgRNAs during the analysis process. By default, this is done by sending the sgRNAs to www.e-crisp.org and downloading the files again.
However, you can also perform a local re-evaluation of your sgRNAs!

You can download the human reference genome (or mus musculus) and tell CRISPRAnalyzeR to perform the re-evaulation locally on your computer. For this, you require at least 60GB of disk space and a pretty fast computer.

__Step 1: Download the reference genome__  
Download the reference genome you need
* [Homo Sapiens](http://www.e-crisp.org/E-CRISP/CLD-DB/homo_sapiens.tar.gz)
* [Mus Musculus](http://www.e-crisp.org/E-CRISP/CLD-DB/mus_musculus.tar.gz)
* [Danio Rerio](http://www.e-crisp.org/E-CRISP/CLD-DB/danio_rerio.tar.gz)

__Step 2: Extract the files to a folder (*DATABASEFOLDER*) of your desire__
Extract the downloaded file using gunzip (macOS/Linux) or Zip (Windows) to a _*DATABASEFOLDER*_ of your desire.
Please note that you need to know the exact path to the _*DATABASEFOLDER*_!
e.g. /home/user1/databases  
__If you have already setup the COSMIC Database, please make sure you extract the file into that same folder.__

Please note: The folder structure MUST be kept, when you extract the file into
e.g. __/home/user1/databases__  
this is your _*DATABASEFOLDER*_  

it will create a folder structure like that:  
e.g. **/home/user1/databases/**_data/scripts/crispr_databases/homo_sapiens_


__Step 3: start CRISPRAnalyzeR and tell it where you files are__
Using the command line, start CRISPRAnalyzeR and provide the database path _*DATABASEPATH*_ - so that CRISPRAnalyzeR know where to look for your data. 

__Please note: if you have setup the COSMIC database already, just extract the files in the same folder and you do not need to do anything in addition__


Again, replace _*DATABASEFOLDER*_ with your absolute path.  

```bash
docker run --rm -v *DATABASEFOLDER*:/srv/shiny-server/CRISPRAnalyzeR/database -p 8000:8000 boutroslab/crispranalyzer:latest
```



## How to perform an Analysis using CRISPRAnalyzeR
*YOUTUBE VID HERE*

---

## Download Sample Data

CRISPRAnalyzeR comes with read count sample data that can be accessed from the help on the data upload section.

Moreover, we offer additional sample data that you can download from our website:

- Drug Resistance Screen Data from CRISPR Library Designer
- Essential Genes Screen Data using the TKOv1 library

### Drug Resistance Screen Data (12000 sgRNAs)
This data was published before in
[F. Heigwer\*, T. Zhan\*, M. Breinig, J. Winter, D. Brügemann, S. Leible, M. Boutros, CRISPR library designer (CLD): software for multispecies design of single guide RNA libraries, Genome Biol., 2016, DOI:10.1186/s13059-016-0915-2](http://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0915-2 "Access manuscript directly")

#### Download Read Count Data
You can download pre-made read count files for data analysis from [here](https://github.com/boutroslab/CRISPRAnalyzeR/tree/master/sampledata/readcount).  
These include __four__ read count text files as well as the __sgRNA library file__ in FASTA format.  

You can directly use these files with the default parameters within CRISPRAnalyzeR.  

#### Download FASTQ Sequencing Data
You can download FASTQ Sequencing files from [here](http://www.dkfz.de/signaling/crispranalyzer/CRISPRAnalyzeR_NGSFASTQ_sample-data.zip).  
These include __four__ NGS raw data files in compressed fastq format as well as the __sgRNA library file__ in FASTA format.  

You can directly use these files with the default parameters within CRISPRAnalyzeR.  


### Toronto Knockout Library Data (90000 sgRNAs)

This data was published in
[Steinhart,Z. et al. (2016) Genome-wide CRISPR screens reveal a Wnt-FZD5 signaling circuit as a druggable vulnerability of RNF43-mutant pancreatic tumors. Nat. Med.](http://www.nature.com/nm/journal/vaop/ncurrent/full/nm.4219.html)

#### Download Read Count Data
You can download raw read count data including a TKO sgNRA library FASTA file from [here](https://github.com/boutroslab/CRISPRAnalyzeR/tree/master/sampledata/readcount_TKO)  

In order to use these files, you need to adjust the gene identifier from `Ensembl Gene ID `to `HGNC Symbol` in the Analysis Settings.  

---

## Pre-made sgRNA library FASTA files

CRISPRAnalyzeR offers pre-made sgRNA library files in FASTA format for use.
You can use them along with your read count (please see the format) or raw NGS sequencing files (.fastq.fz).

__All pre-made libraries can be found [here](https://github.com/boutroslab/CRISPRAnalyzeR/tree/master/fasta)__


|Library Name |	Lab |	Pubmed ID |	Addgene |	Download |
|-------------|-----|-----------|---------|----------|
|CLD Benchmarking |	Boutros |	27013184 |	NA |	[FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/pilotscreen.fasta) |
|Gecko V2	| Zhang |	25075903 |	[here](https://www.addgene.org/crispr/libraries/geckov2/)	| [A+B FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_GeckoV2_all.fasta) [A FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_GeckoV2_HGLib_A.fasta) [B FASTA](https://github.com/boutroslab/crispr-analyzer/tree/master/fasta/FASTA_GeckoV2_HGLib_B.fasta) |
|Gecko V2	MOUSE| Zhang |	25075903 |	[here](https://www.addgene.org/pooled-library/zhang-mouse-gecko-v2/)	|  [A FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_GeckoV2_Mouse_A.fasta) [B FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_GeckoV2_Mouse_B.fasta) |
|Torronto KnockOut Library (TKOv1) |	Moffat |	26627737 | [here](https://www.addgene.org/pooled-library/moffat-crispr-knockout/) |	[90K FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_TKO_90K_library.fasta) & [85K FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_TKO_85Ksupp_library.fasta) |
|Brunello	| Doench |	26780180	| [here](https://www.addgene.org/pooled-library/broadgpp-crispr-knockout/) |	[FASTA](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_Brunello.fasta) |
|CRISPRa / CRISPRi	| Weissmann	| 25307932 | [here](https://www.addgene.org/crispr/libraries/)	|	[CRISPRa V2](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_CRISPRa_V2.fasta) [CRISPRi V2](https://rawgit.com/boutroslab/CRISPRAnalyzeR/master/fasta/FASTA_CRISPRi_V2.fasta) |
|Human Lentiviral sgRNA sub libraries |	Sabatini |	24336569	| [here](https://www.addgene.org/crispr/libraries/) |	not available yet |


## FASTQ Common Extraction Settings for published CRISPR libraries
If you use FASTQ sequencing files directly, CRISPRAnalyzeR requires the use of a so-called 'regular expression' to extract the sgRNA target sequence from your sequencing data.

**However, the CRISPRAnalzyeR comes with some pre-defined settings for commonly used screening libraries and their vector systems.**
In case you don't know which is the best setting for your screen, please do not hesitate and create an issue or write me an email.

<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/FASTQ_regex.png" alt="alt text" width="80%" style="align:center;" >

| Plasmid Name |	Lab	 |Addgene ID |	Regular Expression |
|--------------|------|-----------|--------------------|
| Lenticrisp V2 |	Feng Zhang |	[52961](https://www.addgene.org/52961)	| **Default** `ACC(.{20,21})G` |
| Lentiguide (Puro)	| Feng Zhang |	[52963](https://www.addgene.org/52963) |	**Default** `ACC(.{20,21})G` |
| Human Lentivirus Library V1 |	Haoquan Wu |	[69763](https://www.addgene.org/69763) |	`GTTT(.{20})G` |
| pLCKO (Moffat TKO) |	Moffat |	[73311](https://www.addgene.org/73311)	| `ACCG(.{20,21})G` |
| pU6-sgRNA EF1Alpha-puro-T2A-BFP (CRISPRa/i) |	Weissman |	[60955](https://www.addgene.org/60955), [62217](https://www.addgene.org/62217), [60956](https://www.addgene.org/60956)	| `GTTG(.{20})G` |


# How must the Data be Formatted?

CRISPRAnalyzeR requires you to upload a sgRNA library FASTA file which contains all sgRNAs of your screen.
Moreover, you can either use your sequencing data directly as gzipped FASTQ files (.fastq.gz) or already calculated, non-normalized, read count files (.txt).

## Format of sgRNA library FASTA File
A sgRNA library file must be in FASTA format and include the unique sgRNA identifier as well as the target sequence in 5'->3' direction.
Please make sure **that only the exact target sequence is used here**.

```
>ENSG00000006042_0_4299.561
GGAGCCCTCTGAGTTAGAAC 
>ENSG00000006042_5_4299.588
GAAGATGCCTCGTAAGGCCA 
>ENSG00000006042_6_4299.588
GAGATGCCTCGTAAGGCCAT 
```

Moreover, **the gene identifier needs to be a part of the unique sgRNA identifier** as shown here

<img src="https://github.com/boutroslab/crispr-analyzer/blob/master/images/regex2.png" alt="alt text" width="50%" style="align:center;" >

so that CRISPRAnalyzeR knows which sgRNA belongs to which gene.

**Please note that all sgRNA identifiers need to be unique.**


## Format of Raw Sequencing Data (.fastq.gz)

Next Generation Sequencing files usually are provided in FASTQ format:

```
@M01100:47:000000000-AH40C:1:1101:12289:2057 1:N:0:4
AACACCGTCAGTGTGCTTGCCCCACTGTTTTAGAGCTAGAAATAGCAAGTT
+
GGGGGGGGGGDGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
@M01100:47:000000000-AH40C:1:1101:8758:2058 1:N:0:4
AAACACCGGTTTTGAAACTGCGGACACGTTTAGAGCTAGAAATAGCAAGTTA
+
GGGGGGGEGGGGGGGGGDGGFGGGEEGGFFGGFFCFFF=AFF<CEFFF@EFE
```

For easier use and faster data handling, CRISPRAnalyzeR required **gzipped FASTQ files (.fastq.gz)**.  
**FASTQ files are usually provided in a gzipped format by the sequencing facility.**

## Format of Read Count Files (.txt)

CRISPRAnalyzeR requires a separate read count file for each sample, which needs to be tab-separated.

```
sgRNA                                Count
ENSG00000053900_GAAAGCAATGAGATCCCGCT	28
ENSG00000053900_GAAGCAATGAGATCCCGCTT	62
ENSG00000053900_GAAGCGGGATCTCATTGCTT	92
```
The first column describes which sgRNA identifier (must be the same as in the sgRNA library FASTA file) was used, the second column describes how many reads were present for this unique sgRNA.

**Please note that all sgRNA identifiers need to be unique.**




---

# Tutorials

All available tutorials can be found on [Youtube](https://www.youtube.com/channel/UCiR7LwZ-8l_-qdZRWsuOmNA) and are also available from within CRISPRAnalyzeR.  

## Upload Read Count Data and Setup Screen
[![CRISPRAnalyzeR Data Upload](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_YT_upload_readcount.png)](https://www.youtube.com/watch?v=J2WJFAo2OTY)

## Assessing Screen Quality
[![CRISPRAnalyzeR Tutorial on Screen Quality](https://github.com/boutroslab/crispr-analyzer/blob/master/images/CRISPRAnalyzeR_YT_tutorial_SQ.png)](https://www.youtube.com/watch?v=zIC8OZBX_5U)


--- 

# Debugging for Advanced Users and System Administrators

CRISPRAnalyzeR can provide you the log files generated, which can help you to identify potential issues and me to fix bugs or add new features.  
In order to see the logs conveniently without struggeling into the running docker application itself, you can ask CRISPRAnalyzeR to export the logs in real-time to any folder using the start parameter `-v` in a similar way as it is done to include the COSMIC database or local sgRNA re-evaluation.  

_*LOGFOLDER*_ is a local folder you create to which CRISPRAnalyzeR will save and update the logs in real time.  

Start CRISPRAnalyzeR using the `-v` command, e.g.  
```bash
docker run --rm -v *LOGFOLDER*:/srv/shiny-server/CRISPRAnalyzeR/log -p 8000:8000 boutroslab/crispranalyzer:latest
```
# Increasing the core ulimit

For some genome-wide screens, CRISPRAnalyzeR can abort the report generation due to limited amount of storage allocated for this operation. You can force docker to give more space to CRISPRAnalyzeR by increasing the `ulimit` setting (in kilobytes)

For 8 GB of the so called `c stack space`, you need to set the value of 8GB in Kb - 8.589.934.592 with `--ulimit stack=8589934592:8589934592`.  

```bash
docker run --rm --ulimit stack=8589934592:8589934592 -v *LOGFOLDER*:/srv/shiny-server/CRISPRAnalyzeR/log -p 8000:8000 boutroslab/crispranalyzer:latest
```




# Live Demo Online Status

A status page for the live demo availability can be found [here](https://stats.uptimerobot.com/16rJjcOv6).


---


# Contact and Citation

**Jan Winter - jan.winter@dkfz-heidelberg.de**

__Twitter:__ @winterj86

__Cite: http://biorxiv.org/content/early/2017/02/20/109967__


