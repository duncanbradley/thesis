# Reproducibility

## Introduction

In recent years, the typical model for conducting and publishing scientific research has been intensely scrutinised. This has prompted serious concern about whether reported findings can be trusted. In Psychology, many studies are not equipped to generate reliable results (Fraley and Vazire, 2014) and the literature is afflicted with a high rate of false-positive findings (Simmons et al., 2011). A large-scale project performing replications of psychology experiments revealed that the evidence for many established conclusions was not as strong as initially reported (Open Science Collaboration, 2015). A survey of over 1500 researchers found widespread perception that science was facing a ‘crisis’ (Baker, 2016). However, this recognition also has provoked concerted efforts to address these problems in research, through the Open Science movement (Cruwell et al., 2019).

Recommendations for improving scientific research focus on different aspects of the research lifecycle. Improving how studies are conducted, reported, and evaluated requires targeted solutions. For example, rigorous methods and statistical analysis, facilitate researchers in generating valid conclusions. Other practices, such as openly sharing data and code, increase transparency, providing crucial insight into how these conclusions were generated (Munafo et al., 2017). Peng (2011) suggests that the ultimate test of scientific claims is *replication*. This involves independently repeating an entire empirical investigation, thus generating new data to assess consistency with an existing finding. However, this is resource-intensive. A different, albeit less rigorous, approach to evaluating scientific claims involves using a project’s original data and code to validate reported findings. If this is possible, the work is *reproducible*. By reusing existing resources, this is simpler than conducting a replication study, yet still facilitates assessment of whether reported results are reliable. However, if researchers do not make relevant resources available, this undertaking is impossible. Research that cannot be evaluated in this way is not reproducible.

The empirical work presented in this thesis has been conducted with a focus on ensuring reproducibility. This chapter will review published work on best practices for sharing code, data, and computational environments, and outline the approach to reproducibility employed in this thesis.

## Sharing Code and Data

There are many convincing arguments for openly sharing code and data. Scientific approaches require that researchers can properly assess the credibility of research (Klein et al., 2018) and independently authenticate other researchers’ conclusions (Blischak et al., 2019). Thus, supporting third parties in reproducing research can increase perceptions of its robustness and reliability (Sandve et al., 2013). This also facilitates identification of errors in analysis (Klein et al., 2018). In addition to these motivating factors, authors may even appreciate the advantages of reproducible practices more than their peers (Piccolo and Frampton, 2016). For example, these practices can save time and effort (Sandve et al., 2013), and permanently sharing resources provides insurance against the loss of those resources (Klein et al., 2018).

A textual description of analysis in a manuscript presents an incomplete and vague account of the analytical process (Piccolo and Frampton, 2016). Researchers must share code in order to detail the journey from the original dataset to inferential statistics (Klein et al., 2018), otherwise their software is a ‘black box’ (Morin et al., 2012). Initially, the possibility of issues or inconsistencies arising from computer code was overlooked (Plesser, 2018). However, it is now widely recognised that a computational analysis pipeline presents many opportunities for error. Making code openly available permits *independent* reproduction of all computational processes (Stodden et al., 2016). This, in turn, can engender trust, promote collaboration, and facilitate new applications (Jiménez et al., 2017). Each stage of processing must be included (Sandve et al., 2013) and any files *produced* using the analytical pipeline should be expendable, since reproducing them using the code supplied should be trivial (Marwick et al., 2018). For full transparency, data should be supplied in a raw, unprocessed form (White et al., 2013). Keeping raw data separate from other files ensures that the original file is not altered and the stages of processing are clear (Marwick et al., 2018). Other resources, such as stimuli and experiment scripts should also be shared alongside data and code (Klein et al., 2018).

The FAIR principles (Wilkinson et al., 2016) propose that data (and metadata) should be Findable (easily discovered), Accessible (easily obtained), Interoperable (easily integrated with other tools), and Reusable (easily employed beyond their original use). FAIR principles are also relevant to other computational tools (Lamprecht et al., 2020), with similarities to Open Source Software, which does not place limits on who may examine, adapt and extend the underlying code (Jiménez et al., 2017).

