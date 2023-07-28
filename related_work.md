# Introduction

**When communicating with words, using metaphors helps conveys ideas. When communicating with numbers, data visualisations perform a similar role. A list of numbers can allude to an upwards trend, but representing those numbers *as* visual phenomena facilitates comprehension.**

**Whilst metaphors are evocative, data visualisations afford *precision*. In a line chart plotting an upward trend, the pattern depicted corresponds to the exact nature of the increase. The human visual system’s sensitivity to this systematic depiction makes data visualisation a powerful tool: presenting a different pattern would elicit a different mental representation.**

**Broadly, data visualisations make it easier for the brain to process numerical information. As *external* representations of data, they reduce perceptual and cognitive burdens in interpretation (Scaife and Rogers, 1996). Imparting efficiency and clarity facilitates pattern-recognition and reasoning.**

**However, a single dataset can be depicted in countless different ways, and results can vary widely (Franconeri et al., 2021). Thus, data visualisation’s strength can also be its vulnerability. Outsourcing cognitive processes to a graphical depiction leaves a viewer at the mercy of the chosen method of visual representation. Thus, understanding successful design is crucial.**

**The effectiveness of data visualisations can be defined in many ways, encompassing their various objectives, which include informing, persuading, engaging and promoting memorability (Bertini et al., 2020). However, in general, successful data visualisations will convey pertinent information in a visually- and cognitively-comprehensible manner (Macklinay, 1986, van Wijk, 2005). Failing to meet these criteria risks misleading viewers, which is antithetical to the purpose of data visualisation. Understanding human factors in visualisation is therefore crucial for ensuring charts, graphs, and maps achieve their potential.**

# Generating Evidence

**Regrettably, our understanding of how people interpret data visualisations (and subsequent guidance) is built on shaky foundations (Kosara, 2016). Some recieved wisdom has not been empirically tested at all, other claims has been debunked or have been confirmed only recently. Consequently, it is not always clear where evidence ends and opinion starts; intuition and unsubstantiated statements make for “visualisation folklore” (Correll, 2022, pg. 3). For example, evidence for the harm caused by ‘chart junk’ (visual embellishments, Tufte) is mixed (Franconeri et al. 2021), yet its deprecation is superficially attractive, appealing to aesthetic judgements and ‘common sense’, so it persists (Kosara, 2016). Rigorous data visualisation research is required to fills gaps in knowledge and generate a reliable evidence-base.**

**Visualisation research takes many forms. Studies on data visualisation have employed a range of techniques, including controlled experiments, usability tests, interviews, observations, and case studies, and have focused variously on perception, cognition, exploratory data analysis, and user experience (Lam et al., 2011). Experimental psychology studies on data visualisation are particularly valuable because they generate fundamental evidence on *how* visualisations are interpreted. Conversely, research focused on visualisation design without interest in human interpretation does not produce the same type of generalisable knowledge. Inadequate best practice recommendations indicate insufficient understanding of psychological mechanisms. However, progress can be slow, since theories about cognitive and perceptual processes are built through cumulative work (Chen et al., 2020). Psychological research confers benefits in the form of related empirical work, plus established methods and theories (Correll, 2022, Rensink, 2021).**

**Multiple studies illustrate that preferences and introspection are not a reliable source of information on effective visualisation practices. An experiment exploring physicians’ judgements about clinical trials found that icon arrays resulted in the most accurate judgements, compared to tables, pie charts, and bar charts (Elting et al., 1999). However, none of the 34 physicians in the sample preferred this format. In another study, medical students almost unanimously preferred visualisations with a rainbow colour scheme, but made fewer errors when using a divering (e.g., red-blue) color scheme (Borkin et al., 2011). Tables of values may be favoured over visualisations in certain tasks where the visualisations actually offer signficant benefits (Saket et al., 2019). Participants in Burns et al.'s (2021) study estimated that pictographs took longer to understand, compared to equivalent charts without icons. However, this self-report measure was at odds with recorded response times, which indicated no differences between chart types. Similarly, choropleth maps were preferred by graduate students despite conferring no performance advantage over other statistical map designs (Mendonça and Delazari, 2014). Many authors suggest that preferences are influenced by familiarity, rather than performance advantages. Measuring preferences provides valuable insight into people’s engagement with different visualisations. However, such opinions must be treated appropriately, not used to inform conclusions about effectiveness.**

