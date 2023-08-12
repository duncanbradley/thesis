# Reproducibility

*Sandve et al. 2013* - computational reproducibility confers benefits to researchers, as well as being their duty. Behaviour and technology play equal parts in working toward computational reproducibility. Each stage of processing must be included. Automated working has three benefits over manual processing: reduced error, increased efficiency, and increased reproducibiltiy. Version control facilitates inspection of prior versions of code, allowing the stability of results to be assessed across different versions. Maintaining a record of intermediate steps facilitates diagnosis of issues, plus inspection of entire approach preceding conclusions. Roughly similar findings are not particularly informative - exact reproduction requires random seeds, in order to properly verify results. Producing analysis at different levels of aggregation can support comprhension of summaries using richer data. It’s useful to pair textual description and explanation with corresponding analysis code, literate programming tools make this easier. Supporting third parties in reproducing research may increases perceptions of the robustness and reliability. 

*Wilson et al. 2015* - rather than focusing on absolute best practices, presents a starting point for repoducible working, smaller steps towards fully reproducible work. Comprehensible naming practices. Modularity is the precursor to code that is comprehensible and easy to reuse. This involves well-defined functions. Documentation to introduce each program. Support reuse of code, avoid repetition, also avoid controlling code through commenting, but use a programattical approach instead. Through version control, archiving of changes to a document does not rely solely on user’s descriptions but digital records of actual modifications.

*Piccolo and Frampton (2016)* - dependencies, software versions, and parameters complicate reproduction, requiring detail and precision in specification. Textual descriptions accompanying analysis can facilitate, but can only go so far. Literate programming helps ensure documentation is closely linked to code, not separate. Literate programming facilitates comprehension of code. Virtual machines are large, containers are lightweight in comparison. Dockerfiles compatible with version control systems. Minor changes are trivial in Dockerfiles but painful in virtual machines. However, Dockerfiles are associated with a smaller number of limitations. Authors may feel the advantges of reproducible practices even more than their peers. A partial effort towards reproducibility still trumps a wholly irreproducible research project. 

*White et al. 2013* - open science recommendations are similar across disciplines. Sharing data can enhance exisiting analyses and facilitate application of new analyses (Fienberg and Martin, 1985). Formats for metadata vary from textual descriptions to machine-readable files. Regarding metadata, the best is the enemy of the good. As well as describing characteristics, it should detail data collection, and known issues. Raw data and code for processing should be supplied. Use non-proprietary file types. Avoid simple errors like failing to separate values from units, and spaces in file names, ambiguous blank cells. Figshare is an ‘all-purpose’ solution. Lenient licences avoid unneccessary restrictions. 

*Klein et al. (2018)* - access to the constituent parts of research accelerates scientific progress (Ioannidis, 2012). Sharing details is crucial for assessing the credibility of research. Reproducibility supports identification of errors in analysis. Another selfish reason for sharing resources permanently is insurance against loss of those resources. Stimuli and other materials e.g. experiemntal scripts should be shared. ‘Codebook’ or ‘Data Dictionary’ for machine readable metadata. Analysis shared need not be perfect to be useful. Detail journey from original dataset to inferential statistics. Stating that data will be shared upon request is associated with insufficient willingness/ability to share. Independent providers are the best choices for repositories, in particular OSF for its range of features. Reproducibility crisis has sparked “urgent conversation”.

*Knuth, 1984* - what we produce shouldn’t be considered a set of instructions for a computer to follow. Rather, it should assist a human in understanding what those instructions are. Comprehensibility of code is important. Varaibles should be appropriately named and explained. 

*Barnes, 2010* - reject perfectionism, accept limitations of code, and share it. Such limitations arise becuase the task at hand only requires the code to function as expected for the specific scenario. (Non-essential) ideals are often ignored if not essential. It is not possible to benefit from external inquiry if the code is not shared.

*Peng, 2011* - focuses on computational science. Replication allows for independent evaluation of research findings, but is resource intensive. Assessing reproducibility offers another simpler way to evaluate reliability of work. Presents a spectrum of reproducibility. Sharing code offers some benefits over a standalone publication, the addition of data increases reproducibility further, but even better is the ability to execute this code, falling short of a full replication.

*Ioaniddis, 2005* - Many lines of inquiry may be producing unreliable conclusions. Better powered experiments are required. Highlights a general concern with the trustworthiness of findings. 

