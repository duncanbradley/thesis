# Reproducibility



## Problems in Research

*Ioaniddis, 2005* - Many lines of inquiry may be producing unreliable conclusions. Better powered experiments are required. Highlights a general concern with the trustworthiness of findings. 

*Open Science Collaboration, 2015* - replication study, revealing that the evidence many established findings was not as strong as initial reported.  

Improving methods, plus reporting and dissemination, will improve the quality of published research. But these are different to efforts to improve reproducibility. A lack of transparency underlies issues with reproducibility, whereas problematic research methods underly issues with replicability (Munafo et al., 2017)

HARKing, p-hacking, low power, publication bias (Bishop, 2019)

Widespread recognition of problems in science (Baker, 2016).
Researchers have neglected to focus on reproducibility (Ince, 2010).

*Crüwell et al ., 2019* - behaviours that support reproducibility and replicability in general may be referred to using the umbrella term ‘Open Science Practices’. 

*White et al. 2013* - open science recommendations are similar across disciplines. 

Replication allows for independent evaluation of research findings (in computational science), but is resource intensive. Assessing reproducibility offers another simpler way to evaluate reliability of work (Peng, 2011). 

The pre-requisite is that these resources are available and suitable packaged to reflect original researchers’ use. This provides opportunity to assess one aspect of research, in order to gauge its trustworthiness.

*Klein et al. (2018)* - Reproducibility crisis has sparked “urgent conversation”.

## Reasons for Sharing

Supporting third parties in reproducing research may increases perceptions of the robustness and reliability (Sandve et al., 2013). Sharing details is crucial for assessing the credibility of research. Reproducibility supports identification of errors in analysis (Klein et al., 2018). Scientific approaches requires that researchers may indepdentently authenticate other researchers’ conclusions (Blischak et al., 2019). This is a duty (Sandve et al., 2013).

Authors may feel the advantages of reproducible practices even more than their peers (Piccolo and Frampton, 2016). For example, working towards reproducibility can save time and effort (Sandve et al., 2013), and sharing resources permanently is insurance against loss of those resources *Klein et al. (2018)*.

## Definitions

Much inconsistency about definitions of reproducibility (Plesser, 2018)
Definition of replicability as generation of new data to further examine a reported finding (Simons, 2014) 
There has been a disconnect between use of terms in experimental and computational disciplines (Drummond, 2009)
Define replicability and reproducibility as I would (Bollen et al., 2015) 
Claerbout uses reproducibility as I would - but replication differently - see Rougier et al. (2017)

*Stodden et al., 2015* - different types of reproducibility: empirical (robustness of methods and their reporting), computational (robustness of software), analytical (robustness of analysis, Stodden, 2011, 2013).

## Barriers to Open Research - Why Public Sharing

Provision of data and code on request is often not fulfilled as promised. Collected 601 papers and attemped ‘weak repeatability’ - finding and executing programs that supported the work. Of elibigle papers, under half could be successfully executed by the authors. In many cases, the software was not publically available. Various issues included sharing non-final versions of code, original programmer no longer available, local storage failures, restrictive institutional licences, concern about potential use, concern about labour involved in providing support (Collberg & Proebsting, 2016).

Studied 204 papers from a journal which required authors to provide data and code on request. These resources were only provided 44% of the time, and results were successfully reproduced in only 26% of cases (Stodden et al., 2018)

Behaviour and technology are bother relevant to the equation. Whilst it has been suggested that behaviour and technology play equal parts in working toward reproducibility (Sandve et al. 2013), others suggest that innovations have been so effective that challenges are now primarly about researchers’ engagement with these tools (Grüning et al., 2018). Several things impede or deter sharing of research data: lack of expertise, lack of precedent, lack of time/motivation (Houtkoop et al., 2018). 

## Open Data

## Metadata

*Klein et al. (2018)* - ‘Codebook’ or ‘Data Dictionary’ for machine readable metadata. 
*White et al. 2013* - Formats for metadata vary from textual descriptions to machine-readable files. As well as describing characteristics, it should detail data collection, and known issues. 


## FAIR

FAIR principles are designed to help machines locate and reuse data. Effective data management facilitates advances in knowledge. Findable, Accessible, Interoperable, and Reusable. FAIR principles are also relevant to other computational tools, including those used for analysis of data. Machine readability is important for using the ever-increasing proliferation of data (Wilkinson et al., 2016).