**Rensink (2021) presents recommendations for generating useful research findings. Using a single task, and manipulating a single feature of interest, over multiple trials, assists in identifying underlying mechanisms. Integrating explanations from prior research helps ensure explanations of mental processes are sufficiently detailed. Other important but frequently overlooked matters include appropriate counterbalancing, reporting effect sizes and acknowledging individual differences.**

**There are a multitude of variables that can be manipulated to gain insight into visualisations. Criticisms are sometimes levelled at studies with particularly high or low levels of experimental control. However, researchers must strike an appropriate balance between ecological validity and precision (Abdul-Rahman et al., 2020). Choosing suitable tasks for participants requires a similar trade-off (Suh et al., 2022).**

**Vision sciences offer a variety of paradigms for assessing various aspects of human performance in visualisation tasks. For example, experiments may evaluate accuracy (by comparing responses to a correct answer), precision (by quantifying variability in responses), or processing speed (by measuring reaction times, Elliott et al., 2020). However, chosen methods must be appropriate for a research question. Whereas methods from vision-sciences are typically concerned with performance in low-level perceptual tasks, other research focuses on *message*-level interpretations (Pandey et al., 2015) or decision-making (Padilla et al., 2018).**

# Precision

**Identifying gaps in our understanding of the psychology of data visualisations requires knowledge of prior lines of inquiry and established findings. Arguably the most influential study in the field of data visualisation is Cleveland and McGill’s (1984) investigation of elementary perceptual processes involved in viewing visualisations. This study sought to establish how *precisely* viewers can represent different graphical properties used to encode data (e.g., position, length, angle, etc.). For each encoding type, participants identified which of two marks conveyed the smaller value, and estimated the difference in size as a percentage. Subsequent ranking based on the magnitude of participants’ errors produced a hierarchy of visual encoding channels. Since position-encoding produced smaller errors than both length- and angle-encoding, this suggests that data will be represented most precisely when encoded using position on a common (aligned) scale.**

**This study’s findings have endured replication (Heer and Bostock) and enthusiasm for perceptual precision has inspired a great deal of important research in this field, regarding visual processing of proportion (Spence and Lewandovsky, Hollands and Spence), variance (Stock and Behrens), correlation (Harrison et al., 2014, Hong et al., 2021), and other basic processes, such as visual comparison (Simkin and Hastie, 1987, Zacks et al. 1998) and color discrimination (Szafir, 2018). It has also influenced development of software for automating visualisation design (Mackinlay, 1986) and simulating visualisation comprehension (Lohse, 1993). However, to consider perceptual precision as the *only* relevant concern in data visualisation design is unwarranted. Many additional factors require consideration.**

# Beyond Precision

**Viewers do not always employ optimally-precise visual cues, which can lead to inaccurate judgements about plotted data (Yuan et al., 2021). Furthermore, in certain tasks, precision can actually hinder, rather than facilitate, judgements. Becuase perceptual averaging benefits from lower spatial frequencies, color encoding offers greater effiency than more precise position encoding in line charts (Correll et al. 2012). Effective decision-making under uncertainty does not necessarily correspond to precision in probability estimation, becuase of differences in mental processing associated with these distinct tasks (Kale et al., 2020).**

