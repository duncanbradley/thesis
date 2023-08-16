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

*Nosek et al., 2015* - TOP Guidelines for Open Science practices, requires sharing.

Replication allows for independent evaluation of research findings (in computational science), but is resource intensive. Assessing reproducibility offers another simpler way to evaluate reliability of work (Peng, 2011). 

The pre-requisite is that these resources are available and suitable packaged to reflect original researchers’ use. This provides opportunity to assess one aspect of research, in order to gauge its trustworthiness.

*Klein et al. (2018)* - Reproducibility crisis has sparked “urgent conversation”.

## Reasons for Sharing

There are many convincing arguments for reproducibility. Scientific approaches require that researchers can properly assess the credibility of research (Klein et al., 2018) and independently authenticate other researchers’ conclusions (Blischak et al., 2019) and . Thus, supporting third parties in reproducing research can increase perceptions of its robustness and reliability (Sandve et al., 2013). This also facilitates identification of errors in analysis (Klein et al., 2018). In addition to these motivating factors, authors may appreciate the advantages of reproducible practices even more than their peers (Piccolo and Frampton, 2016). For example, these practices can save time and effort (Sandve et al., 2013), and sharing resources permanently provides insurance against the loss of those resources (Klein et al., 2018).

## Definitions

Inconsistent definitions of reproducibility have been employed in academic works (Plesser, 2018), particularly between experimental and computational disciplines (Drummond, 2009). In this thesis, I will use the following definitions. ’Reproducibility’ in research involves generating results exactly as reported using the project’s original data and code. ‘Replicability’ in research involves generating new data to assess consistency with an existing finding (Simons, 2014).

Define replicability and reproducibility as I would (Bollen et al., 2015) 

## Barriers to Open Research - Why Public Sharing

If authors consistently shared these data and code *on request*, freely available access could be considered unnecessary. However, empirical research demonstrates why it is important to share resources *publicly*. In a study of 204 papers from a journal which *required* authors to provide data and code on request, only 44% delivered on this promise (Stodden et al., 2018). Where research code is not publically available, various issues preclude procurement. These include local storage failures, restrictive institutional licences, concern about potential use, and concern about labour involved in providing support (Collberg & Proebsting, 2016). Provision of data and code on request simply cannot be guaranteed, necessitating public sharing.

Researchers’ working practices and technological solutions both contribute to reproducibility. Whilst it has been suggested that behaviour and technology play *equal* roles (Sandve et al. 2013), others suggest that innovations have been so effective that the primary challenge is now researchers’ engagement with these tools (Grüning et al., 2018). Researchers report that several factors impede or deter their sharing of research data, including lack of expertise, lack of precedent, and lack of time (Houtkoop et al., 2018).

## Sharing Data and Code

For full transparency, data should be supplied in a raw, unprocessed form (White et al., 2013). Keeping raw data separate from other files ensures that the original file is not altered and the stages of processing are clear (Marwick et al., 2018).

A textual description of analysis in a manuscript presents an incomplete and vague acount of this process (Piccolo and Frampton, 2016). Researchers must share code in order to detail the journey from the original dataset to inferential statistics (Klein et al., 2018), otherwise their software is a ‘black box’ (Morin et al., 2012). Initially, the possibility of issues or inconsistencies arising from computer code was overlooked (Plesser, 2018). However, it is now widely recognised that a computational analysis pipeline presents many opportunities for error. Making code openly available permits *independent* reproduction of all computational processes (Stodden et al., 2016). This, in turn, can engender trust, promote collaboration, and facilitate new applications (Jiménez et al., 2017). Each stage of processing must be included (Sandve et al., 2013) and any files *produced* using the analytical pipeline should be expendable, since reproducing them using the code supplied should be trivial (Marwick et al., 2018). Other resources, such as stimuli and experiment scripts should also be shared alongside data and code (Klein et al., 2018).

When sharing resources, a researcher’s choices can either assist or obstrust re-use (Chen et al., 2019). Using non-proprietary file types ensures that specialist software is not required (White et al. 2013). Data files should not include blank cells, which introduce ambiguity regarding whether data points are missing (White et al. 2013).