*Jiménez et al., 2017* - Original context for FAIR was data, whereas Open Source Software is concerned with software, but they have many similarities (see also Lamprecht et al., 2020). 



*Klein et al. (2018)* - Stimuli and other materials e.g. experimental scripts should be shared. 


Different types of resources require different metadata implementations/considerations. Metadata provides an important contribution towards reproducbility (Leipzig et al., 2021).

*White et al. 2013* - Avoid simple errors like failing to separate values from units, and spaces in file names, ambiguous blank cells. 


*Nosek et al., 2015* - TOP Guidelines for Open Science practices, requires sharing.

*Jiménez et al., 2017* - Open Source Software does not place limits on who may examine, adapt and extend the underlying code.  Therefore, it provides many opportunities for bettering the use of software for research. Exposing work through public sharing can engender trust, promote collaboration, build upon existing work. Licences provide clear statement for third parties, ensuring that use is appropriate and contributes to longevity. 

*Smith et al., 2016* - citations of software should be considered equally important as citations of research. The authors should be credited, versions and variants should be named, and associated resources should be easily accessible. Methods for identifying citations should be persistent and unique to the software. 
*White et al. 2013* - Lenient licences avoid unneccessary restrictions. 

*Marwick et al., 2018* - Raw data should kept separate from other files so that processing is clear and does not alter the original file. 

*Klein et al. (2018)* - Independent providers are the best choices for repositories, in particular OSF for its range of features. 

*White et al. 2013* - Use non-proprietary file types. 

*Lee et al., 2018* - The contents of a README should cover elementary information such as setup instructions and licence. 

*Nüst et al., 2017* - Sharing is not sufficient becuase what is shared must be comprehensible. 

*Chen et al., 2019* - suggests moving simply beyond notions openness and transparent, and the importance of whether such resources are usable. This does involve preserving a workflow, licensing, using established repositories. Suitable approach to reproducibility considers the data, analysis, and other characteristcis of the research project. 

Docker containers and YAML frontmatter are types of metadata (Leipzig et al., 2021).


## Sharing Code

*White et al. 2013* - Raw data and code for processing should be supplied. 
Initially, the possibility of issues or inconsistencies arising from computer code was overlooked (Plesser, 2018).
Research software is opaque unless shared (Morin et al., 2012).
*Stodden et al., 2016* - reproduction of computational processes ought to be achieved*independently*. 
*Piccolo and Frampton (2016)* - Textual descriptions accompanying analysis can facilitate, but can only go so far. 

*Sandve et al. 2013* - Roughly similar findings are not particularly informative - exact reproduction requires random seeds, in order to properly verify results. 

*Stodden et al. 2013* - irreproducible computational working practices are akin to poor record keeping. The expectations around documentation of code do not match the care required for other aspects of research. The typical researcher’s documentation of code is inconsistent with their attention to detail in other aspects of research. 

*Klein et al. (2018)* - Detail journey from original dataset to inferential statistics. 

*Marwick et al., 2018* - Any files *produced* by the compendia ought to be expendable, since it should be trivial to reproduce them using the resources available. 

## Best vs. Good

Reject perfectionism, accept limitations of code, and share it. Such limitations arise becuase the task at hand only requires the code to function as expected for the specific scenario. (Non-essential) ideals are often ignored if not essential. It is not possible to benefit from external inquiry if the code is not shared (Barnes, 2010).

Best is the enemy of the good (containers) - (Nüst et al., 2020).
*Piccolo and Frampton (2016)* - A partial effort towards reproducibility still trumps a wholly irreproducible research project. 
*White et al. 2013* - Regarding metadata, the best is the enemy of the good. 
*Klein et al. (2018)* - Analysis shared need not be perfect to be useful. 



## Coding Practices

Rather than focusing on absolute best practices, Wilson et al. (2015) present a starting point for repoducible working, smaller steps towards fully reproducible work. Comprehensible naming practices. Modularity is the precursor to code that is comprehensible and easy to reuse. This involves well-defined functions. Documentation to introduce each program. Support reuse of code, avoid repetition, also avoid controlling code through commenting, but use a programattical approach instead. 

Tidyverse is designed with humans in mind, facilitating comprehension and use (Wickham et al., 2019).