**Furthermore, the choice of graphical encodings employed in a data visualisation can influence the *type* of interpretation it elicits. Viewers are more likely to refer to discrete differences when describing bar charts, and trends when describing line graphs, even when the nature of the plotted data is ill-suited to this type of characterisation (Zacks and Tversky, 1999). For example, a line chart may provoke an interpretation like ‘a building becomes more secure as the alarm system becomes more active’, whereas a bar chart may provoke an interpretation like ’a building with 10 motion sensors is more secure than a buildings with 5 motion sensors’. Similarly, *production* of bar charts and line charts is also influenced by whether a discrete or continuous relationship is specified in the brief. When presenting average values, design choices also influence beliefs about the distribution of underlying data. A data point positioned ‘inside’ a bar is considered more likely than one positioned ‘outside’ (Newman and Scholl, 2012), but confidence intervals eliminate this bias (Pentoney and Berger, 2016). This accords with the notions that metaphor (Ziemkiewicz and Kosara) and affordances (Kindlmann) play a role in a visualisation’s ability to convey information.**

**Attention is another important factor in comprehension of data visualisations. Complex tasks requiring selective attention can cause distinctive patterns (e.g., dinosaurs) in non-focal data to be completely overlooked (Boger et al., 2021). Features of data mentioned in textual summaries are over-weighted in viewers’ mental representations, causing difficulty in the ability to assume the perspective of a naïve viewer (Xiong et al. 2019). The salience of vertical bars may be responsible for incorrect reports of differences between histograms with identical distributions (Lem et al., 2014). Explicitly encoding differences between pairs of values can facilitate pattern recognition (Nothelfer and Franconeri, 2020) and highlighting particular attributes can facilitate recall (Ajani et al., 2021).**

**Simply conveying information is not the only purpose of data visualisations, since they also influence recall, opinion-formation, and decision-making (Bertini et al., 2020). A large number of cognitive biases affect these aspects of processing data visualisations, among several others (Dimara et al., 2020). Whilst it is necessary to consider the precision of elementary perceptual processes, that alone is not sufficient for a comprehensive understanding of how data visualisations function (Bertini et al., 2020).**

# Axis Manipulation

**Understanding how inaccurate impressions arise provides insight into mechanisms involved in interpretating data visualisations. This, in turn, can inform recommendations for effective design. A notorious topic in the literature on misleading visualisations is axis truncation. This typically refers to the practice of employing a y-axis which commences with a non-zero value (Correll et al. 2020), though may also be considered any adjustment at either extreme of an x- or y-axis (Pandey, 2015). There is considerable evidence that the range of axis values employed in charts influences interpretations of data.** 

**The majority of research on this topic has focused on how constraining the range of an axis, and thus increasing the physical distance between plotted values, increases the perceived magnitude of the difference between those values. Accountants appraising financial performance using line and bar charts interpreted plotted increases as larger when they were depicted using a truncated y-axis (Taylor and Anderson, 1986). Similarly, bar charts’ employing truncated axes biased students’ investment decisions (Arunachalam and Pei, 2002). A large-sample online experiment also observed that differences between values were considered larger when truncated bar charts were used, examining message-level representations of data by framing questions in terms of subject matter (access to safe drinking water) rather than graphical elements (difference in bar length, Pandey et al., 2015). Other axis manipulations, such as log-scales (Romano et al., 2020), inverted scales (Woodin et al., 2021, Pandey et al., 2015), and expanded axes in scatterplots (Cleveland, 1982) also influence judgements about data.**

**Risk communication research has independently generated similar findings. Since many hazards cannot be completely avoided, data visualisations are often used to contrast the levels of risk associated with two scenarios (e.g., intervention versus no intervention). Thus, assessments of ‘risk reduction’ are essentially judgements about the magnitude of difference between two values. Compared to stacked bar charts which include additional information on the total number of individuals at risk, those which display only the number of individuals *affected* (thus increasing bars’ visual disparity) increase impressions of the magnitude of difference (Stone et al., 2003).**

**The physical distance between data points consistently biases interpretations of the magnitude of difference in spite of attention to actual numerical values and design features intended to highlight truncation (Correll et al., 2020). Bias is diminished, but still observed, following explicit warnings about errors in judgement due to y-axis truncation. This suggests that this effect is largely automatic, and does not primarily occur due to insufficient engagement of cognitive capabilities (Yang et al., 2021).** 