When sharing resources, a researcher’s choices can either assist or obstruct re-use (Chen et al., 2019). For example, using non-proprietary file types ensures that third parties can readily access resources (White et al. 2013). Rather than personal or institutional websites, independent providers (e.g., Open Science Framework) are recommended for depositing these resources (Chen et al., 2019, Klein et al., 2018). Effective documentation is also important. A ‘codebook’ or ‘data dictionary’ can be used to explain the contents of a data file (Klein et al., 2018), inline comments can be used to explain code (Rule et al., 2019), and a README can be used to cover elementary information such as setup instructions (Lee et al., 2018). Documentation can also provide details on data collection and known issues (White et al. 2013). Finally, licences contribute to a research project’s longevity, and provide a clear statement for third parties, ensuring that their use of resources is appropriate (Jiménez et al., 2017). Where possible, lenient licences should be employed to avoid unnecessary restrictions (White et al., 2013).

### The Importance of Public Sharing

If authors consistently shared data and code *on request*, freely available access could be considered unnecessary. However, empirical research demonstrates why it is important to share resources *publicly*. In a study of 204 papers from a journal which *required* authors to provide data and code on request, only 44% delivered on this promise (Stodden et al., 2018). Where research code is not publically available, various issues preclude procurement. These include local storage failures, restrictive institutional licences, concern about potential use, and concern about labour involved in providing support (Collberg & Proebsting, 2016). Provision of data and code on request simply cannot be guaranteed, necessitating public sharing. In the field of data visualisation research, public sharing has historically been uncommon. Of papers submitted to the VIS 2017 conference, 15% shared materials openly and 6% shared data openly (Haroz, 2018). Greater transparency would increase the credibility of data visualisation research and facilitate identification and rectification of issues in published work (Kosara and Haroz, 2018).

Researchers’ working practices and technological solutions both contribute to reproducibility. Whilst it has been suggested that behaviour and technology play *equal* roles (Sandve et al. 2013), others argue that innovations have been so effective that researchers’ engagement with these tools is now the primary challenge (Grüning et al., 2018). Researchers report that several factors impede or deter their sharing of research data, including lack of expertise, lack of precedent, and lack of time (Houtkoop et al., 2018).

## Effective Programming Practices

Programming with an automated approach has three main benefits over manual processing: increased reproducibility, increased efficiency, and reduced error (Sandve et al., 2013). Writing functions in a modular style avoids redundant repetition, promotes comprehension and supports reuse of code (Wilson et al., 2015). Researchers should also split code into appropriate chunks which each achieve a clearly-defined goal (Rule et al., 2019). These approaches share many similarities with the Unix philosophy (Gancarz, 2003).

The task of preparing data prior to analysis is an important aspect of working with data. Wickham (2014) presents a set of tools, and underlying theory for this task, arguing that analysis can be facilitated by ensuring that data is in the correct structure. This structure is known as ‘tidy’ data, which consists of a column for each variable (each type of measurement) and a row for each observation (each unit measured). A principled approach simplifies the process of creating a tidy dataset using Wickham’s functions. Because each function treats data in a standardised manner, various functions can be employed in concert. The collection of R packages containing these functions (the ‘Tidyverse’) was designed with a concern for *humans*, not just computational performance (Wickham et al., 2019), so Tidyverse-style code is likely to promote comprehension (Bertin and Baumer, 2020).

Several other coding behaviours can facilitate or inhibit reproducibility. For example, *absolute* file paths refer to a specific directory on a user’s machine, which will not be replicated on other users’ machines. Using *relative* file paths, which locate files in relation to the project directory, ensure code is *portable* and can be used on any machine (Bertin and Baumer, 2020). Additionally, independent researchers cannot successfully verify findings if only an approximate resemblance is achieved. Therefore, for any process involving random number generation, a random seed must be specified within the script, to ensure exact reproduction of results (Sandve et al., 2013). For maximum transparency, researchers should avoid controlling code through comments, but use functional approaches instead (Wilson et al., 2015).

### Literate Programming and Dynamic Documents