*Stodden et al. 2013* - irreproducible computational working practices are akin to poor record keeping. The expectations around documentation of software do not match the care required for other aspects of research. The typical researcher’s documentation of software is inconsistent with their attention to detail in other aspects of research. 

Licences contribute to a research project’s longevity, and provide clear statement for third parties, ensuring that their use of resources is appropriate (Jiménez et al., 2017). Where possible, lenient licences should be employed to avoid unneccessary restrictions (White et al., 2013). Rather than personal or institutional websites, independent providers (e.g., Open Science Framework) are recommended for depositing resources (Chen et al., 2019, Klein et al., 2018).


## Metadata/Documentation

Different types of resources require different metadata implementations/considerations. Metadata provides an important contribution towards reproducbility (Leipzig et al., 2021).
*Klein et al. (2018)* - ‘Codebook’ or ‘Data Dictionary’ for machine readable metadata. 
*White et al. 2013* - Formats for metadata vary from textual descriptions to machine-readable files. As well as describing characteristics, it should detail data collection, and known issues. 
*Lee et al., 2018* - The contents of a README should cover elementary information such as setup instructions and licence. 
Docker containers and YAML frontmatter are types of metadata (Leipzig et al., 2021).
Documentation to introduce each program (Wilson et al., 2015). 
*Lee et al., 2018* - comments should provide a comprehensive account of the code. Examples may help explain functions. 

## FAIR

FAIR principles are designed to help machines locate and reuse data. Findable, Accessible, Interoperable, and Reusable. FAIR principles are also relevant to other computational tools, including those used for analysis of data. Effective data management facilitates advances in knowledge. Machine readability is important for using the ever-increasing proliferation of data (Wilkinson et al., 2016).

*Jiménez et al., 2017* - Original context for FAIR was data, whereas Open Source Software is concerned with software, but they have many similarities (see also Lamprecht et al., 2020). 

*Jiménez et al., 2017* - Open Source Software is software that does not place limits on who may examine, adapt and extend the underlying code. Therefore, it provides many opportunities for bettering the use of software for research. 

## The Best is the Enemy of the Good

A principle often endorsed in this literature concerns the merits of small efforts. Taking *some* steps to increase reproducibility still enhances a project’s quality compared to neglecting this aspect altogether (Piccolo and Frampton, 2016). Witholding resources in pursuit of continuous refinement risks never sharing them at all. This fallacy is captured by the maxim ‘the best is the enemy of the good’.

Analysis code does not need be perfect to in order to be useful to others (Klein et al., 2018), and it is impossible to benefit from external inquiry if the code is not shared (Barnes, 2010). Barnes (2010) argues that perceived limitations simply reflect that the code works only for the specific scenario at hand; inessential improvements are by definition not required for basic functioning. Researchers ought to accept these limitations and share their code anyway. In addition to code, this notion has also been applied to metadata (White et al., 2013) and containerisation (Nüst et al., 2020).

## Coding Practices

Programming with an automated approach has three benefits over manual processing: increased efficiency, increased reproducibility, and reduced error (Sandve et al., 2013). Researchers should split code into appropriate chunks which each achieve a clearly-defined goal (Rule et al., 2019). Writing functions in a modular style avoids redundant repetition, promotes comprehension and supports reuse of code (Wilson et al., 2015). This approach shares many similarities with the Unix philosophy (Gancarz, 2003).

Several other coding behaviours can facilite or inhibit reproducibility. For example, *absolute* file paths refer to a specific directory on a user’s machine, which will not be replicated on other users’ machines. Using *relative* file paths, which locate files in relation to the project directory, ensure code is *portable* and can be used on any machine (Bertin and Baumer, 2020). Additionally, independent researchers cannot successfully verify findings if only an approximate resemblance is achieved. Therefore, for any process involving random number generation, a random seed must be specified within the script, to ensure exact reproduction of results (Sandve et al., 2013). For maximum transparency, researchers should avoid controlling code through comments, but use programatical approaches instead (Wilson et al., 2015).

## Tidyverse