**One study observed no association between participants’ data visualisation literacy and their susceptibility to axis truncation in bar charts (Yang et al., 2021). Conversely, another experiment suggests that the effect of axis truncation on subjective judgements and quantiative estimates in line charts disappears when accounting for data visualisation literacy (Driessen et al., 2022). However, heterogeneity of observed literacy levels in the latter experiment raised concerns about the scale used to measure data visualisation literacy.**

**Pandey et al. (2015) and Yang et al (2021) propose that this bias could arise due to the dominance of first impressions during translation from graphical schemata (Pinker, 1990) to a ‘real-world’ conceptual understanding (see also, Carpenter and Shah, 1998, Tversky and Kahneman, 1974).Additionally, Yang et al. (2021) suggest that viewers’ beliefs about a designer’s communicative intent could play a role in viewers’ interpretations. Under Grice’s *Cooperative Principle* (Grice, 1975), communicative contributions are assumed to be truthful, relevant, clear, and sufficiently informative. Therefore, viewers might infer that differences between values must be genuinely large if they appear large, else they would not be presented as such.**

**In *How to Lie With Statistics*, Huff (1954) suggests axis truncation creates a false impression of plotted data. This practice has been labelled ‘deceptive’ for both bar and line charts (Lauer and O’Brien, 2020). A tool for automatically identifying and correcting misleading line charts extends y-axes to include zero whenever this value is omitted from the original chart (Fan et al., 2022).** 

**Recent work has presented an alternative perspective on this controversial practice. Non-truncated axes can obscure significant differences just as easily as truncated axes can exaggerate inconsequential differences. The appropriate magnitude to convey depends on what constitutes an important difference in the data at hand (Correll et al., 2020). Indeed, *failing* to truncate an axis could be considered misleading in certain circumstances (Wainer, 1984). Yang et al. (2021) suggest that effective designs will ensure that viewers’ immediate characterisation of plotted data closely corresponds to their interpretation following a detailed inspection. Acknowledging that differences must be depicted in proportion to their significance, Witt (2019) report that axes spanning approximately 1.5 standard deviations provide a balance between sensitivity and bias in fields with standarised effect size measures, such as psychology. Unfortunately, different domains will not necessarily share the same notion of what amounts to a meaningful difference. Choices regarding axis ranges are ultimately designers’ unavoidable decisions (Correll et al., 2020).**

**Line charts and bar charts are equally susceptible to biases due to truncation (Correll et al., 2020; Witt et al., 2019), yet there may be reason to treat them differently. Truncation distorts the mapping between a bar’s extent and the quantity it represents, but line charts’ free-floating position-encoding does not convey quantity in the same manner, providing immunity against such distortion (Bergstrom and West). Therefore, whilst starting an axis at zero provides no guarantee of an appropriate depiction of values’ differences, it ensures adherence to a fundamental aspect of visualisation design. Alternatively, quantiative data with discrete categories can be plotted using position-encodings only (e.g., dot plots), avoiding this trade-off.**

————

# New Perspectives on Misleading Visualisations

**Some misleading visualisations may prevent viewers from accurately extracting numerical information. However, research on axis truncation illustrates that misleading visulisations may also interfere with subjective judgements. A line chart may avoid misrepresenting a dataset’s numerical properties yet generate a distorted impression of the magnitude of a trend. The latter is revealed not by assessing viewers’ *performance*, but their *interpretations*.**

**Influencing subjective judgements may still be considered a *misleading* practice because a dishonest framing of information could elicit a warped impression that would differ from the same viewer’s better-informed perspective. Therefore, not all aspects of deceptive design are *inherently* misleading, and deceptiveness can be context-dependent. Comparing examples of ‘misleaders’ from Ge et al.’s (2023) design space helps illustrates this distinction. ‘Concealed uncertainty’ and ‘cherry-picking’ refer to unambiguously deceptive practices, whereas ‘aggregation’ and ‘scale range’ must be preceded by the word *inappropriate* in order to convey their capacity to deceive.**
 
# The Present Thesis