*Open Science Collaboration, 2015* - replication study, revealing that the evidence many established findings was not as strong as initial reported.  

*Houtkoop et al., 2018* - Several things impede or deter sharing of research data: lack of expertise, lack of precedent, lack of time/motivation. 

*Grüning et al., 2018* - reproducibility has become a hot topic recently. Computational notebooks and tools for dynamic document generation (Jupyter, R Markdown) do not capture the computational environment. Suggests that virtual machines are more comprehensive than containers. Reocrding the dependencies is necessary. Containers present an opportunity to capture a wider element of the computational environment beyond package managers. Reproducing the environment used to generate a container is an additional challenge to the sustainability of this solution. Containers are not isolated from the hardware or underlying kernel (operating system level), limiting their reproducibility. The challenges are no longer completely depending on innovations in technology, but researchers’ engagement with these tools.   

*Stodden et al. 2013* - irreproducible computational working practices are akin to poor record keeping. The expectations around documentation of code do not match the care required for other aspects of research. The typical researcher’s documentation of code is inconsistent with their attention to detail in other aspects of research. Citing software supports reproducibility and also acknowledges the contribution of software in research (LeVeque et al., 2012). 

*FitzJohn et al., 2014* - Knitr provides opportunities for literate programming. Data visualisations may be created dynamically, in the same way as the analysis. Computationally-expensive code is problematic - I suggest that caching can provide a solution. Continuous integration offers the ability to detect whether each new change has not prevented successful outputs/compilation. Dependencies can be recorded automatically. Also cite examples of studies failing to reproduce or even use much acadmic software provided. 

 *Wickham, 2014* - a set of tools and criteria for preparing data prior to analysis. A principled way of approaching this task simplifies the process. The main goal is facilitating analysis. Ensuring correct structure. A column for each variable (each type of measurement) and a row for each observation (each related instance). Functions designed to create tidy data treat data in a standardised manner, thus can be employed in concert.

*Stodden et al., 2015* - different types of reproducibility: empirical (robustness of methods and their reporting), computational (robustness of software), analytical (robustness of analysis, Stodden, 2011, 2013).

*Perez-Riverol et al., 2016* - using github to support computational reproducibility

*Boettiger, 2015* - to capture dependencies, one must reproduce the computational environment used. That Dockerfiles promote are human-readable promotes transparency. Dockerfiles capture a greater level of dependencies than makefiles, because they can capture software versions. Tools must be practicable as well as productive. Lack of familiarity is a barrier. Increasingly complex and elegant solutions may present their own challenges e.g. dynamic document generation alo requires LaTeX dependencies. 

*Cito et al., 2016* - unlike with virtual machines, the machine running a container provides the kernel, reducing size and enhancing computational power. 

*Nüst et al., 2017* - introduce the notion of Executable Research Compendia, providing data, code, computational environment, and interface. The concept is that this is ‘self-contained’. This follows the development of Research Compendia (Gentleman and Lang, 2007), which focused on providing data and analysis code, and use of dynamic documents. Executable Research Compendia are a way of packaging research resources/output. Because of each researcher’s unique specialisms and preferences, there are roughly the same number computational environments as researchers. Package managers allow for automatic recording of many dependencies, but not the development environment itself. Sharing is not sufficient becuase what is shared must be comprehensible. Key the the notion of Executable Research Compendia is being providing a ‘one-click’ functionality that indicates successful reproduction of all computational processes, resulting in an exact correspondence between generated and reported results. However, perfect reproducibility only indicates that computational processes run as expected, not that the conclusions of the research independently valid. Docker cannot be used in conjuction with proprietary software. 

*Jiménez et al., 2017* - Open Source Software does not place limits on who may examine, adapt and extend the underlying code.  Therefore, it provides many opportunities for bettering the use of software for research. Exposing work through public sharing can engender trust, promote collaboration, build upon existing work. Licences provide clear statement for third parties, ensuring that use is appropriate and contributes to longevity. Original context for FAIR was data, whereas Open Source Software is concerned with software, but they have many similarities (see also Lamprecht et al., 2020). 

*Smith et al., 2016* - citations of software should be considered equally important as citations of research. The authors should be credited, versions and variants should be named, and associated resources should be easily accessible. Methods for identifying citations should be persistent and unique to the software. 

*Stodden et al., 2016* - reproduction of computational processes ought to be achieved*independently*. 