The task of preparing data prior to analysis is an important aspect of working with data. Wickham (2014) presents a set of tools, and underlying theory for this task, arguing that analysis can be facilitated by ensuring that data is in the correct structure. This structure is known as ‘tidy’ data, which consists of a column for each variable (each type of measurement) and a row for each observation (each unit measured). A principled approach simplifies the process of creating a tidy dataset using Wickham’s functions. Because each function treats data in a standardised manner, various functions can be employed in concert. The collection of R packages containing these functions (the ‘Tidyverse’) was designed with a concern for *humans*, not just computational performance (Wickham et al., 2019), so Tidyverse-style code is likely to promote comprehension (Bertin and Baumer, 2020).

## Literate Programming and Dynamic Documents

Knuth (1984) presented a novel perspective on comprehensibility in computer programming which has been influential in the literature on computational reproducibility. Knuth’s premise is that a programming script should not be regarded primarily as a set of instructions for a computer to follow, but a tool to assist humans in understanding those instructions. This approach, known as ‘literate programming’, involves pairing code with corresponding text, such that reporting and documentation are closely linked to underlying code (Sandve et al., 2013; Piccolo and Frampton, 2016). Dynamic documents allow authors to mix code and narrative within a single file, with results updated whenever the document is rendered. Producing (and re-producing) an entire manuscript using a dynamic document offers opportunities to easily observe the implementation of code used for each aspect of analysis (Peikert and Brandmeier, 2021). In addition to descriptive and inferential statistics, data visualisations may also be rendered dynamically (FitzJohn et al., 2014). This efficient format enhances transparency (Holmes et al., 2021), supports interactivity (Rule et al., 2019) and avoids errors due to manually collating results (Peikert and Brandmeier, 2021). Including computationally-expensive code (e.g., complex statistical models) within a dynamic document can be problematic since this code is executed every time the document is rendered (FitzJohn et al., 2014). However, capacity for model caching provides a convenient antidote.

## The Computational Environment

**Unfortunately, providing data and code is necessary, but not sufficient, to guarantee reproducibility. For example, research has found that even when the nominally required resources are available, it is not always possible to reproduce results exactly (Stodden et al., 2018), or even to execute the code (Collberg & Proebsting, 2016). A study using an automated approach to test the execution of 379 Python files found that success depended in part on the Python version used and the presence of files capturing dependencies (Trisovic et al., 2021). Another study used a similar approach to test over 9000 R scripts (Trisovic et al., 2022). Approximately three in four scripts produced errors when executed. Implementing a code-cleaning algorithm reduced this number, but the majority (56%) still failed to run successfully. This indicates that good programming practices can improve code but cannot totally eliminate issues. Another source of error was incompatibility of R software versions and required packages. Thus, a failure to recreate the *computational environment* used when originally running the script prevented successful execution.**

**Peng (2011) argues that reproducibility can be considered on a spectrum. Sharing code offers some benefits over a standalone publication, providing data increases reproducibility further, but ensuring that the code can be precisely executed is even better. Each researcher’s unique preferences and proficiencies result in roughly the same number of computational environments as individual researchers, illustrating the necessity to record one’s computational environment (Nüst et al., 2017). Additionally, software under continuous development, such as the Tidyverse collection of packages, is frequently updated, meaning code can stop functioning unless specific versions are recorded (Holmes et al., 2021). Other software dependencies and parameter settings also complicate reproduction, requiring precision and comprehensiveness in documentation in order to achieve full *computational reproducibility* (Piccolo and Frampton, 2016).**

## Containers

Computational notebooks and tools for dynamic document generation (Jupyter, R Markdown) do not capture the computational environment (Grüning et al., 2018). 
*Peikert and Brandmeier, 2021* - Renv does not capture base R version or additional dependencies. 
*Nüst et al., 2017* - Package managers allow for automatic recording of many dependencies, but not the development environment itself. 
Containers present an opportunity to capture a wider element of the computational environment beyond package managers (Grüning et al., 2018).
*Marwick et al., 2018* - Containers offer a more sophisticated solution to the dependency issue, a text file would be a simpler option.

