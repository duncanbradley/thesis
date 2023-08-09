# Reproducibility

Setting the scene
Science has a problem
Why does reproducibility help?

Plesser (2018) - much inconsistency about definitions of reproducibility
***
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
***
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