**Data visualisation design has the potential to impact subjective judgements about many aspects of data, such as variability, noise, and numerosity. The literature on axis truncation has closely examined how data visualisations can influence judgements of *relative* magnitude (differences between values). In contrast, little is known about how data visualisations may influence judgements of *absolute* magnitude: how large or small values are. This thesis seeks to remedy this issue. This thesis explores judgements of values’ *magnitudes*. It is my thesis that **



Introducing my topic - magnitude judgements:
Rarely mentioned as deceptive when describing axis manipulations

Stone et al. (2015) - concerned with risk magnitudes - understanding of actual likelihood. Notes that a complete understanding of relative differences doesn’t actually guarantee an understanding of abolsute magnitude.
Some studies have looked at impressions of magnitudes. 
Stone et al. (2017) - actually look at impressions of magnitude as a result of different bar chart designs. Rather than manipulating the range of axis values, they investigated the addition of stacked bars conveying background information, versus blank space. When the background informaton was not highlighted, this increased perceptions of the event’s likelihood. 

**Related work has also explored comprehension of visualisations which violate the convention of mapping higher values to higher positions. Participants’ difficulty rejecting first impressions generated by unconventional bar charts designs led to frequent misinterpretations of presented values, particularly for participants with low literacy (Okan et al., 2012).**

It’s possible that this occurs because visually representing numerators *and* denominators supports a viewer to take account of the proportion in their reasoning, helping to convey the true magnitude (Stone et al. 2018). 
Okan et al. (2018) - manipulated axis limits to explore perceptions and understandings of risk. They find that risk perceptions were increased when axis terminated just above the bars, compared to well above at a denominator value. The measures collected regarding interpretations of values’ magnitudes are combined into a measure of risk reduction, to probe risk perception. They suggest that magnitude judgements could be informed by axis limits, but do not test this directly. 

The only study which has focused specifically is Sandman et al. (1994). They used risk ladders, where indivudal probabilities are presented on vertical scales encompassing a range of probability values. By change the range of values, the position of data points also changes. Participants view a single risk ladder, which plotted data on asbestos risk. Perceived threat (a composite measure made up of perceived likelihood, danger, reported concern and fear) was higher when the same data point appeared at the 75% position on a scale, compared to the 25% position. There was mixed evidence for the effects on intentions to spend money mitigating the risk. Participants did not rely on the visuals completely, since a substanially higher risk plotted at the same position as the higher instance, still generated higher ratings. There is also a confound, in that the range of axis values differed between conditions. 

Kindlmann and Scheidegger (2014) set out an algebraic approach to visualisation design. This concerns the nature of the correspondence between a dataset and its visual representation, and consists of three principles. Problematic visualisation practices occur when a) the degree of variation within a dataset is disproportate to the appearance of variation, b) different datasets appear indistinct, and c) altering visualisation parameters alters appearance. Yet many visualisations are agnostic about magnitude. 

**Comparing linear and logarithmic scales, Freeman et al. (2021) did not replicate this findings. However, in addition to the graphical cue to magnitude, the risk ladders employed additional symbolic number cues in their titles, labels, and accompanying descriptions. Use of a broken axis may also have limited attention to physical position. Therefore, participants’ judgements may not have been purely based on appearance of visualisation**

# Text
Visualisations are rarely presented in isolation. Often, they contain captions, titles or annotations, and in scientific or news articles, they are embedded within a larger context. Despite this, relatively little work has explored the effect of accompanying text on the interpretation of information presented in data visualisations. 

Kim et al. (2021) - captions less likely to inform takeaway interpretations when not corresponding to salient features, so the recommendation is to make important features more salient e.g. by excluding irrelevant dates/categories, or adding annotations. 
Cheng et al. (2022) - interested in the content/style of captions. Captions referring to highly salient phenomena facilitate recall when refer to actual numbers. Captions referring to less salient phenomena facilitate recall when they refer to visual patterns.
Hearst (2023) argues that text and charts should be treated with equal importamnce.

# Visualisation Literacy
It is impossible to discuss the construction of effective data visualisations without reference to data visualisation literacy. Increasing popularity and use of data visualisation has expanded the audience who are exposed to charts. This means that individuals with minimal or zero training are often expected to interpret visual displays. 