Recording the dependencies is necessary (Grüning et al., 2018).

*Nüst et al., 2020b* - working towards reproducibility, may mean prioritising openness and human readability over optimising performance. Proprietary and GUI software are not compatible with containers. Conventions facilitate comprehnsion, and following guidance can assist less experienced researchers generate useful outputs. 

# Containers vs. Virtual Machines

Unlike with virtual machines, the machine running a container provides the kernel, reducing size and enhancing computational power (Cito et al., 2016).
Containers are not isolated from the hardware or underlying kernel (operating system level), limiting their reproducibility. Suggests that virtual machines are more comprehensive than containers (Grüning et al., 2018).
Virtual machines are large, containers are lightweight in comparison. Dockerfiles compatible with version control systems. Minor changes are trivial in Dockerfiles but painful in virtual machines. However, Dockerfiles are associated with a smaller number of limitations (Piccolo and Frampton, 2016).
Containers offer greater transparency compared to virtual machines (Nüst et al., 2020).

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

**Researchers can save time and increase consistency by using pre-existing Docker images (Nüst et al., 2020b). One particularly valuable example of this is Rocker which captures R environments for use in Docker. This tool provides portable R environments for use with a variety of systems, facilitating computational reproducbility (Boettiger and Eddelbuettel, 2014). Developing Rocker images, involved a trade-off between generalisibility and specificity. An image designed to be too widely applicable would be cumbersome, but images with overly-specific use cases would be hard to find (Boettiger and Eddelbuettel, 2017). The solution involves providing base images that are easily expanded for specific requirements, with various Rocker containers ‘stacked’ together as required, avoiding unnecessary complexity (Nüst et al., 2020a).**

## Version Control

Through version control, archiving of changes to a document does not rely solely on user’s descriptions but digital records of actual modifications (Wilson et al. 2015).
*Sandve et al. 2013* - Version control facilitates inspection of prior versions of code, allowing the stability of results to be assessed across different versions. Maintaining a record of intermediate steps facilitates diagnosis of issues, plus inspection of entire approach preceding conclusions. 
Using github to support computational reproducibility (Perez-Riverol et al., 2016)

## PsychoPy

Other resources, such as experimental stimuli and experimental scripts should also be shared alongside data and code (Klein et al., 2018).

As discussed, data and analysis code are not sufficient for full 

For experimental psychology, sharing stimuli and experiment scripts is another important aspect of transparent research practices (Klein et al., 2018).

*Peirce et al., 2019* - PsychoPy was developed as a tool for conducting open and reproducible research. Designed to be used on different platforms, and to make available the underlying Python scripts for each experiment, open source, uses non-proprietary file formats. Previous versions of the software can be specified easily, to avoid encountering errors as a result of new releases. 

## Beyond the Scope
A suitable approach to reproducibility considers the data, analysis, and other characteristcis of the research project (Chen et al., 2019). 
*Lee et al., 2018*- Other aspects of recommendations are beyond the scope of empirical research, such as error messages, help commands and documentation for APIs (application programming interfaces). 
*Garijo et al., 2022* - some recommendations are perhaps beyond the scope of a single empirical research project - e.g. considering policies on software contributions and long-term maintenance. Provides guidance on managing research software repositories.
Reproducing the environment used to generate a container is an additional challenge to the sustainability of this solution (Grüning et al., 2018). 
*Peikert and Brandmeier, 2021* - Make (and Makefiles) outline the sequence in which programmes should be executed, so is appropriate when a workflow involves significant processing of data prior to analysis. 
*Nüst et al., 2017* - introduce the notion of Executable Research Compendia, providing data, code, computational environment, and interface. The concept is that this is ‘self-contained’. This follows the development of Research Compendia (Gentleman and Lang, 2007), which focused on providing data and analysis code, and use of dynamic documents. Executable Research Compendia are a way of packaging research resources/output. Key to the notion of Executable Research Compendia is being providing a ‘one-click’ functionality that indicates successful reproduction of all computational processes, resulting in an exact correspondence between generated and reported results. However, perfect reproducibility only indicates that computational processes run as expected, not that the conclusions of the research independently valid.
Continuous integration offers the ability to detect whether each new change has not prevented successful outputs/compilation (FitzJohn et al., 2014).