*Wilkinson et al., 2016* - FAIR principles are designed to help machines locate and reuse data. Effective data management facilitates advances in knowledge. Findable, Accessible, Interoperable, and Reusable. FAIR principles are also relevant to other computational tools, including those used for analysis of data. Machine readability is important for using the ever-increasing proliferation of data.

*Boettiger and Eddelbuettel, 2017* - Dockerfiles are used to create Docker images. When the image is running, there is a Docker container. **R**ocker captures R environments for use in Docker. It makes the computational enivornment ‘portable’, for use with a variety of systems. When designing Rocker images, the authors faced a trade-off between generalisibility and specificity. An image designed to be too widely applicable would be cumbersome, but it would be hard to find one that fits with an overly-specific use case. Their solution is to provide base images that are easily expanded for specific requirements. 

___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ _

*Garijo et al., 2022* - some recommendations are perhaps beyond the scope of a single empirical research project - e.g. considering policies on software contributions and long-term maintenance. Provides guidance on managing research software repositories. 

*Nüst et al., 2020* - working towards reproducibility, may mean prioritising openness and human readability over optimising performance. Containers offer greater transparency compared to virtual machines. Proprietary and GUI software are not compatible with containers. Conventions facilitate comprehnsion, and following guidance can assist less experienced researchers generate useful outputs. Dockerfiles provide instructions for installing dependencies and loading required files. This Dockerfile is used to produced an image, and an image that is running is a container. The authors recommend that researchers make use of existing images, such as Rocker. Dockerfiles should be both comprehensible to humans and machine-readable. The authors provide advice on formatting. Package managers may be used in concert with Dockerfiles, but collating all dependency information in a single Dockerfile provides simplicity, and ensures that intended version are specified even when software is updated. It is necessary to capture the specific versions of packages and other software. All files required by the Dockerfile must be included in the repository. Caching is another consideration. Even old Docker containers may not function properly. Best is the enemy of the good.

*Peikert and Brandmeier, 2021* - my approach is very similar to the workflow described in this paper. Dynamic documents promote use of literate programming, resulting in reproducible manuscripts. Make (and Makefiles) outline the sequence in which programmes should be executed, so is appropriate when a workflow involves significant processing of data prior to analysis. Renv does not capture base R version or additional dependencies. 

*Chen et al., 2019* - suggests moving simply beyond notions openness and transparent, and the importance of whether such resources are usable. This does involve preserving a workflow, licensing, using established repositories. Suitable approach to reproducibility considers the data, analysis, and other characteristcis of the research project. 

*Marwick et al., 2018* - research compendia organise resources for reproducibility. Any files *produced* by the compendia ought to be expendable, since it should be trivial to reproduce them using the resources available. Raw data should kept separate from other files so that processing is clear and does not alter the original file. Containers offer a more sophisticated solution to the dependency issue, a text file would be a simpler option.

*Rule et al., 2019* - computational notebooks (e.g. Jupyter notebooks) integrate several aspects of analysis workflow into a single document. Split code into appropriate chunks that achieve a clearly-defined goal. Write functions to avoid duplication, make code modular. This bears many similarities to the Unix philosophy (Gancarz, 2003).

*Nüst et al., 2020* - **R**ocker containers can be ‘stacked’ together as required, avoiding unnecessary complexity. 

*Wickham et al., 2019* - the Tidyverse is designed with humans in mind, facilitating comprehension and use. 

*Lee et al., 2018* - comments should provide a comprehensive account of the code. Examples may help explain functions. The contents of a README should cover elementary information such as setup instructions and licence. Other aspects of recommendations are beyond the scope of empirical research, such as informative error messages, help commands and documentation for APIs (application programming interfaces). 

*Trisovic et al., 2022* - Poor documentation, programming errors and missing resources can lead to reproducibility issues. Automated approach to analysing reproduciblity of over 9000 R scripts, examining whether code would run successfully, not whether output matched reported findings. Approximately three in four files produced errors when executed. Implementing a code-cleaning algorithm reduced this number, but the majority still failed to run successfully. This indicated that good programming behaviours can improve code but cannot totally eliminate issues. Because code is often only produced in order to achieve an initial objective, it is not written with sustainability in mind. Very few files analysed were R markdown, which allows dynamic document generation, which would expose initial researchers to more errors. Errors also arose due to incompatibility of R package versions, which reveals the benefits of containerisation/capturing the computational environment. Recommend renv, relative file paths, and Docker.