Burns et al. (2023) discusses research aimed at understanding how relatively inexperienced users understand charts. This is important, but there is inconsistency around what constitutes a novice, and also an inconsistency between general population and samples used to explore that population. The term novice is unhelpful since it forces a binary perspective onto a more nuanced picture. Why not look at individual variation in ability? Burns reports very few cases where novice was defined by literacy.

It is useful to understand variability in biases by looking at individual differences. Get a better picture of how they might work, and the types of audience most likely to be affected. 

Some people are ‘novices’ - discuss the two novices papers - but there are not just two groups - literacy scales can be useful
Visualisation literacy is the ability to comprehend data presented in visualisations (Boy et al.)

Galesic and Garcia-Retamero’s 13-item scale (2011) was based on Friel et al.’s (2001) hierarchy of skills for interpreting visualisations. 
Okan et al. (2012) found that this scale predicted the degree to which a graphical representation would facilitate comprehension of risk information. 
Okan et al. (2016) used the 2011 scale, looking at charts which violated conventions around presenting magnitudes (e.g. inverted axes). Higher literacy is associated with more time processing graph the misleading features, facilitating correct interpretations. Lower literacy was associated with greater reliance on conventions (e.g. relationship between vertical position and magnitude).

Garcia-Retamero et al. (2016) developed a new method due to the length and potential negative consequences of previous tests (i.e. inducing anxiety). Based on prior work developing numeracy scales through subjective judgements. The 5-item version is a refined version of the 10-item subjective scale, based on the items which most strongly correlated with the objective measure, and actually performs better than the 10-item scale. Final items focused on skills (how good are you at …)  more than preferences ( do you like ….) . Diverse participant pool (US m-turkers, UGs in Spain, surgeons and patients in Spanish hospitals). Captures variation in both objective abilities but also metacognition - beliefs about own abilities/skills. Additional benefit of reducing anxiety. 
Lee et al. (2017) - created the 53-item VLAT with a wide range of visualisation types. VLAt is postiively associated with both numeracy and need for cognition (Lee et al., 2019)
Okan et al. (2019) developed another short graph literacy scale, noting the excessive length of current scales. This 4-items were chosen due to their representativeness of overall literacy, and the score is based on the number of correct answers (1 per chart). 
Camba et al. (2022) suggest that the ability to detect misleading charts should be considered an important feature of data visualisation literacy. 
Ge et al. (2023) noted that previous work on visualisation literacy has focused on interpretation of well-designed charts. Despite this, the ability to make sense of poorly designed charts is also relevant. Good approach - not to ask Ps whether they think the charts are misleading, but to intersperse misleading and honest charts within a test and measure accuracy. Develop a robust test of 30 items to assess ability to accurately comprehend deceptive designs. Ge et al. (2023) suggest that sufficient attention and critical thinking can help combat misleading visualisations. However, some cognitive biases are persistent even against these efforts. Perhaps this is where the distiction between correctness and interpretation comes in (see Correll et al., 2020, Yang et al., 2021 Stone et al., 2015).