Knuth (1984) presented a novel perspective on comprehensibility in computer programming which has been influential in the literature on computational reproducibility. Knuth’s premise is that a programming script should not be regarded primarily as a set of instructions for a computer to follow, but a tool to assist humans in understanding those instructions. This approach, known as ‘literate programming’, involves pairing code with corresponding text, such that reporting and documentation are closely linked to underlying code (Sandve et al., 2013; Piccolo and Frampton, 2016). Dynamic documents allow authors to mix code and narrative within a single file, with results updated whenever the document is rendered. Producing (and re-producing) an entire manuscript using a dynamic document offers opportunities to easily observe the implementation of code used for each aspect of analysis (Peikert and Brandmeier, 2021). In addition to descriptive and inferential statistics, data visualisations may also be rendered dynamically (FitzJohn et al., 2014). This efficient format enhances transparency (Holmes et al., 2021), supports interactivity (Rule et al., 2019) and avoids errors due to manually collating results (Peikert and Brandmeier, 2021). Including computationally-expensive code (e.g., complex statistical models) within a dynamic document can be problematic since this code is executed every time the document is rendered (FitzJohn et al., 2014). However, capacity for model caching provides a convenient antidote.

## Computational Environments

Unfortunately, providing data and code is necessary, but not sufficient, for guaranteeing reproducibility. For example, research has found that even when the nominally required resources are available, it is not always possible to reproduce results exactly (Stodden et al., 2018), or even to execute the code (Collberg & Proebsting, 2016). A study using an automated approach to test the execution of 379 Python files found that success depended in part on the Python version used and the presence of files capturing dependencies (Trisovic et al., 2021). Another study used a similar approach to test over 9000 R scripts (Trisovic et al., 2022). Approximately three in four scripts produced errors when executed. Implementing a code-cleaning algorithm reduced this number, but the majority (56%) still failed to run successfully. This indicates that good programming practices can improve code but cannot totally eliminate issues. Another source of error was incompatibility of R software versions and required packages. Thus, a failure to recreate the *computational environment* used when originally running the script prevented successful execution.

Peng (2011) argues that reproducibility can be characterised as a spectrum. Sharing code offers some benefits over a standalone publication, providing data increases reproducibility further, but ensuring that the code can be precisely executed is even better. Each researcher’s unique preferences and proficiencies result in roughly the same number of computational environments as individual researchers, illustrating the necessity to record one’s computational environment (Nüst et al., 2017). Additionally, software under continuous development, such as the Tidyverse collection of packages, is frequently updated, meaning code can stop functioning unless specific versions are recorded (Holmes et al., 2021). Other software dependencies and parameter settings also complicate reproduction, requiring precision and comprehensiveness in documentation in order to achieve full *computational reproducibility* (Piccolo and Frampton, 2016).

### Capturing Computational Environments Using Containers

Like many other aspects of reproducibility, innovations in software have made it possible for researchers to capture their computational environments. R package managers, such as *renv* (Ushey, 2020) conveniently load specific package versions for individual projects. However, they do not guarantee computational reproducibility, because they do not preserve the version of R in the same way (Holmes et al., 2021) or support additional dependencies (Peikert and Brandmeier, 2021, Nüst et al., 2017). Containerisation technology offers an effective solution. A ‘container’ can capture a much greater extent of the computational environment than a package manager (Grüning et al., 2018). This technology also provides an efficient and principled approach for recreating the environment, compared to a list of instructions for manual execution (Marwick et al., 2018).

Docker (Merkel, 2014) is a popular tool for generating containers. This process begins with a Dockerfile: a text-based file which provides instructions for installing specific package versions and loading other dependencies and resources. The Dockerfile is used to build a Docker image, which captures the computational environment. When this image is running, the environment is activated, and users may interact with this environment (Nüst et al., 2020b, Boettiger and Eddelbuettel, 2017).

Collating all dependency information in a single Dockerfile provides simplicity, and ensures that the original computational environment can be reproduced even after updating the software. Since the primary objective is ensuring reproducibility, this approach prioritises openness and human readability over optimising performance (Nüst et al., 2020b, Boettiger, 2015). As well as simple implementations, complex arrangements can be accommodated, but present additional challenges. For example, dynamic document generation may also require specifying LaTeX dependencies (Boettiger, 2015).

### Rocker for Capturing R Environments

Researchers can save time and ensure consistency by using pre-existing Docker images (Nüst et al., 2020b). One particularly valuable example of this is Rocker which captures R environments for use in Docker. This tool provides portable R environments for use with a variety of systems, facilitating computational reproducibility (Boettiger and Eddelbuettel, 2014). Consequently, any researcher can execute, edit, and extend R code in a replica of the environment originally used for its development. Developing Rocker images involves a trade-off between generalisability and specificity. An image designed to be too widely applicable would be cumbersome, but images with overly-specific use cases would be hard to find (Boettiger and Eddelbuettel, 2017). The solution involves providing base images that are easily expanded for specific requirements, with various Rocker images ‘stacked’ together as required, avoiding unnecessary complexity (Nüst et al., 2020a).

