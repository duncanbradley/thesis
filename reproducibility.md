# Reproducibility

3000-4000 words. 

Chapter in a fortnight
Need to add all papers below
1. For each paper, search within the reproducibility folder, read the summaries in the other papers to get an idea of the interesting points
2. Read through paper and highlight relevant points
3. Write summary of paper

Ask Andrew about what the angle is here: is it mainly a justification for what I’ve done?

* Introduction to the reproducibility crisis
* Definitions and clarifications
* What am I interested in here?
* What are the general benefits of this? Why does this require consideration? What could go wrong if best practices ignored? What was the state of research prior to best practices?
* What am I not interested in? 


  * What is reproducibility?

Replication crisis - Ioannidis

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
* 

  * Read Turing Way and EasyStats

Why code for stats?
Easier to check
Why open-source? - democritisation, not proprietary software


What other research has the replication crisis involved that is not the purpose of this chapter?
Bishop (2019) - HARKing, p-hacking, low power, publication bias
I have also attempted to address these, but I focus on a different type of reproducibility here.
Szollisi et al (2020) - Is Preregistration Worthwhile
Rule et al. (2019) - Ten simple rules for writing and sharing computational analyses in Jupyter Notebooks
Nosek et al (2019) - Preregistration is Hard and Worthwhile
Navarro, D. (2020). Paths in strange spaces: A comment on preregistration.
Maxwell, S. E., Kelley, K., & Rausch, J. R. (2008). Sample size planning for statistical power and accuracy in parameter estimation
Kupferschmidt, K. (2018). More and more scientists are preregistering their studies. Should you?
Kühberger, A., Fritz, A., & Scherndl, T. (2014). Publication bias in psychology: a diagnosis based on the correlation between effect size and sample size.
Baker, D. H., Vilidaite, G., Lygo, F. A., Smith, A. K., Flack, T. R., Gouws, A. D., & Andrews, T. J. (2021). Power contours: Optimising sample size and precision in experimental psychology and human neuroscience.
Wickham et al. (2019) - welcome to the tidyverse
Patil, P., Peng, R. D., & Leek, J. T. (2019). A visual tool for defining reproducibility and replicability
Marwick, B., Boettiger, C., & Mullen, L. (2018). Packaging data analytical work reproducibly using R (and friends). The American Statistician, 72(1), 80–88. https:/ / doi.org/ 10.1080/ 00031305.2017.1375986
Martinez,C.,Hollister,J.,Marwick,B.,Szöcs,E.,Zeitlin,S.,Kinoshita,B.P., … , & Meinke, B. (2018). Reproducibility in science: A guide to enhancing reproducibility in scientific results and writing. https://ropensci.github.io/reproducibility- guide/
Hermans, F., & Aldewereld, M. (2017). Programming is writing is programming. In Companion to the first International Conference on the Art, Science and Engineering of Programming. Brussels, Belgium, pp. 1–8.
Broman, K. (2019). Initial steps toward reproducible research: Organize your data and code. https://kbroman.org/steps2rr/pages/organize.html
Blischak, J. D., Carbonetto, P., & Stephens, M. (2019b). Creating and sharing reproducible research code the workflowr way. F1000Research, 8, 1749. https:/ / doi.org/ 10.12688/ f1000research.20843.1
Klein et al. (2018) –“A Practical Guide for Transparency in Psychological Science”
Plesser, H. E. (2018). Reproducibility vs. replicability: A brief history of a confused terminology. Frontiers in Neuroinformatics, 11, 76. https://doi.org/10.3389/fninf.2017.00076
Open Science Collaboration. (2015). Estimating the reproducibility of psychological science. Science, 349, aac4716. https://doi. org/10.1126/science.aac4716
Munafò, M. R., Nosek, B. A., Bishop, D. V., Button, K. S., Chambers, C. D., Du Sert, N. P., …Ioannidis, J. P. (2017). A manifesto for reproducible science. Nature Human Behaviour, 1, 0021. https://doi.org/10.1038/s41562–016-0021
Houtkoop, B. L., Chambers, C., Macleod, M., Bishop, D. V., Nichols, T. E., & Wagenmakers, E. J. (2018). Data sharing in psychology: A survey on barriers and preconditions. Advances in Methods and Practices in Psychological Science, 1,70–85. https://doi. org/10.1177/2515245917751886
Gilmore, R. O., Kennedy, J. L., & Adolph, K. E. (2018). Practical solutions for sharing data and materials from psychological research. Advances in Methods and Practices in Psychological Science, 1, 121–130. https://doi.org/10.1177/ 2515245917746500
Kass, R. E., Caffo, B. S., Davidian, M., Meng, X. L., Yu, B., & Reid, N. (2016). Ten simple rules for effective statistical practice. PLOS Computational Biology, 12, e1004961. https://doi.org/10.1371/ journal.pcbi.1004961
Nűst, D. et al. The Rockerverse: Packages and Applications for Containerisation with R. The R Journal 12, 437–461 (2020).
Lee, B. D. Ten simple rules for documenting scientific software. PLoS Comput Biol 14, e1006561 (2018).
Sandve, G. K., Nekrutenko, A., Taylor, J. & Hovig, E. Ten simple rules for reproducible computational research. PLoS Comput Biol 9 (2013).
Jiménez, R. C. et al. Four simple recommendations to encourage best practices in research software. F1000Research 6 (2017).
Trisovic, A., Mika, K., Boyd, C., Feger, S. & Crosas, M. Repository approaches to improving the quality of shared data and code. Data 6, 15 (2021).
Knuth, D. E. Literate programming. The Computer Journal 27, 97–111 (1984).
J. Cito, V. Ferme, and H. C. Gall, “Using docker containers to improve reproducibility in software and web engineering research,” in International Conference on Web Engineering. Springer, 2016, pp. 609–612.
A. M. Smith, D. S. Katz, and K. E. Niemeyer, “Software citation principles,” PeerJ Computer Science, vol. 2, p. e86, 2016.

Klein et al (2018) make a strong case for why sharing data should be common practice in science. Two central arguments are that (1) science is based on verifiability not trust – one wants to be informed about every detail in an analysis instead of relying solely on the authors word for it, and (2) analytic reproducibility can only be achieved when data are openly available re-running analyses to identify errors is a key ingredient of a healthy research cycle.

References for why decision-making is a good paradigm
Acknowledge that there are better tasks than what I used
Suggest what could come next
Ratcliff, R., & McKoon, G. (2008). The diffusion decision model: theory and data for two-choice decision tasks.

From Barbosa et al. 
“After all, bad code is better than no code (Barnes, 2010; Gleeson et al., 2017).”
“Use python or R notebooks (Rule et al., 2019) to develop your analyses and git for version control (Perez-Riverol et al., 2016).”


Metadata - “Note that there are 2 types of metadata: metadata about the data set as awhole and metadata about the content within the data set. Ifthe audience ishumans, write the metadata (the README file) for humans. Ifthe audience includes automatic metadata harvesters, fill out the formal metadata and write agood README file for the humans.” - from Wilson et al. (2017)

White EP, Baldridge E, Brym ZT, Locey KJ, McGlinn DJ, Supp SR. Nine Simple Ways toMake ItEasier to(Re)use Your Data. Ideas inEcology and Evolution. 2013; 6(2).
Sandve GK, NekrutenkoA, Taylor J,Hovig E. Ten Simple Rules for Reproducible Computational Research. PLoS ComputBiol. 2013; 9(10). https://doi.org/10.1371/journal.pcbi.1003285PMID: 24204232