Wickham (2014) introduces a set of tools and criteria for preparing data prior to analysis. A principled way of approaching this task simplifies the process. The main goal is facilitating analysis. Ensuring correct structure. A column for each variable (each type of measurement) and a row for each observation (each related instance). Functions designed to create tidy data treat data in a standardised manner, thus can be employed in concert.

Split code into appropriate chunks that achieve a clearly-defined goal. Write functions to avoid duplication, make code modular (Rule et al., 2019). This bears many similarities to the Unix philosophy (Gancarz, 2003).

Use relative file paths, since these are ‘portable’. Adherence to tidyverse style code is likely to lead to more comprehensible code. Several R packages provide support for reproducibile practices. The authors present a package which supports reproducible practices. Users who specify a local working directory are confronted with an error which instructs them to choose an appropriate file path instead. Also encourages use of functionality which sets the random seed (Bertin and Baumer, 2020). 

*Lee et al., 2018* - comments should provide a comprehensive account of the code. Examples may help explain functions. 

*Sandve et al. 2013* - Each stage of processing must be included. Automated working has three benefits over manual processing: reduced error, increased efficiency, and increased reproducibiltiy. 


## Literate Programming and Dynamic Documents

What we produce shouldn’t be considered a set of instructions for a computer to follow. Rather, it should assist a human in understanding what those instructions are. Comprehensibility of code is important. Varaibles should be appropriately named and explained (Knuth, 1984).

Computational notebooks (e.g. Jupyter notebooks) integrate several aspects of analysis workflow into a single document (Rule et al., 2019). 
Rmarkdown provides transparency across the entire analytical workflow (Holmes et al., 2021).
Knitr provides opportunities for literate programming. Data visualisations may be created dynamically, in the same way as the analysis. Computationally-expensive code is problematic - I suggest that caching can provide a solution. Continuous integration offers the ability to detect whether each new change has not prevented successful outputs/compilation (FitzJohn et al., 2014).

The notion of reproducible research code was discussed over 30 years ago, with ‘electronic documents’ providing the ability to package code with a manuscript (Claerbout, 1992).

*Piccolo and Frampton (2016)* - Literate programming helps ensure documentation is closely linked to code, not separate. Literate programming facilitates comprehension of code.  

*Sandve et al. 2013* - It’s useful to pair textual description and explanation with corresponding analysis code, literate programming tools make this easier. 

*Peikert and Brandmeier, 2021* - Dynamic documents promote use of literate programming, resulting in reproducible manuscripts. 


## Attempts at Computational Reproducbility

Examining files taken from an online repository, successful executing depended on Python version and the presence of files capturing dependencies (Trisovic et al., 2021).
Poor documentation, programming errors and missing resources can lead to reproducibility issues. Automated approach to analysing reproduciblity of over 9000 R scripts, examining whether code would run successfully, not whether output matched reported findings. Approximately three in four files produced errors when executed. Implementing a code-cleaning algorithm reduced this number, but the majority still failed to run successfully. This indicated that good programming behaviours can improve code but cannot totally eliminate issues. Because code is often only produced in order to achieve an initial objective, it is not written with sustainability in mind. Very few files analysed were R markdown, which allows dynamic document generation, which would expose initial researchers to more errors. Errors also arose due to incompatibility of R package versions, which reveals the benefits of containerisation/capturing the computational environment. Recommend renv, relative file paths, and Docker (Trisovic et al., 2022).

## Computational Reproducibility

Frequent updates to tidyverse packages necessitate recording package versions (Holmes et al., 2021). 
Using github to support computational reproducibility (Perez-Riverol et al., 2016)
Computational notebooks and tools for dynamic document generation (Jupyter, R Markdown) do not capture the computational environment (Grüning et al., 2018). 
Peng (2011) presents a spectrum of reproducibility. Sharing code offers some benefits over a standalone publication, the addition of data increases reproducibility further, but even better is the ability to execute this code, falling short of a full replication.
*Nüst et al., 2017* - Because of each researcher’s unique specialisms and preferences, there are roughly the same number computational environments as researchers. 
*Piccolo and Frampton (2016)* - dependencies, software versions, and parameters complicate reproduction, requiring detail and precision in specification. 
Containers present an opportunity to capture a wider element of the computational environment beyond package managers (Grüning et al., 2018).


# Containers vs. Virtual Machines