*Plesser, 2018* - Initially, the possibility of issues or inconsistencies arising from computer code was overlooked. Much inconsistency about definitions of reproducibility

*Blischak et al., 2019* - scientific approaches requires that researchers may indepdentently authenticate other researchers’ conclusions.

*Trisovic et al., 2021*  - Examining files taken from an online repository, successful executing depended on Python version and the presence of files capturing dependencies.

*Bahaidarah et al., 2022* - reproducibility in research is ‘essential’

*Crüwell et al ., 2019* - behaviours that support reproducibility and replicability in general may be referred to using the umbrella term ‘Open Science Practices’. 

*Nosek et al., 2015* - TOP Guidelines for Open Science practices, requires sharing.

*van Lissa et al., 2020* - WORCS workflow involves many aspects covered in my work.

*Bertin and Baumer, 2020* - use relative file paths, since these are ‘portable’. Adherence to tidyverse style code is likely to lead to more comprehensible code. Several R packages provide support for reproducibile practices. The authors present a package which supports reproducible practices. Users who specify a local working directory are confronted with an error which instructs them to choose an appropriate file path instead. Also tracks dependencies and encourages use of functionality which sets the random seed. 

*Collberg & Proebsting (2016)* - Provision of data and code on request is often not fulfilled as promised. Collected 601 papers and attemped ‘weak repeatability’ - finding and executing programs that supported the work. Of elibigle papers, under half could be successfully executed by the authors. In many cases, the software was not publically available. Various issues included sharing non-final versions of code, original programmer no longer available, local storage failures, restrictive institutional licences, concern about potential use, concern about labour involved in providing support.

*Stodden et al., 2018*. - Studied 204 papers from a journal which required authors to provide data and code on request. These resources were only provided 44% of the time, and results were successfully reproduced in only 26% of cases.

*Leipzig et al., 2021* - different types of resources require different metadata implementations/considerations. Docker containers and YAML frontmatter are types of metadata. Metadata provides an important contribution towards reproducbility. 

*Holmes et al., 2021* - Rmarkdown provides transparency across the entire analytical workflow. Frequent updates to tidyverse packages necessitate recording package versions. 

Though there are some indicators, it can be difficult to verify scientific findings without replication. But there are certain aspects of research that are more easily checked e.g. analysis and data. But the pre-requisite is that these resources are available and suitable packaged to reflect original researchers’ use. This provides opportunity to assess one aspect of research, in order to gauge its trustworthiness.

Rough structure:
Intro: reproducibility crisis, definitions
Sharing data and code
Best practices for coding
Issues with computational reproducibility
Best practices for computational reproducibility
Relationship to present work
___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ _

Definitions:
Definition of replicability as generation of new data to further examine a reported finding - Simons (2014) 
There has been a disconnect between use of terms in experimental and computational disciplines (Drummond, 2009)
Define replicability and reproducibility as I would - Bollen et al. (2015) 
Claerbout uses reproducibility as I would - but replication differently - see Rougier et al. (2017)

A lack of transparency underlies issues with reproducibility, whereas problematic research methods underly issues with replicability (Munafo et al., 2017).

Widespread recognition of problems in science (Baker, 2016).
Researchers has neglected to focus on reproducibility (Ince, 2010).
The notion of reproducible research code was discussed over 30 years ago, with ‘electronic documents’ providing the ability to package code with a manuscript (Claerbout, 1992).
Research software is opaque unless shared (Morin et al., 2012).

Donoho, D.L. 2010 An invitation to reproducible computational research.Biostatistics 11(3): 385–388.

 _________________________

The reporting of scientific studies involves lots of summary. Raw data is collected then processed, then analysed. In a small set of inferential statistics upon which a claim rests, a lot is going on behind the scenes. The ability to trace conclusions back to their original source is not just useful, but a crucial aspect of science. 

Setting the scene
Science has a problem
Why does reproducibility help?

*preserve* computational environment

Different types of reproducibility

Can’t rely on researchers sharing on demand becuase a) they might be not want to reply; b) they might not be able to reply

The benefits of Docker are numerous.

Some suggest virtual machines have benefits over Docker, others suggest Docker has benefits over virtual machines