### Comparing Containers with Virtual Machines

Virtual machines perform a similar function to containers. However a notable difference is that virtual machines are large, whilst containers are comparatively lightweight (Piccolo and Frampton, 2016). This difference is due to the fact that virtual machines use their own kernel, whereas containers use the operating system kernel provided by the local machine. This reduces the relative size of a container, and enhances its computational power (Cito et al., 2016). Thus, virtual machines may be considered more comprehensive than containers, offering a greater degree of separation from the characteristics of the host machine (Grüning et al., 2018, Piccolo and Frampton, 2016). However, containers are typically compatible with version control systems (Piccolo and Frampton, 2016) and offer greater transparency (Nüst et al., 2020). Furthermore, due to their modular features, making minor adaptations is trivial with a container but comparatively prolonged with a virtual machine.

## Pragmatism Over Perfectionism

Despite the myriad recommendations for best practice, a principle often endorsed in the literature on reproducibility concerns the merits of small efforts. Taking *some* steps to increase reproducibility still enhances a project’s quality compared to neglecting this aspect altogether (Piccolo and Frampton, 2016). Withholding resources in pursuit of continuous refinement risks never sharing them at all. This fallacy is captured by the maxim ‘the best is the enemy of the good’. Analysis code does not need to be perfect in order to be useful to others (Klein et al., 2018), and it is impossible to benefit from external inquiry if the code is not shared (Barnes, 2010). Barnes (2010) argues that perceived limitations simply reflect that the code works only for the specific scenario at hand; inessential improvements are by definition not required for basic functioning. Researchers ought to accept these limitations and share their code anyway. In addition to code, this notion has also been applied to metadata (White et al., 2013) and containerisation (Nüst et al., 2020).

## The Approach to Reproducibility in This Thesis

The following describes the different aspects of reproducibility for the subsequent empirical studies presented in this thesis. Whilst this work does not follow a pre-defined workflow, the approach closely resembles published workflows (e.g., van Lissa et al., 2020; Peikert and Brandmeier, 2021).

### Data, Code, and Dynamic Documents

For each study, raw data is provided. The only pre-processing of this data was the essential removal of sensitive information (transparently documented in corresponding scripts). All subsequent processing, from data cleaning to data wrangling, is included in a Quarto dynamic document (Allaire, et al., 2022), which also includes all data analysis, visualisation, and accompanying text. Therefore, consistent with the principles of literate programming, textual descriptions are presented in conjunction with corresponding code (Sandve et al., 2013).

The process of selecting appropriate statistical model specifications can be opaque, involving random effects, convergence issues, and additional parameters. In the interest of transparency, consistency, and statistical rigour, I use the *buildmer* package (Voeten, 2022) to automatically determine appropriate statistical model structures. This provides a reproducible account of the steps preceding identification of each statistical model employed in analysis, reducing human error and documenting a process as well as its outcome (Rule et al., 2019). As this package is available CRAN (Comprehensible R Archive Network), it source code is archived and transparent.

### Docker Containers

Capture dependencies requires reproduction of the computational environment used (Boettiger, 2015). Each study in this thesis is associated with a Dockerfile, which can be used to launch a Docker container with the appropriate R version and package versions used during analysis. Employing Rocker images provides an Integrated Development Environment (RStudio), and speeds up construction of the Docker image. In each container, an entire manuscript can be generated from scratch. The Dockerfiles also provide important project metadata in a human- and machine-readable format (Leipzig et al., 2015).   

### Experiment Resources

In experimental psychology, sharing stimuli and experiment scripts is another important aspect of transparent research practices (Klein et al., 2018). All data visualisations shown to participants, along with all code used to generate those visualisations, has been made available. Experiments were programmed using PsychoPy, which developed as a tool for conducting open and reproducible research (Peirce et al., 2019). The underlying technology is open source, the experiment scripts use non-proprietary file formats, and the ability to specify particular software versions avoids new releases breaking older code. Its integration with GitLab version control software means that each experiment is packaged in a public online repository. An entire project’s resources can be downloaded to a local machine, and an interactive version of the experiment can be run online. 