Unlike with virtual machines, the machine running a container provides the kernel, reducing size and enhancing computational power (Cito et al., 2016).
Containers are not isolated from the hardware or underlying kernel (operating system level), limiting their reproducibility. Suggests that virtual machines are more comprehensive than containers (Grüning et al., 2018).
Virtual machines are large, containers are lightweight in comparison. Dockerfiles compatible with version control systems. Minor changes are trivial in Dockerfiles but painful in virtual machines. However, Dockerfiles are associated with a smaller number of limitations (Piccolo and Frampton, 2016).
Containers offer greater transparency compared to virtual machines (Nüst et al., 2020).

## Containers

*Marwick et al., 2018* - Containers offer a more sophisticated solution to the dependency issue, a text file would be a simpler option.

*Nüst et al., 2020b* - working towards reproducibility, may mean prioritising openness and human readability over optimising performance. Proprietary and GUI software are not compatible with containers. Conventions facilitate comprehnsion, and following guidance can assist less experienced researchers generate useful outputs. 

Recording the dependencies is necessary (Grüning et al., 2018).


*Peikert and Brandmeier, 2021* - Renv does not capture base R version or additional dependencies. 
*Nüst et al., 2017* - Package managers allow for automatic recording of many dependencies, but not the development environment itself. 
Containers present an opportunity to capture a wider element of the computational environment beyond package managers (Grüning et al., 2018).


## Docker

The reference for Docker - Merkel (2014)

1. Docker File - base image  (e.g. rocker verse for tidyverse) + custom instructions (install certain packages) - it’s a set of instructions for the image
2. Docker Image - captures the exact environment that you want (needs to be built before container can run)
3. Docker Container - images become containers at runtime. The container is the environment that image runs on.

Dockerfiles are used to create Docker images. When the image is running, there is a Docker container (Boettiger and Eddelbuettel, 2017). 

To capture dependencies, one must reproduce the computational environment used. That Dockerfiles promote are human-readable promotes transparency. Dockerfiles capture a greater level of dependencies than makefiles, because they can capture software versions. Tools must be practicable as well as productive. Lack of familiarity is a barrier. Increasingly complex and elegant solutions may present their own challenges e.g. dynamic document generation also requires LaTeX dependencies (Boettiger, 2015)

The issue with binder is that you can’t change images (so can’t edit the script) - you can only run it

*Nüst et al., 2020b* - Dockerfiles provide instructions for installing dependencies and loading required files. This Dockerfile is used to produced an image, and an image that is running is a container. Dockerfiles should be both comprehensible to humans and machine-readable. The authors provide advice on formatting. Package managers may be used in concert with Dockerfiles, but collating all dependency information in a single Dockerfile provides simplicity, and ensures that intended version are specified even when software is updated. It is necessary to capture the specific versions of packages and other software. All files required by the Dockerfile must be included in the repository. Caching is another consideration. Even old Docker containers may not function properly. 

*Nüst et al., 2017* - Docker cannot be used in conjuction with proprietary software. 

## Rocker

Nüst et al. (2020b) recommend that researchers make use of existing images, such as Rocker. 

**R**ocker captures R environments for use in Docker. It makes the computational enivornment ‘portable’, for use with a variety of systems. When designing Rocker images, the authors faced a trade-off between generalisibility and specificity. An image designed to be too widely applicable would be cumbersome, but it would be hard to find one that fits with an overly-specific use case. Their solution is to provide base images that are easily expanded for specific requirements (Boettiger and Eddelbuettel, 2017).

**R**ocker containers can be ‘stacked’ together as required, avoiding unnecessary complexity (Nüst et al., 2020a).

## Version Control

Through version control, archiving of changes to a document does not rely solely on user’s descriptions but digital records of actual modifications (Wilson et al. 2015).
*Sandve et al. 2013* - Version control facilitates inspection of prior versions of code, allowing the stability of results to be assessed across different versions. Maintaining a record of intermediate steps facilitates diagnosis of issues, plus inspection of entire approach preceding conclusions. 

## PsychoPy

*Peirce et al., 2019* - PsychoPy was developed as a tool for conducting open and reproducible research. Designed to be used on different platforms, and to make available the underlying Python scripts for each experiment, open source, uses non-proprietary file formats. Previous versions of the software can be specified easily, to avoid encountering errors as a result of new releases. 