Whilst I did not follow a specific pre-defined workflow, my approach closely resembles published workflows (e.g., van Lissa et al., 2020; Peikert and Brandmeier, 2021).

# Conluding Remarks

Working reproducibly is a duty (Sandve et al., 2013).
Research software is opaque unless shared, then it becomes transparent (Morin et al., 2012).
The notion of reproducible research code was discussed over 30 years ago, with ‘electronic documents’ providing the ability to package code with a manuscript (Claerbout, 1992).
Because code is often only produced in order to achieve an initial objective, it is not written with sustainability in mind (Trisovic et al., 2022). 
Thus, it is necessary to capture the specific *computational environment* used when originally running the software. When specifying a project’s dependencies (the requisite files and software), researchers should ensure that the exact version of each package and program are supplied. 




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
Rule et al. say: Document the process, not the results. 

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

The authors present a package which supports reproducible practices. Users who specify a local working directory are confronted with an error which instructs them to choose an appropriate file path instead. Also encourages use of functionality which sets the random seed (Bertin and Baumer, 2020). 

Rather than focusing on absolute best practices, Wilson et al. (2015) present a starting point for repoducible working, smaller steps towards fully reproducible work. 

Researchers should also ensure that variable names are comprehensible (Wilson et al., 2015) and avoid spaces in file names in order to facilitate programming (White et al., 2013).

Write functions to avoid duplication, make code modular (Rule et al., 2019).
Literate programming facilitates comprehension of code (Piccolo and Frampton, 2016).
Varaibles should be appropriately named and explained (Knuth, 1984).
It’s useful to pair textual description and explanation with corresponding analysis code, literate programming tools make this easier (Sandve et al., 2013).

Knitr provides opportunities for literate programming (FitzJohn et al., 2014). 

Computational notebooks (e.g. Jupyter notebooks) integrate several aspects of analysis workflow into a single document (Rule et al., 2019). 
Rmarkdown provides transparency across the entire analytical workflow (Holmes et al., 2021).
Dynamic documents promote use of literate programming, resulting in reproducible manuscripts (Peikert and Brandmeier, 2021).
Avoid spaces in files names (White et al. 2013). 
Definition of replicability as generation of new data to further examine a reported finding (Simons, 2014) 

Claerbout uses reproducibility as I would - but replication differently - see Rougier et al. (2017)
*Stodden et al., 2015* - different types of reproducibility: empirical (robustness of methods and their reporting), computational (robustness of software), analytical (robustness of analysis, Stodden, 2011, 2013).

Independent provides (.e.g OSF) provide a range of useful features (Klein et al., 2018). 

*White et al. 2013* - Avoid simple errors like failing to separate values from units and ambiguous blank cells. 

*Chen et al., 2019* - suggests moving simply beyond notions openness and transparent, and the importance of whether such resources are usable. This does involve preserving a workflow, licensing, using established repositories. 
*Nüst et al., 2017* - Sharing is not sufficient becuase what is shared must be comprehensible. 

*Smith et al., 2016* - citations of software should be considered equally important as citations of research. The authors should be credited, versions and variants should be named, and associated resources should be easily accessible. Methods for identifying citations should be persistent and unique to the software. 
Collected 601 papers and attemped ‘weak repeatability’ - finding and executing programs that supported the work. Of elibigle papers, under half could be successfully executed by the authors. In many cases, the software was not publically available. Various issues in reproduction include sharing non-final versions of code, original programmer no longer available (Collberg & Proebsting, 2016).
Studied 204 papers from a journal which required authors to provide data and code on request - results were successfully reproduced in only 26% of cases (Stodden et al., 2018).
Very few files analysed were R markdown, which allows dynamic document generation, which would expose initial researchers to more errors. Errors also arose due to incompatibility of R package versions, which reveals the benefits of containerisation/capturing the computational environment. Recommend renv, relative file paths, and Docker (Trisovic et al., 2022).