buildmer fits with the idea of showing incremental work, by automatically re-creating the process of the models that didn’t work
however it also ensures consistency, and optimises output
As an R package, it is archived, and its source code is transparent

PsychoPy was created with open science principles in mind
And pavlovia’s integration with verstion control demonstrates design for computational reproducibility

is groundhog equivalent to renv?

Quarto
Language-agnostic
Rmarkdown more established, quarto shares many features, and represents state of the art 

Given that much of the discussion around adoption of software concerns researcher motivation, compared to availability of tools, this thesis serves as a case study for reproducible research. I do not explore all the capabilities of these tools, but employ a simple implementation of a few in order to demonstrate a minimal use case.

1. Description is not enough
2. Code and data is not enough
3. Other options for reproducibility (e.g. VMs) are poor quality solutions

——————————————

accessible and transparent, increase engagement, responsible

What is open source?

This thesis should be a case study in reproducible research. This is part of the thesis in how to conduct data visualisation research. 
This includes reproducible experiments - PsychoPy

* Introduction to the reproducibility crisis
* Definitions and clarifications
* What am I interested in here?
* What are the general benefits of this? Why does this require consideration? What could go wrong if best practices ignored? What was the state of research prior to best practices?
* What am I not interested in? 

  * What is reproducibility?
  * How does it differ from replicability?
  * Why is it important - what are the consequences?
  * Best practices for experimental design
Use code
Generate materials using code - makes materials easier to describe, consistent, and systematic. 
  * Best practices for data
Keep it in an open format
Keep the original file
Wilson et al. (2017) - this is the main paper for the whole chapter
Convert to tidy data (Wickham)
  * Best practices for code
Use resources to avoid human element e.g. buildmer
Tidyverse philosophy - human readability
Documentation
  * Best practices for computational environment
(git, rmarkdown, papaja, philosophies - functional programming (DRY), etc.) 

Why code for stats?
Easier to check
Why open-source? - democritisation, not proprietary software

How’s it different to {groundhog}?

What other research has the replication crisis involved that is not the purpose of this chapter?
Bishop (2019) - HARKing, p-hacking, low power, publication bias
I have also attempted to address these, but I focus on a different type of reproducibility here.

Discuss how little computational reproducibility is mentioned in the main texts on reproducibility. 

References for why decision-making is a good paradigm
Acknowledge that there are better tasks than what I used
Suggest what could come next

The reference for Docker - Merkel (2014)

1. Docker File - base image  (e.g. rocker verse for tidyverse) + custom instructions (install certain packages) - it’s a set of instructions for the image
2. Docker Image - captures the exact environment that you want (needs to be built before container can run)
3. Docker Container - images become containers at runtime. The container is the environment that image runs on.

docker —version
docker run hello-world
docker images
docker ps
docker stop container_id 

The issue with binder is that you can’t change images (so can’t edit the script) - you can only run it

Spyrison - what factors make a visualisation paper appealing? it’s not open data practices…
Cockburn et al. (2020) mentions open science in visualisation research. 

Hardwicke et al. (2018) explore “Data availability, reusability, and analytic reproducibility” (from title) - Kosara and Haroz suggest that visualisation would benefit from these efforts to improve research quality. 

Kosara and Haroz suggest that the absence of a replication crisis in the visualisation field doesn’t necessarily point to lack of an issue but rather a lack of replications (though they note a handful of conceptual replications).
Their papers discusses several features of poor-quality/sub-standard empirical work that might invalidate a study’s conclusions. Along with other issues (including excessive research degrees of freedom and experimental design issues), they discuss how issues in statistical analysis, such as misapplication of statistical tests, jeopardise validity. To remedy this, data and analysis code should be shared publicly. This facilitates identification of problems and their subsequent rectification. This practices serves as proof of validity: being transparent about analytic process lends credibility. Documenting experimental design assists identifcation of issues/confirmation of good design. Sharing *everything* allows others to carry out all three types of replication to be achieved - including those which are typically challenging - reanalysis and direct replication.

Haroz (2018) - journal articles alone do not provide a complete picture of a research project, so data and code must be openly accessible for the research to be considered reliable/trustworthy. In the visualisation field, a lack of sharing prevents proper examination of conclusions. In VIS 2017 - 15% shared materials openly, 6% shared data openly. Certain sites are less reliable than others because they are easily modified, or are short-lived, becoming afflicted by ‘link-rot’.