## Conclusion

This chapter has discussed how a lack of reproducibility in published research can reduce credibility, and has revealed how various approaches can increase reproducibility. At the heart of these recommendations is the need to comprehensively share resources and embrace technological solutions. Making research code and raw data openly available helps an opaque analysis process to become transparent. When an entire paper’s results can be fully reproduced by an independent third party, they can be thoroughly verified.

For each empirical study in this thesis, I share raw data alongside code packaged in a dynamic document. This provides transparency, illustrating exactly how the study’s findings were generated. In addition, creating Docker containers for each study allows the analyses to be reproduced in their original computational environment. This comprehensive approach is uncommon in research on data visualisation, therefore this work serves as an example of how research in this field may be made more reproducible.

## Manuscraps

## Beyond the Scope
A suitable approach to reproducibility considers the data, analysis, and other characteristcis of the research project (Chen et al., 2019). 
*Lee et al., 2018*- Other aspects of recommendations are beyond the scope of empirical research, such as error messages, help commands and documentation for APIs (application programming interfaces). 
*Garijo et al., 2022* - some recommendations are perhaps beyond the scope of a single empirical research project - e.g. considering policies on software contributions and long-term maintenance. Provides guidance on managing research software repositories.
Reproducing the environment used to generate a container is an additional challenge to the sustainability of this solution (Grüning et al., 2018). 
*Peikert and Brandmeier, 2021* - Make (and Makefiles) outline the sequence in which programmes should be executed, so is appropriate when a workflow involves significant processing of data prior to analysis. 
*Nüst et al., 2017* - introduce the notion of Executable Research Compendia, providing data, code, computational environment, and interface. The concept is that this is ‘self-contained’. This follows the development of Research Compendia (Gentleman and Lang, 2007), which focused on providing data and analysis code, and use of dynamic documents. Executable Research Compendia are a way of packaging research resources/output. Key to the notion of Executable Research Compendia is being providing a ‘one-click’ functionality that indicates successful reproduction of all computational processes, resulting in an exact correspondence between generated and reported results. However, perfect reproducibility only indicates that computational processes run as expected, not that the conclusions of the research independently valid.
Continuous integration offers the ability to detect whether each new change has not prevented successful outputs/compilation (FitzJohn et al., 2014).
Whilst I did not follow a specific pre-defined workflow, my approach closely resembles published workflows (e.g., van Lissa et al., 2020; Peikert and Brandmeier, 2021).
[end of beyond the scope]

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
Recording the dependencies is necessary (Grüning et al., 2018).
Computational notebooks and tools for dynamic document generation (Jupyter, R Markdown) do not capture the computational environment (Grüning et al., 2018). 

Dockerfiles capture a greater level of dependencies than makefiles, because they can capture software versions (Boettiger, 2015). 
*Nüst et al., 2020b* - It is necessary to capture the specific versions of packages and other software. 

*Nüst et al., 2020b* - Package managers may be used in concert with Dockerfiles, 

That Dockerfiles are human-readable promotes transparency. Tools must be practicable as well as productive. Lack of familiarity is a barrier (Boettiger, 2015).
*Nüst et al., 2020b* - Conventions facilitate comprehnsion, and following guidance can assist less experienced researchers generate useful outputs. 
*Nüst et al., 2020b* - Dockerfiles should be both comprehensible to humans and machine-readable. 
*Nüst et al., 2020b* - All files required by the Dockerfile must be included in the repository. 
*Nüst et al., 2020b* - Even old Docker containers may not function properly. 

*Nüst et al., 2017* - Docker cannot be used in conjuction with proprietary software. 
*Nüst et al., 2020b* - Proprietary and GUI software are not compatible with containers. 

*Nüst et al., 2020b* - Caching is another consideration. 

Haroz (2018) - journal articles alone do not provide a complete picture of a research project, so data and code must be openly accessible for the research to be considered reliable/trustworthy. 
Haroz (2018) - Certain sites are less reliable than others because they are easily modified, or are short-lived, becoming afflicted with ‘link-rot’.