Why have I chosen this specific measure? It’s been used in similar studies e.g. Yang et al. (2021); Mantri et al. (2022).(Can find other uses through citations - (https://scholar.google.com/scholar?cites=12562930392859617416&as_sdt=2005&sciodt=0,5&hl=en)) It is also likely to be more sensitive than Okan et al.’s  (2019) scale given it ranges from 0-30, rather than 1-4 (find use through citations)

# Overview of Chapters

**Chapter 2** contains a review of relevant published research on data visualisation, providing background and justification for the empirical work contained in this thesis. **Chapter 3** contains a review of relevant published work on computational tools for reproducible research and details the computational approach used in this thesis. **Chapter 4** presents a pair of experiments which demonstrate that magnitude judgements can be influenced by data points’ relative positions within axis limits. **Chapter 5** presents an experiment which demonstrates that magnitude judgements can be influenced by the limits of color legends in choropleth maps. **Chapter 6** presents a pair of experiments which demonstrate the role of contextual information on interpretation of magnitude in data visualisation. **Chapter 7** contains a discussion of my empirical work, including implications and future directions. 

——————————————————————

# Not Sure Where

Robert Kosara pie chart misconception work

Tversky (1997) argues that our representation of data is entrenched in language, cognition and culture. 

Does inclusion of a visualisation actually increase persuasion/trust/belief (Tal & Wansink) + failed replication

Bar charts not starting at zero were perceived as less credible in a student sample (Geidner and Cameron, 2017), suggesting an awareness of what constitutes a misleading design. 

Pandey et al. (2015) suggest deception occurs when an interpretation of a chart deviates from the true ‘message’. Yet this leaves open the question of what the message should be. One supposes that they are referring to the ‘ground truth’ e.g. Correll et al. (2020). 

Correll and Heer - the space of ‘black hat’ visualisation concerns design of charts with intention to mislead. This involves violating conventions, inappropriate aggregation, concealing important patterns, exploiting visual biases.

We do not passively receive the information. That which has been encoded has to be decoded.

Look at reviewer comments to see what are considered my successful contributions 

It is my thesis that interpretations of magnitude can differ according to the design of a data visualisation. Judgements pertaining to values’ magnitudes are under-explored in data visualisation research, but are relevant to interpretations and decision-making. The effect is one of context: certain aspects of a chart subtly convey the context surrounding values, giving cues to magnitude. However, it must be recognised that there are limits to a chart’s influence, and that magnitudes judgements are not wholly determined by the presentation style.

It is my thesis that the design of a visualisation can influence interpretation of plotted values’ absolute magnitudes. It is well established that design choices (e.g., y-axis truncation) affect interpretation of plotted values’ *relative* magnitudes, yet *absolute* magnitudes have been under-explored. In several controlled experiments, using a range of visualisation types I demonstrate that 

Studying mechanisms is beneficial for understanding how to design effective graphics (Elliott et al., 2020).**

Ceja et al. (2020) point out a limitation of visual reproduction methods for measuring perceived values of previously seen charts. They can only provide insight into how people *remember* values, since any bias in visual perception would apply equally during the process of visually reproducing a value through the method of adjustment. Padilla et al. (2020) - go beyond speed and accuracy measures to gain real insight into the cognitive effort required to complete a task. Index working memory through more sensitive methods: dual-task paradigm and pupilometry. 

Valuable and robust findings have been established by uncovering known psychology mechanisms, apply them to visualisation (attention for focus and declutter, curse of knowledge, datasaurus (Boger)). Other numerical biases have been studied in a datavis context (e.g. Dimara et al. 2017, 2019) Framing effects were initially primarily a reference to valence framing, but have since expanded to encompass a wider range of biases. What does this say about where we need to look for new knoweldge?

Abdul-Rahman et al. (2020) discusses the importance of controlling for non-manipulated variables. 

Pandey et al.’s (2015) interest in deception at the *message* level necessitates appropriate testing. They did not measure precision or accuracy in estimation tasks, but probed participants’ interpretations of visualisations’ overall message. 

The precision work speaks to our concern with (in)accuracy - that we might be misleading others, that others may mislead us, that charts may be weak and lack clarity. But there is so much more than simply extracting values wrong.

Anscombe’s quartet

It may seem suspect to have this level of editorial control, instead wanting to let the data speak for themselves, but considering the various rhetorical tecniques, it’s clear there is no truly objective way to present data. 

Dimara et al. (2020) point out that there has not been a lot of work investigating cognitive biases in visualisation. 

Expanding both axes in scatterplots, such that a cluster of data points appears smaller and is surrounded by blank space, increases the perceived correlation (Cleveland et al., 1982).

This directed the focus for many subsequent studies towards understanding basic processing.

Dimara et al. 2020 also discussed the notion that rational approaches shouldn’t be mistaken for biases (which necessitate genuine error) due to different perspectives.

Hullman and Diakopolous - Rhetoric

Garcia-Retamero and Galesic (2010) - however, people’s understanding of relative differences is improved when foreground information in presented within the context of background information (in bar charts and icon arrays).

**In the same study where they look at truncated line charts, Lauer and O’Brein also explore 3D pie charts which distort the actual expression of numbers. They fail to distinguish between charts that misrepresent values, and those that simply present a certain view.**

Although not empirically tested, a suggestion for avoiding misinterpretation of truncated line charts involves introducing additional blank space below plotted data (Gagnon, 2018).

However, this risks conveying the magnitude of differences as smaller, potentially diminishing viewers’ interpretations of the magnitude of important differences.**

# Cognitive Models and Visualisation Theories - where would this go? - the classic models haven’t really informed my review or experiment 

Padilla (2018) argues for greater adoption and generation of cognitive models in visualisation research. Knowledge of the cognitive mechanisms processes involved in interpreting a particular visualisation helps understand how a suitable experiment can be designed. There’s not a single process, but a combination, starting from encoding of basic visual information, top-down and bottom-up processing, through to decision-making. See Okan et al. 2012 and 2016 for overview of models

The algebriac approach has motivated the study of the effectiveness of different chart options for detecting issues during exploratory data analysis (Correll et al., 2019) and building a tool for identifying misleading visualisations through repeat testing with distinct inputs (McNutt et al., 2020).  

# Beyond Representation - not sure where this would go
Recent work by Markant et al. (2023) highlights how prior attitudes interact with data visualisation, such that even visualisations which successful updated beliefs about specific patterns in data did not alter overall attitudes. It’s not all about portraying accurate and clear plots. 

**The definition of misleading charts can be expanded even further, accounting for the fact that they can be *used* to further a point. Lisnic et al. (2023) - deception with visualisation is typically considered to occur when charts do not apply good visualisation practices. However, this paper suggests that, in their large social media sample, few charts (~12%) actually used deceptive practices. Instead, the deception was achieved by using the (properly constructed) charts to support unreliable reasoning. ‘Vulnerable’ visualisations are those that lack relevant context for exposing weaknesses in these inductive arguments. This lends support the notion that certain uses of visualisation are only misleading *in context*. The issue is *epistemological*: issues arise when the message conveyed by the visualisation is at odds with other knowledge about the world.** 

For example, Wainer (1984) presents a number of examples of bad visualisations, mostly focused on distorting data by manipulating axes, incorrectly implementing area encoding, using inconsistent baselines, etc. 

Misleading visualisation design has often been characterised as interfering with a viewer’s ability to accurate extract numerical information (Wainer et al., 1984; Rougier et al. 2014). 

Measuring objective performance (error, rt, precision) has been the focus of much research (Hegarty, 2011). 

**Lo et al.’s taxonomy tries to be more comprehensive - but ends up being too comprehensive - this illustrates that it’s important to be specific when we’re talking about deception.** Lo et al. (2022) point out that some frequently discussed misleading visualsations are rarely employed (e.g. inverted axes). They create a taxonomy of misleading visualisations, from a large sample of images associated with bad charts harvested from the internet. They identify cases where it’s not the visualisation per se, but just bad data. Some where the chart has inconsistencies or omissions - though it’s not guaranteed this is actually misleading. Others still where the chart suggests something but it isn’t plotted wrong e.g. implying causation through correlation. Argue that visualisations that are not informative are comparable to misleading visualisation, but I suggest there is a crucial difference. Not central to the main issue- maybe not too much detail required here. Nevertheless, it is important to remain cogniscant of what we mean by misleading - Lo’s defintion is too comprehensive.

Ge et al. (2023) also note that assessing response accuracy requires a specific task, so misleadingness will always be related to specific tasks.**

Brust-Renck et al. (2013) - importance of intentionally selecting a message and designing chart appropriately to convey gist. Reyna and Brainerd (2008) - Suggest it’s not just about making humans more like computers and memorising verbatim detail, it’s about making sure the gist that they do extract captures the true nature of the information. 