## Beyond the Scope
*Lee et al., 2018*- Other aspects of recommendations are beyond the scope of empirical research, such as informative error messages, help commands and documentation for APIs (application programming interfaces). 
*Garijo et al., 2022* - some recommendations are perhaps beyond the scope of a single empirical research project - e.g. considering policies on software contributions and long-term maintenance. Provides guidance on managing research software repositories.
Reproducing the environment used to generate a container is an additional challenge to the sustainability of this solution (Grüning et al., 2018). 
*Peikert and Brandmeier, 2021* - Make (and Makefiles) outline the sequence in which programmes should be executed, so is appropriate when a workflow involves significant processing of data prior to analysis. 
*Nüst et al., 2017* - introduce the notion of Executable Research Compendia, providing data, code, computational environment, and interface. The concept is that this is ‘self-contained’. This follows the development of Research Compendia (Gentleman and Lang, 2007), which focused on providing data and analysis code, and use of dynamic documents. Executable Research Compendia are a way of packaging research resources/output. Key to the notion of Executable Research Compendia is being providing a ‘one-click’ functionality that indicates successful reproduction of all computational processes, resulting in an exact correspondence between generated and reported results. However, perfect reproducibility only indicates that computational processes run as expected, not that the conclusions of the research independently valid.

## Workflows
*van Lissa et al., 2020* - WORCS workflow involves many aspects covered in my work.
*Peikert and Brandmeier, 2021* - my approach is very similar to the workflow described in this paper. 

__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __

The reporting of scientific studies involves lots of summary. Raw data is collected then processed, then analysed. In a small set of inferential statistics upon which a claim rests, a lot is going on behind the scenes. The ability to trace conclusions back to their original source is not just useful, but a crucial aspect of science. 

buildmer fits with the idea of showing incremental work, by automatically re-creating the process of the models that didn’t work
however it also ensures consistency, and optimises output
As an R package, it is archived, and its source code is transparent

Quarto
Language-agnostic
Rmarkdown more established, quarto shares many features, and represents state of the art 

Given that much of the discussion around adoption of software concerns researcher motivation, compared to availability of tools, this thesis serves as a case study for reproducible research. I do not explore all the capabilities of these tools, but employ a simple implementation of a few in order to demonstrate a minimal use case.

accessible and transparent, increase engagement, responsible

Spyrison - what factors make a visualisation paper appealing? it’s not open data practices…
Cockburn et al. (2020) mentions open science in visualisation research. 

Hardwicke et al. (2018) explore “Data availability, reusability, and analytic reproducibility” (from title) - Kosara and Haroz suggest that visualisation would benefit from these efforts to improve research quality. 

Kosara and Haroz suggest that the absence of a replication crisis in the visualisation field doesn’t necessarily point to lack of an issue but rather a lack of replications (though they note a handful of conceptual replications).
Their papers discusses several features of poor-quality/sub-standard empirical work that might invalidate a study’s conclusions. Along with other issues (including excessive research degrees of freedom and experimental design issues), they discuss how issues in statistical analysis, such as misapplication of statistical tests, jeopardise validity. To remedy this, data and analysis code should be shared publicly. This facilitates identification of problems and their subsequent rectification. This practices serves as proof of validity: being transparent about analytic process lends credibility. Documenting experimental design assists identifcation of issues/confirmation of good design. Sharing *everything* allows others to carry out all three types of replication to be achieved - including those which are typically challenging - reanalysis and direct replication.

Haroz (2018) - journal articles alone do not provide a complete picture of a research project, so data and code must be openly accessible for the research to be considered reliable/trustworthy. In the visualisation field, a lack of sharing prevents proper examination of conclusions. In VIS 2017 - 15% shared materials openly, 6% shared data openly. Certain sites are less reliable than others because they are easily modified, or are short-lived, becoming afflicted by ‘link-rot’.

__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __
__ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __


# Manuscraps

*White et al. 2013* - Figshare is an ‘all-purpose’ solution. 
*Bahaidarah et al., 2022* - reproducibility in research is ‘essential’
*Klein et al. (2018)* - access to the constituent parts of research accelerates scientific progress (Ioannidis, 2012). 
*Marwick et al., 2018* - research compendia organise resources for reproducibility. 
Bertin and Baumer’s (2020) package also tracks dependencies. 

The challenges are no longer completely depending on innovations in technology, but researchers’ engagement with these tools (Grüning et al., 2018).