Kosara and Haroz suggest that the absence of a replication crisis in the visualisation field doesn’t necessarily point to lack of an issue but rather a lack of replications (though they note a handful of conceptual replications).
Their papers discusses several features of poor-quality/sub-standard empirical work that might invalidate a study’s conclusions. Along with other issues (including excessive research degrees of freedom and experimental design issues).
Sharing *everything* allows others to carry out all three types of replication to be achieved - including those which are typically challenging - reanalysis and direct replication.

Effective data management facilitates advances in knowledge. Machine readability is important for using the ever-increasing proliferation of data (Wilkinson et al., 2016).

The FAIR principles (Wilkinson et al., 2016) were developed to facilitate use of data by machines.
Documentation to introduce each program (Wilson et al., 2015). 

*Lee et al., 2018* - The contents of a README should cover elementary information such as setup instructions and licence. 
Different types of resources require different metadata implementations/considerations. Metadata provides an important contribution towards reproducbility (Leipzig et al., 2021).

Data files should not include blank cells, which introduce ambiguity regarding whether data points are missing (White et al. 2013). 

~*Through version control, archiving of changes to a document does not rely solely on user’s descriptions but digital records of actual modifications (Wilson et al. 2015).*~
~*Sandve et al. 2013 - Version control facilitates inspection of prior versions of code, allowing the stability of results to be assessed across different versions. Maintaining a record of intermediate steps facilitates diagnosis of issues, plus inspection of entire approach preceding conclusions. *~
~*Using github to support computational reproducibility (Perez-Riverol et al., 2016)*~

Stodden et al. 2013 - irreproducible computational working practices are akin to poor record keeping. The expectations around documentation of software do not match the care required for other aspects of research. The typical researcher’s documentation of software is inconsistent with their attention to detail in other aspects of research. 

Computational working practices should receive the same attention to detail typically applied to other aspects of research (Stodden et al., 2013), yet research code is not usually produced with sustainability in mind (Trisovic et al., 2022). 

*Ioaniddis, 2005* - Many lines of inquiry may be producing unreliable conclusions. Better powered experiments are required. Highlights a general concern with the trustworthiness of findings. 

*Klein et al. (2018)* - Reproducibility crisis has sparked “urgent conversation”.

Improving methods, plus reporting and dissemination, will improve the quality of published research. But these are different to efforts to improve reproducibility. A lack of transparency underlies issues with reproducibility, whereas problematic research methods underly issues with replicability (Munafo et al., 2017)

HARKing, p-hacking, low power, publication bias (Bishop, 2019)

Researchers have neglected to focus on reproducibility (Ince, 2010).

*Crüwell et al., 2019* - behaviours that support reproducibility and replicability in general may be referred to using the umbrella term ‘Open Science Practices’. 

*White et al. 2013* - open science recommendations are similar across disciplines. 

*Nosek et al., 2015* - TOP Guidelines for Open Science practices, requires sharing.
Inconsistent definitions of reproducibility have been employed in academic works (Plesser, 2018), particularly between experimental and computational disciplines (Drummond, 2009). In this thesis, I will use the following definitions. ’Reproducibility’ in research involves generating results exactly as reported using the project’s original data and code. ‘Replicability’ in research involves generating new data to assess consistency with an existing finding (Peng, 2011).

Working reproducibly is a duty (Sandve et al., 2013).

The notion of reproducible research code was discussed over 30 years ago, with ‘electronic documents’ providing the ability to package code with a manuscript (Claerbout, 1992).

Thus, it is necessary to capture the specific computational environment used when originally running the software. When specifying a project’s dependencies (the requisite files and software), researchers should ensure that the exact version of each package and program are supplied. 

To capture dependencies, one must reproduce the computational environment used. (Boettiger, 2015)

accessible and transparent, increase engagement, responsible

The reporting of scientific studies involves lots of summary. Raw data is collected then processed, then analysed. In a small set of inferential statistics upon which a claim rests, a lot is going on behind the scenes. The ability to trace conclusions back to their original source is not just useful, but a crucial aspect of science. 

Assessing reproducibility offers another simpler way to evaluate reliability of work (Peng, 2011). 

~*buildmer fits with the idea of showing incremental work, by automatically re-creating the process of the models that didn’t work*~
~*however it also ensures consistency, and optimises output*~
~*As an R package, it is archived, and its source code is transparent*~
~*Rule et al. say: Document the process, not the results. *~

