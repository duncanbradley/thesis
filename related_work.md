# Related Work

The purpose of this chapter is to place my work in a wider context - to give the reader an idea of what type of research has previously been carried out in this area, to provide a setting. Some notes on my key motivations: 
  * we need good evidence, we can’t rely on assumptions
  * we need to move beyond precision and look at interpretations
  * we need to move away from the idea that certain designs are *inherently* misleading, and think about context

1. We need good evidence to properly understand how visualisations work
2. Claims haven’t always been based on evidence (Tufte)
3. And asking people is also problematic
4. But there are good methods
5. This is evidence for the role of psychology (Chen, Abdul-Rahman)
6. Evidence on Precision
7. Cognitive Models and Visualisation Theories
8. Deception
9. Evidence on Cognition (short)
10. Truncation
11. Literacy

# The Need for Evidence

We do not passively receive the information. That which has been encoded has to be decoded.

So far, I’ve briefly defined the nature and purpose of data visualisation. I’ve emphasised the importance of honesty in visualisation. I suggest that this concerns not just the data itself, but the communication. Just as we have methods for assessing the veracity of data, we may also have methods for assessing the veracity of visualisation. But for this, we need evidence, because the human visual and cognitive systems are not simple. So, how good is the evidence?

Kosara (2016) makes the case for a solid empirical foundation for design guidelines. However, the evidence base is weak (Kosara, 2016). Some of the recieved wisdom has not been tested at all, other guidance has been disproven or has been confirmed only recently. It’s not even always clear where the evidence ends and the opinion starts - intuition and unfounded statements make for “visualisation folklore” (Correll, 2022, pg. 3). The role of data visualisation research is to generate robust evidence to fill gaps in knowledge. As Correll’s article explores reserarchers’ shared values (). This work was not a systematic review of all literature, but points towards a lack of consistency in achieving new knowledge. 

MacDonald-Ross (1977; see Spence and Levandovsky, 1991) also cautions against making dismissive judgements about ‘expert’ advice in the absence of empirical evidence. Pie charts were used widely without expert approval, but Spence and Lewandowsky find evidence that they are useful in certain scenarios.  - relate this to Tufte

# The State of Visualisation Research - What’s The Role of Psychology?

So, having established that we need an evidence base, next comes the question of how to generate this evidence. One option would be to base our guidance on what people think works best. However, introspection and hunches are not always a reliable source. 
Elting et al. (1999) - compared to tables, pie charts, and bar charts, icon arrays resulted in the most accurate judgements about clinical trials, but none of the 34 physicians in the sample preferred this method.
Burns et al. (2021) - participants estimated that the pictographs took longer to understand, compared to equivalent charts without icons. However, this self-report measure was at odds with the actual recorded response times, which indicated no differences between chart types.
Borkin (2011) - medical students almost unanimously prefered the rainbow colour scheme, but made few errors when using divering color scheme (e.g. red-blue).
Comparing different statistical map designs - choropleth maps preferred but confered no performance advantage over other map designs (Mendonça et al., 2014).
Saket et al. (2019) explore the speed and accuracy different chart types for different tasks. They find that variation, such that there is no one best option overall.
Saket et al. (2019) find mixed evidence regarding association between preferences and performance. There was association, but not perfect, since expressed a liking for tables in some tasks where they performed signifcantly worse. Many authors suggest that preferences are driven to some extent by familiarity, rather than performance advantages. 
This is not to say that collecting these judgements isn’t useful. Indeed, it provides a valuable insight into people’s willingness to engage with visualisations. However, it’s important that these findings are treated appropriately, and aren’t used to inform conclusions about effectiveness.

If we can’t just ask people what they think, what should we do instead?

# Methods
It’s important to use methods which are suitable for the investigation. Pandey et al.’s (2015) interest in deception at the *message* level necessitates appropriate testing. They did not measure precision or accuracy in estimation tasks, but probed participants’ interpretations of visualisations’ overall message. 

Much of the vision-science work is focused on user performance. 

Studying mechanisms is beneficial for understanding how to design effective graphics (Elliott et al., 2020). 

Elliott et al. (2020) suggest looking beyond current methods to methods from vision sciences, where there are a variety of paradigms for assessing performance, which allow researchers to gather robust data on a various aspects of visualisation. Dependent measures vary in their focus, either looking at accuracy (comparing response to a correct answer) precision (variability of response) or reaction time (processing speed). 

Lam et al (2011) reveal the wide range of investigations that can be considered ‘studies in visualisation’, from a focus on exploratory data analysis, perception and cognition and user experience, plus a range of techniques, from controlled experiments, usability tests, interviews, observations, and case studies. 

Ceja et al. (2020) point out a limitation of reproduction methods for measuring perceived values of previously seen charts. They can only provide insight into how people *remember* values, since any bias in visual perception would apply equally during the process of visually reproducing a value through the method of adjustment.

Suh et al. (2022) express the difficulty in choosing appropriate tasks, highlighting a trade-off between ecological validity and precision.  

Rensink (2021) reveals how the field of visualisation research is muddied by not-useful, not-relevant, or poor quality research, which makes it harder for good findings to be disseminated. There are several common issues with studies in visualisation, which could be improved to produce more useful findings. Using multiple trials and datasets and manipulating specific visualisation features, allows the underlying mechanism to be uncovered. Use one task at a time, vary one feature at a time, removing redundant aspects, in order to be able to identify what is causing differences in performance or interpretation. Other frequently missed yet important issues include appropriate counterbalancing, reporting effect sizes and acknowledging individual differences. Ensuring proposed *mechanisms* of behaviour are not solely based on statistical methods, and explanations draw on existing knowledge of other mechanisms. 

The structure of Franconeri’s summary presents a sequence of greater abstraction, with the final stage further away from the specifics of the dataset and closer to the general. First precision for extracting individual values, then working with visualisations to make comparisons and summaries, then decision making. It’s clear that there is not just one way of defining effectiveness in visualisation.

Part of Franconeri et al.’s (2021) discussion of creating understandable charts discusses the role of conventions for representing magnitude. These include color intensity and horizontal and vertical position. This is to fit with a schema, facilitating comphrension. Make plots intuitive so original patterns can be recovered.

Padilla et al. (2020) - go beyond speed and accuracy measures to gain real insight into the cognitive effort required to complete a task. Index working memory through more sensitive methods: dual-task paradigm and pupilometry. 

Boger et al. illustrates the limitations placed on processing when performing complex comparison tasks.  

The stuff that has been really successful isn't really new. It's established psychology effects applied to visualisation (attention for focus and declutter, curse of knowledge, datasaurus (Boger)). What does this say about where we need to look for new knoweldge?

Adjacent fields like perceptual psychology might tackle problems well because of more established methods, related empirical work and theory (Correll, 2022). The best source of theory in visualisation might be pyshcological perception and cognition research (Rensink, 2021).

There’s a distinction between my point about asking designers what they think works and asking viewers what they think works. The first is a point about whether claims are built on any evidence at all. The second is a point about whether claims are built upon *the right type* of evidence. 

Unfortunately the guidance contains a lot of received wisdom. The most famous is chart junk. Essentially represents a preference for mimimalist designs. There’s nothing wrong with it per se, other than the fact it wasn’t based on evidence. Indeed, there have been situations where it’s been shown to be helpful. Defining the term experimentally would also clarify exactly what features constitute ‘chart junk’, making guidance clearer.

Robert Kosara pie chart misconception work
Chart Junk
  * Beyond memorability - Borkin
  * Kopp et al. - embellishments
  * Okan et al. (2018) - labels are useful
  * Borgo et al. (2012)
  * Haroz et al. (2015)
  * Skau et al. (2015)
  * Stock and Behrens (1991)
  * Kulla-Mader (2007)
  * Franconeri et al. (2021) - overview of ‘chart junk’ studies

# The Role of Psychology

Chen et al. (2020) extoll the virtues of psychology work in visualisation, proposing that it becuase it is ultimately studying the mind, and using visualisations simply as experimental stimuli, it can generate generalisable and fundamental findings, greatly facilitating progress in our quest to understand of the how visualisations work. This is compared to work which is focused on the visualisations themselves, which is useful, but does not produce the same type of knowledge. Analysing a single comparison constitutes a fraction of the work, since theories about cognitive processes are built through cumulative work and performing several comparisons. Inadequate best practice recommendations indicate unsufficient understanding of cognitive processing of visualisations. 

Abdul-Rahman et al. (2020) illustrate the huge number of variables that can be manipulated to gain insight into visualisations. Discuss the importance of controlling for non-manipualted variables. Criticisms levelled at studies with high and low levels of experimental control - but important to recognise that in the former, focus is to on ecological validity, in the latter, important to recognise that scope of manipulation may be purposefully broader. There is often a need to strike a balance, depending on the research question. 

Tversky (1997) argues that our representation of data is entrenched in language, cognition and culture. 

# What evidence do we have? - Precision

Arguably the most influential experiment in the data visualisation field was conducted by Cleveland and McGill (1984), who sought to identify elementary perceptual processes involved in viewing visualisations. There are many different ways of graphically representing values. However, the precision of the visual system’s differs according to the characteristics of the stimulus. Therefore, through psychophysical testing, it’s possible to work out how well interpretations of different presentation formats correspond to the actual numbers. For each visualisation, participants identified which of two marks conveyed the smaller value, and estimated, as a percentage, how much smaller this was than the larger mark. The consequent leaderboard is the “ranking of visual channels”.  Position-encoding produced less error than both length- and angle-encoding. Therefore, where possible, data should be encoded using position on a common (aligned) scale. This means that grouped bars elicit more precise representations than stacked bars. How do we interpret this ranking? Are there theoretical reasons for why area is not as good as other channels?

Work also covered basic processes, such as the anchoring mechanism behind visual comparisons (Simkin and Hastie, 1987). 

The issue here is not the work itself, rather the interpretation of this work. Indeed, this work has endured replication (Heer and Bostock), it’s findings are far-reaching and really useful. However, to naively take this as the *only* relevant consideration is unheeded, as there are many other tasks than judging ratios. (Bertini et al. 2020). 

Position-encoding is the optimal choice for extracting single values, but is not necessarily the optimal choice for other tasks (e.g., pattern recognition). The ability to extract values is not the only use of charts. Different tasks benefits from different encondings. One particularly interesting example is situations where precision hinders, rather than facilitates, judgements (Correll et al. 2012). Aggregretation tasks are less concerned with specifics, more concerned with overview, so there are better encoding types, which are less precise. Line charts typically used for timeseries data. The way the visual system tackles line graphs makes it more difficult to perform averaging. Averaging is particularly efficient at lower spatial frequencies, so there is better averaging with color than line graphs. This finding offers a new perspective on Anscombe’s quartet. Effectively conveying differences between datasets conceals their similarities. Using a less precise visual channel would facilitate recognition of the latter. 

Furthermore, different encoding types are suited to different types of data. For example, some are intrinsically suited to displaying part-to-whole relationships (e.g., pie charts, stacked bar charts), whilst others are better suited to displaying trends (e.g., line charts). Zacks and Tversky (different chart types serve different purposes); 

The choice of certain graphical encodings can influence interpretations of the type of data a visualisation presents. Zacks and Tversky (1999) found that participants were more likely to refer to discrete differences when describing bar charts, and trends when describing line graphs. Responses were more influenced by graph format than by data type. Zacks and Tversky explained how this can lead to an atypical description, with discrete gender differences characterised using gradated changes (e.g., *“The more male a person is…” *). However this particular (now well-known) comment was only given by 12% of participants. *Production* of bar charts and line graphs was also influenced by whether a discrete or continuous relationship was specified in the description. Zacks and Tversky argued that cultural conventions in visualisation design are likely to play a substantial role in the driving these effects, with perceptual and cognitive biases playing a more minor role. Metaphor/affordance/congruence.
Displaying proportions with encoding that factilitate recognition of part-to-whole relationships (e.g., Spence and Levandovsky, 1991) can be achieved using stacked bars and pie charts, but not with grouped bars, which would be favoured by the precision rankings. 

Finally, Bertini et al. explained that simply conveying information is not the only purpose of data visualisations. They can also be persuasive, help individuals to remember information, or aid decision-making. It is important not to narrowly define effectiveness as extraction efficiency, but to consider effectiveness within the wider context of the multiple functions that visualisations can serve. Hullman et al, (2011) - inefficent processing due to “visual difficulties” may benefit cognition. 

The precision work speaks to our concern with (in)accuracy - that we might be misleading others, that others may mislead us, that charts may be weak and lack clarity. But there is so much more than simply extracting values wrong.

Yuan et al. (2019) found that when graphs presented *multiple* values in equal set sizes (2v2, 6v6), this was no longer the case. Observers did not use the optimal cue, *position,* in their judgements of aligned bars, but *extent* (area/length). They also reported that when viewing bars graphs with unequal set sizes, observers are biased by the overall area covered. This means that the set with more values is typically seen as having a greater average value (signal size bias). Yuan et al.’s (2019) study explores perceptual proxies: features of a display used by the visual system to represent basic aspects of a dataset. Perceptual proxies provide shortcuts for decision-making by employing pattern-recognition processes instead of encoding exact values (Ondov et al., 2020). Their use illustrates that individuals do not necessarily engage with the aspects of a visualisation which are most relevant for their judgements, but draw on other aspects, which can sometimes lead them astray. 

Even when not misleading, certain charts can be considered be unhelpful. Nothelfer and Franconeri (2020) demonstrate that explicitly encoding differences between values (rather than plotting two values separately) can assist users in finding required information. This demonstrates employing design choices which emphasise relevant information facilitates communication. 

There is a fair amount of theory corresponding to how extract values, interpret pattern, but the last part, which is understanding that data in context, is pretty vague. The more abstract, the harder it is to study in a controlled manner. Psychophysics has a clear set of variables to control and manipulation. Building a theory of how information presented visually influences decision-making and interacts with prior beliefs, is challenging. Sensemaking attempts do this, often using qualitative methodology. 

Indeed, a focus on precision is also present in the literature on misleading visualisations. This literature is important because understanding how visualiastions can produce distorted impressions of data also informs about effective design practices, mechanisms, etc. Informs our understanding of human interaction with visualisation in general, not just edge cases where the wrong impression occurs. Lets us know how *different* impressions occur.  

# Cognition - Beyond Precision

Typically focused on extraction of information, not extraction of meaning. 

Previously discussed work has been concerned with whether values are extracted precisely. But thisn’t isn’t the only way values can mislead. What other ways could we be mislead, not by imprecision (perceptual bias), but by cognitive bias.

Striking patterns can be easily missed. Boger et al.’s datasaurus study illustrates the role of selective attention. Participants instructed to view dots in a particular colour/location failed to notice distinct dinosaur patterns in non-focal data. Even when one is trying to be assume the perspective of a naïve viewer, it’s difficult to adopt an objective outlook when viewing visualisations. Xiong et al.’s curse of knowledge study demonstrates that being briefed about a particular pattern results in over-weighting of these aspects in one’s cognitive representation. The implications for creators are that important messages may be missed if they are not addressed explicitly. What is obvious to a designer may not translate to a viewer. Focus and declutter has long been a recommendation, and is now supported by empirical evidence. This body of research also points to the use of text to support communication of a chart’s intended message. It may seem suspect to have this level of editorial control, instead wanting to let the data speak for themselves, but considering the various rhetorical tecniques, it’s clear there is no truly objective way to present data. 

Newman Scholl, Pentoney Berger, 

Does inclusion of a visualisation actually increase persuasion/trust/belief (Tal & Wansink) + failed replication

Hullman & Diakopoulos: Rhetoric

Taxonomies have captured the mapping between data types and visualisation types, revealing what is suitable for understanding particular datasets. 

Brust-Renck et al. (2013) - importance of intentionally selecting a message and designing chart appropriately to convey gist. 

Reyna and Brainerd (2008) - Suggest it’s not just about making humans more like computers and memorising verbatim detail, it’s about making sure the gist that they do extract captures the true nature of the information. 

How do I move from general cognitive bias to truncation specifically?
What’s different about truncation?

# Deception and Misleading

Lisnic et al. (2023) - deception with visualisation is typically considered to occur when charts do not apply good visualisation practices. However, this paper suggests that, in their large social media sample, few charts (~12%) actually used deceptive practices. Instead, the deception was achieved by using the (properly constructed) charts to support  unreliable reasoning. ‘Vulnerable’ visualisations are those that lack relevant context for exposing weaknesses in these inductive arguments. This lends support the notion that certain uses of visualisation are only misleading *in context*. The issue is *epistemological*: issues arise when the message conveyed by the visualisation is at odds with other knowledge about the world. 

Dimara et al. (2020) present a list of cognitive biases which may be related to visualisation, categorised by the types of tasks to which they are related. For example, biased estimation may occur due to the base-rate fallacy, biased decision-making may occur due to the attraction effect, framing effect, biased opinion reporting may occur due to focusing effect, etc. They also identify ‘flavours’ of bias in addition to main categorisation for example ‘association’, where the relationship between different pieces of information affects cogntiion, or ‘baseline’, where correspondence to outcomes affects cognition. They also note that there may not be a direct association with taxonomies of more fine-grained visualisation tasks, but it’s clear to see how they may connect. They point out that there has not been a lot of work investigating cognitive biases in visualisation. Also discussed is the notion that rational approaches shouldn’t be mistaken for biases (which necessitate genuine error) due to different perspectives. It’s not clear which category truncation biases would fall into - perhaps Correll et al. (2020) address this.

Lauer and O’Brien (2020) class a truncated line chart as deceptive. In the same study they also explore 3D pie charts, which distort the actual expression of numbers. Fail to distinguish between charts that are deceptive in any context, and those that are only deceptive in certain contexts. 

Driessen et al. (2022) showed participants line charts with axes starting at 0, or with truncated axes. They also manipulated the context, suggesting that the data plotted concerned an engdangered or invasive species. They collect two types of judgements, the first was a subjective assessment of how ‘bad’ the situation was. The data involved an upward trend, so the truncated version suggested a stark increase, and the non-truncated version suggested relatively stable values. Thus one would expect the upward trend to be judged as ‘good’ for endangered species and ‘bad’ for invasive species, with smaller a difference between conditions when a zero-baseline was used. The valence judgement is used as a proxity for interpretation of the magnitude of the increase. For both valence judgements and percentage estimates, the effect of graph literacy disappeared when accounting for graph literacy. They find a large effect of context, which is probably to be expected - it’s unlikely that axis range would change the total *valence* of a response i.e. it wouldn’t change the interpretation of increasing endangered species from ‘good’ to ‘bad’. They suggest that their observed truncation effects with line charts are smaller than with bar charts, but don’t test this formally.

Lo et al. (2022) point out that some frequently discussed misleading visualsations are rarely employed (e.g. inverted axes). They create a taxonomy of misleading visualisations, from a large sample of images associated with bad charts harvested from the internet. They identify cases where it’s not the visualisation per se, but just bad data. Some where the chart has inconsistencies or omissions - though it’s not guaranteed this is actually misleading. Others still where the chart suggests something but it isn’t plotted wrong e.g. implying causation through correlation. Argue that visualisations that are not informative are comparable to misleading visualisation, but I suggest there is a crucial difference. 

Wainer (1984) - a number of examples of bad visualisations, mostly focused on distorting data e.g. by manipulating scales, implementing area encoding incorrectly, use of inconsistent baselines. Wainer explains that it would be misleading to obscure differences by expanding a scale to include 0.

Correll and Heer - the space of ‘black hat’ visualisation concerns design of charts with intention to mislead. This involves violating conventions, inappropriate aggregation, concealing important patterns, exploiting visual biases

Certain types of misleading design are consistently misleading (e.g. inverted y-axis). They are consistently misleading becuase this isn’t based on the data at all. Other types are not consistently misleading (e.g. truncated y-axis). Here, it’s impossible to say *a priori* that a chart is misleading because the quality of the design depends on the data. Therefore, it’s really about the *potential* to mislead. A simple test could be whether the ‘misleader’ (to use Ge et al.’s (2023) term) needs to have the word ‘inappropriate’ before it to convey the issue. For example, concealed uncertainty, cherry picking, missing data are all self explanatory, but ‘aggregation’ and ‘scale range’ need the word inappropriate before them in order to highlight the issue. It is the later that might be considered ‘potentially’ misleading. Ge et al. (2023) also note that assessing response accuracy requires a specific task, so misleadingness will always be related to specific tasks. 

Kindlmann and Scheidegger (2014) set out an algebraic approach to visualisation design. This concerns the nature of the correspondence between a dataset and its visual representation, and consists of three principles. Problematic visualisation practices occur when a) the degree of variation within a dataset is disproportate to the appearance of variation, b) different datasets appear indistinct, and c) altering visualisation parameters alters appearance. The algebriac approach has motivated the study of the effectiveness of different chart options for detecting issues during exploratory data analysis (Correll et al., 2019) and building a tool for identifying misleading visualisations through repeat testing with distinct inputs (McNutt et al., 2020).  

# Truncation

One topic that has enjoyed attention in recent years is axis truncation. This issue has also captured minds outside of academia. Perhaps it’s particularly interesting to engage with (for both groups) because it seems like a big change comes from a subtle manipulation. The data and the chart type both stay the same; all that’s needed is a tweak of the axis. It is another example of where popular opinion can be at odds with research findings. Part of this may be because people like simple rules, but the research doesn’t offer simple rules here. 

Sentence on why relative difference has been so widely studied. Sentence on why it’s particularly important for risk perception

Sentence on the benefits of studying impressions as well as value extractions. This is a hangover from Cleveland and McGill. See Stone et al. (2015)

Gagnon (2018) suggests that the bottom third of line charts should be left blank, in order to indicate that the lowest value is not zero. This is not empicircally verified. 

People have difficulty with other scale manipulations e.g. log-scales (Romano et al., 2020) and inverted scales (Woodin et al., 2021)

Early studies - one sentence each (use citations of these in later work):
Cleveland et al. (1982)
Taylor and Anderson (1986)
Arunachalam et al. (2002)
Beattie and Jones (2002)
Raschke and Steinbart (2008)
Pennington and Tuttle (2009)





# Risk Studies on Axis Manipulation

In the risk communication, researchers have arrived at similar research questions through different routes. The goal here is often to alter impressions and behaviour in a way that makes people safer, because people are generally not risk averse. The goal is not just to inform, but to push people in a specific direction. 

Sandman et al. (1994) - 
Stone et al. (2003) follows Stone et al.’s (1997) observation that itentions to avoid risk were greater when presented with charts than numbers.  They explored the hypothesis that graphics increased perceptions of risk reduction (i.e. impressions of a greater difference between values) becuase of the way they drew attention to the ‘background’ information (total number at risk) or the ‘foreground’ information (number affected). They manipulated the axes in bar charts such that they either showed both or just the foregound information. They found that when the physical distance between values was further apart (background information was omitted), this led to impressions of an increased difference between conditions. 
Ancker et al. (2006) - 
Chua et al. (2006) - 
Garcia-Retamero and Galesic (2010) - however, people’s understanding of relative differences is improved when foreground information in presented within the context of background information (in bar charts and icon arrays).
Okan et al. (2012) test comprehension of graphs that violate conventions of mapping higher values to high positions. They tested a range on unconventional bar charts designs which required participants to reject first impressions based on typical ways of displaying quantity. These charts led to frequent misinterpretations, where people were unable to go beyond what these charts would have implied had they used conventional mappings. These errors were more common in participnats with low literacy, highlighting an lower ability to think critically about a chart’s dislay of values, overriding convention-based interpretations. 
 
Okan et al. (2016) - 

Stone et al. (2015) - concerned with risk magnitudes - understanding of actual likelihood. Notes that a complete understanding of relative differences doesn’t actually guarantee an understanding of abolsute magnitude.
Some studies have looked at impressions of magnitudes. 
Stone et al. (2017) - actually look at impressions of magnitude as a result of different bar chart designs. Rather than manipulating the range of axis values, they investigated the addition of stacked bars conveying background information, versus blank space. When the background informaton was not highlight, this increased perceptions of the event’s likelihood. 
It’s possible that this occurs because visually representing numerators *and* denominators supports a viewer to take account of the proportion in their reasoning, helping to convey the true magnitude (Stone et al. 2018). 
Okan et al. (2018) - manipulated axis limits to explore perceptions and understandings of risk. They find that risk perceptions were increased when axis terminated just above the bars, compared to well above at a denominator value. The measures collected regarding interpretations of values’ magnitudes are combined into a measure of risk reduction, to probe risk perception. They suggest that magnitude judgements could be informed by axis limits, but do not test this directly. 
The only study which has focused specifically is Sandman et al. (1994). They used risk ladders. 
Using linear vs. log scales, Freeman et al. (2021) did not replicate this, yet as well as the graphical cue, had many additional textual cues to likelihood in the title, label, and in the description as a number and a percentage. 


Deception in data visualisation does not necessarily involve displaying inaccurate data (Yang et al., 2020). A simple design choice can prompt users to form an inaccurate view of the data. Pandey et al. (2015) investigated four chart formats that have been classed as ‘deceptive’, either because they exaggerate or understate the message conveyed by the data, or because they present the opposite perspective. Exaggeration or understatement of patterns can occur through use of a truncated y-axis, use of area encoding for quantity, or an aspect ratio manipulation. An opposite perspective can be presented using an inverted *y*-axis. Pandey et al.’s investigation explored how these formats affect *message-level representation* of the data. This refers to the domain concepts communicated (e.g., greater access to safe drinking water) rather than just the graphical elements (e.g., higher bars). Indeed, they suggest that misunderstandings of the data may arise during translation from graphical schemata (Pinker, 1990) to real-world understanding. All deceptive techniques investigated in the study led to misunderstandings in participants, with large effect sizes. 

Bar charts not starting at zero were perceived as less credible in a student sample (Geidner and Cameron, 2017), suggesting an awareness of what constitutes a misleading design. 

Pandey et al. (2015) suggest deception occurs when an interpretation of a chart deviates from the true ‘message’. Yet this leaves open the question of what the message should be. One supposes that they are referring to the ‘ground truth’ e.g. Correll et al. (2020). 

Fan et al. (2022) develop a tool for identifying misleading line charts, and automatically providing ‘unbiased’ equivalent plots. This involves expanding an axis to include zero whenever it is omitted from the original. However, this risks conveying the magnitude of differences as smaller, potentially diminishing viewers’ interpretations of the magnitude of important differences. 

Other research has also explored how axis ranges affect interpretation of data. Cleveland et al. (1982) explored how perception of correlation in scatterplots changes as axis limits change. When both axes are expanded, and the cluster appears smaller, perceived correlation increases. Yang et al. (2020) investigated the effects, possible mitigation, and individual differences associated with *y*-axis truncation. The rationale for this set of experiments was that previous work on *y*-axis truncation had low power (e.g., Pandey et al. 2015; Witt et al., 2019), or problematic experimental design (Raschke & Steinbart, 2008). Visualisations were created using standardised measurement of deception as defined by the Graph Discrepancy Index (Steinbart, 1989; although criticised by Mather et al., 2005). Participants indicated on a Likert scale their perceived relative difference between the two displayed values. In the initial experiment, a truncation effect was observed, with greater truncation resulting in greater perceived differences. Analysis revealed no association between participants’ susceptibility to the truncation effect and their graph literacy. 

Investigating the effectiveness of warning participants about possible errors in judgement due to y-axis truncation can help to reveal the nature of the deception (Yang et al., 2020). That is, success in this intervention indicates that the deception may occur due to insufficient engagement of cognitive capabilities. Yang et al. found that even when an explicit warning was provided, a truncation effect was still observed. However, ratings of perceived difference were *diminished* in truncated charts, and also in control charts, to a lesser extent. The reduction in ratings for both conditions suggests that this warning may have fostered greater wariness overall. The truncation effect, therefore, appears largely automatic, with higher-level reasoning only affecting judgements to some degree. Despite this, evidence suggested that the effects of this type of warning do not decay in the 24 hours following its issue. 

To investigate whether expertise mediates the effects of *y*-axis truncation, Yang et al. (2020) tested PhD students in quantitative and qualitative fields. When no warning about truncated axes was provided, students in quantitative fields exhibited a reduced truncation effect compared to students in qualitative fields. However, a warning was provided, there was no difference between the two populations - both exhibited diminished truncation effects. Given their previous finding that graph literacy does not affect the truncation effect, Yang et al. suggested that graph literacy and training in a qualitative field actually reflect different proficiencies. Graph literacy captures knowledge concerning graph formats and one’s understanding of the role of different graphical elements. This type of knowledge can assist with basic interpretation but is unlikely to provide barriers against errors in judgement like the truncation effect.

One explanation for the deception caused by y-axis truncation, which Yang et al. (2020) discussed, draws upon the Gricean maxims of truth, relevance and clarity (Grice, 1975). That is, a user might assume that a difference must be genuinely large if it appears large, else it would not be presented in that way. Yang et al. also argued that truncation may be less misleading when other graphical encodings are used (e.g., position encoding in line graphs). They concluded that, in an effective visualisation, a user’s automatic, immediate characterisation will have a close correspondence with their view following a detailed inspection.
Correll et al. (2020) also found that participants’ ratings of the severity of effect sizes were affected by truncation, and this occurred despite design features intended to highlight it. Despite consistent findings revealing the misleading effects of axis truncation, Correll et al. argued that starting the *y*-axis at zero (i.e., no truncation) can still be deceptive, for example by obscuring a trend. Therefore, they conclude that any axis range setting has unavoidable consequences for interpretation: designers must always reflect on how this will affect users’ perceptions of effect size.

Starting the *y*-axis at zero can make differences between values harder to detect (Correll et al., 2020). Therefore, Witt et al. (2019) developed and tested optimal *y*-axis ranges in bar and line charts displaying various effect sizes. Three different axis scalings were employed: maximal (ranging from 0-100); minimal (restricted to the range of the displayed data); and standardised (between one and two standard deviations of the dependent variable). For each trial, a linear regression model was developed, with the intercept indicating participants’ bias, and the slope indicating their sensitivity. Bias was smallest and sensitivity greatest with the standardised axis scaling. Consequently, Witt et al. recommended that an axis should extend roughly 0.7 standard deviations in each direction or span roughly 1.5 standard deviations overall. In this study, participants judged the size of the effect (as small, medium, or large), but not the magnitude of difference between one data point and another. For the latter type of judgement, as Pandey et al.’s (2015) data suggests, starting the axis at any point other than zero remains a danger.

To what extent is there a difference in the definitions of ‘axis truncation’:
  * both ends vs. one end
  * bars vs. axes
What is it about Witt’s study that means it can give such precise recommendations whereas others can’t

There is an important distinction between ‘error’ and ‘bias’ - various interpretations may not necessarily be wrong - just different.

Introducing my topic - magnitude judgements:
Rarely mentioned as deceptive when describing axis manipulations
Explain why risk research is so interested in magnitude of difference effects. The choice to do something always has an alternative action. Speigelhalter explains why absolute risks are better than relative risks. But sometimes magnitude does have to be communicated. 

Write about the dfference between measuring correctness and interpretations - see axis extension paper. 

# Cognitive Models and Visualisation Theories

Padilla (2018) argues for greater adoption and generation of cognitive models in visualisation research. Knowledge of the cognitive mechanisms processes involved in interpreting a particular visualisation helps understand how a suitable experiment can be designed. There’s not a single process, but a combination, starting from encoding of basic visual information, top-down and bottom-up processing, through to decision-making.

Ziemkiewicz and Kosara note that cognitive models which assume an ‘information extraction’ perspective tend to ignore the fact that one’s internal representations can influence interpretation - it goes both ways. Similarly, a focus on precision of individual elements fails to account for the overall form of the graphic and how it might fit with metaphors. Consistent with Tversky and Zacks. Thinking about metaphor is a good way to understand how and why design choices might affect interpretation. 

Okan et al. (2012) has a good overview of the general graph comprhension model. 

# Text
Visualisations are rarely presented in isolation. Often, they contain captions, titles or annotations, and in scientific or news articles, they are embedded within a larger context. Despite this, relatively little work has explored the effect of accompanying text on the interpretation of information presented in data visualisations. 

In 2010, Segel and Heer introduced the concept of narrative visualisations, which involve incorporating visualisations into storytelling. Presenting data as part of a narrative, they suggested, can provide additional detail and structure in data exploration tasks. Whilst influential, particularly regarding data journalism, this study did not focus on how embedding visualisations within a narrative could increase subjective or unreliable interpretations of data. However, Hullman and Diakopoulos (2011) outlined various ways in which rhetoric in narrative visualisations could influence interpretations of presented information. Explicit rhetorical devices (e.g., unambiguous political statements) are not the only way to elicit different perspectives, they argued. Indeed, framing, which can involve minor changes to a visualisation, can result in noticeable differences in interpretation. In addition to this explicit-implicit distinction, Hullman and Diakopolous also distinguished between *denotation *and* connotation. Denotation *is where a visual feature directly communicates an aspect of the data (e.g., a bar of particular height conveys a particular value). *Connotation *is where a visual feature implies something about the data, leading to a certain interpretation (e.g., bars suggest discrete values, lines suggest continuous values).

According to Hullman and Diakopoulos (2011), there are four ‘editorial layers’ where a designer can introduce rhetoric. At the *data* level, values can be aggregated, and outliers omitted. At the *visual representation* level, design choices influence perception (e.g., colour). At the *annotation* level, text and graphics can be added. At the *interactivity* level, menus and search boxes can bias exploration towards certain patterns. The techniques discussed in this paper are not all evidence of a designer’s intention to mislead, however. They can be used positively to convey an honest message. 
Hullman and Diakopolous (2011) provided many examples of rhetorical techniques. Those associated with provenance include citing sources, and differentiation (or not) of base data and forecasted data. Rhetorical techniques relating to mapping include the use of spatial relations to convey meaning (e.g., ‘up’ representing ‘good’ and ‘down’ representing ‘bad’), and altering the salience of certain aspects (e.g., by duplicating labels). Rhetorical techniques associated with textual content include use of metaphors and similes in titles, and text which is framed to appeal to certain perspectives. Hullman and Diakopoulos (2011) also discuss rhetorical techniques relating to the process of inspecting and understanding a visualisation. These include directing attention through anchoring (e.g., presenting elements in a specific order), or implying particular viewing objectives. This notion is similar to Preim et al.’s (1998) definition of ‘instructive captions’, which advise how a viewer should explore an image (as opposed to ‘descriptive captions’, which describe or explain something about the image). 

In addition to theoretical work on the rhetorical function of narratives, some empirical work has investigated specifically how text accompanying data visualisations affects interpretation of data. Kong et al. (2018) explored this relationship using two visualisations: one concerning countries’ acceptance of refugees and one about US defence spending. In both visualisations, the absolute numbers and the proportions that were displayed expressed contrasting messages. Therefore, each visualisation could be used to assert either of the main opposing political views on the presented issue.

The titles presented with visualisations in Kong et al. (2018) did not include appeals to human interest or conflict, but simply stated one of two possible interpretations of the data (by focusing solely on either absolute values or proportions). When asked to recall the main message of the visualisation, participants exhibited a tendency to repeat the perspective of the previously-displayed *title*. One third of participants, when asked, were unable to remember either of the titles. However many of these participants had indeed recalled the title’s message when asked what the visualisation showed. Furthermore, the majority of participants stated that the information was presented in a neutral manner, suggesting they largely ignored the biased perspectives promoted by the titles. Many revealed that they viewed the information as impartial because it came from official sources, or because it contained statistics. This fits with evidence that mere inclusion of a visualisation can increase the trustworthiness presented information (Tal & Wansink, 2016; though see a failed replication by Dragicevic & Jansen, 2018. Kong et al. mentioned that this also relates to danah boyd’s (2017) hypothesis for why subtle biases in the packaging of information might be particularly influential. They encourage the reader to make links between stated ‘facts’ without directly expressing the author’s argument. Consequently, the reader’s interpretation may  feel more objective, and perhaps more authentic.

Exposure to biased titles did not result in a significant change in attitudes, but Kong et al. (2018) suggested that if the data concerned less controversial subjects, attitude change may have been more common. In order to mitigate the biasing effect of titles on message recall, Kong et al. proposed (but do not test) a possible intervention. Promoting ‘passive’ engagement with titles (either by not displaying titles or displaying titles after a delay), they argued, might help to reduce their impact. In a separate experiment by Kong et al. (2018), participants were asked to write ‘neutral’ titles to accompany the visualisations. The majority produced unbiased descriptions, but 30% of responses were still classed as biased. This illustrates how attitudes can interfere with perceptions of data even when objectivity is required.

Kong et al. (2019) employed the term ‘slanted’ to describe titles that promote a particular perspective or narrative. In an experiment, they varied the slant of titles by manipulating the alignment between the title and the displayed data. In one condition, two perspectives were displayed in the chart. One perspective was visually more prominent than the other and the title focused on the less prominent perspective. In another condition, only one perspective was displayed, and the title referred to the absent alternative perspective. When recalling the message presented by each chart, participants’ most common response was to simply refer to the topic without discussing the pattern of results. However, those who discussed the pattern of results tended to recall the message presented by the title. Participants were more likely to correctly recall the message presented by the data when the title contradicted the data, compared to when the slant was more subtle. However, Kong et al. suggested that the data may have been easier to interpret and recall in the contradictory condition because half the amount of data was present in comparison to the condition which depicted two alternative perspectives simultaneously. Participants’ focus on the title’s perspective provides some evidence of confirmation bias (perceiving new information as evidence of a given view, and ignoring contradictory information). The vast majority judged the information as impartial (like in Kong et al., 2018), but participants’ perception of the credibility of the data, chart, and title all decreased as the degree of title-chart misalignment increased. 

In an experiment conducted by Tversky and Schiano (1989), participants viewed visualisations showing asymmetrical curves, which were accompanied by descriptions. These descriptions suggested that the curve was either symmetrical or asymmetrical. Participants were asked to reproduce the curves from memory. The experimenters rated these reproductions as having greater symmetry after participants’ exposure to symmetrical descriptions, compared to asymmetrical descriptions (which did not elicit biased responses). This supports the notion that accompanying text can alter how data is remembered. However, experimenter ratings of line drawings are unlikely to be highly reliable dependent measures.

Kim et al. (2021) - captions less likely to inform takeaway interpretations when not corresponding to salient features, so the recommendation is to make important features more salient e.g. by excluding irrelevant dates/categories, or adding annotations. 
Cheng et al. (2022) - interested in the content/style of captions. Captions referring to highly salient phenomena facilitate recall when refer to actual numbers. Captions referring to less salient phenomena facilitate recall when they refer to visual patterns.
Hearst (2023) argues that text and charts should be treated with equal importamnce.


Other numerical biases have been studied in a datavis context (e.g. Dimara et al. 2017, 2019) Framing effects were initially primarily a reference to valence framing, but have since expanded to encompass a wider range of biases. 

# Beyond Representation

Recent work by Markant et al. (2023) highlights how prior attitudes interact with data visualisation, such that even visualisations which successful updated beliefs did not alter attitudes. It’s not all about portraying accurate and clear plots. 

Curse of knowledge illustrates that interpretation of visualisations can be driven by prior beliefs.


# Visualisation Literacy

It is impossible to discuss the construction of effective data visualisations without reference to data visualisation literacy. Increasing popularity and use of data visualisation has expanded the audience who are exposed to charts. This means that individuals with minimal or zero training are often expected to interpret visual displays. 

Burns et al. (2023) discusses research aimed at understanding how relatively inexperienced users understand charts. This is important, but there is inconsistency around what constitutes a novice, and also a inconsistency between general population and samples used to explore that population. The term novice is unhelpful since it forces a binary perspective onto a more nuanced picture. Why not look at individual variation in ability? Burns reports very few cases where novice was defined by literacy.

It is useful to understand variability in biases by looking at individual differences. Get a better picture of how they might work, and the types of audience most likely to be affected. 

Some people are ‘novices’ - discuss the two novices papers - but there are not just two groups - literacy scales can be useful
Visualisation literacy is the ability to comprehend data presented in visualisations (Boy et al.)

Galesic and Garcia-Retamero’s 13-item scale (2011) was based on Friel et al.’s (2001) hierarchy of skills for interpreting visualisations. 
Garcia-Retamero and Galesic (2010) found that…
Okan et al. (2012) found that
Boy et al (2014) developed a new method
Garcia-Retamero et al. (2016) developed a new method due to the length and potential negative consequences of previous tests (i.e. inducing anxiety). Based on prior work developing numeracy scales through subjective judgements. The 5-item version is a refined version of the 10-item subjective scale, based on the items which most strongly correlated with the objective measure, and actually performs better than the 10-item scale. Final items focused on skills (how good are you at …)  more than preferences ( do you like ….) . Diverse participant pool (US m-turkers, UGs in Spain, surgeons and patients in Spanish hospitals). Captures variation in both objective abilities but also metacognition - beliefs about own abilities/skills. 
Okan et al. (2016) found 
Driessen (2022) say that Okan (2016) report that literacy is postively associated with comprehension of misleading charts. 
[more papers using the subjective scale](https://scholar.google.com/scholar?cites=12562930392859617416&as_sdt=2005&sciodt=0,5&hl=en)
Lee et al. (2017) - justification for creating the VLAT
Camba et al. (2022) suggest that the ability to detect misleading charts should be considered an important feature of data visualisation literacy. 
Ge et al. (2023) noted that previous work on visualisation literacy has focused on interpretation of well-designed charts. Despite this, the ability to make sense of poorly designed charts is also relevant. Good approach - not to ask Ps whether they think the charts are misleading, but to intersperse misleading and honest charts within a test and measure accuracy. Develop a robust test of 30 items to assess ability to accurately comprehend deceptive designs. Ge et al. (2023) suggest that sufficient attention and critical thinking can help combat misleading visualisations. However, some cognitive biases are persistent even against these efforts. Perhaps this is where the distiction between correctness and interpretation comes in (see Correll et al., 2020, Yang et al., 2021 Stone et al., 2015).

Why have I chosen this specific measure? It’s been used in similar studies e.g. Yang et al. (2021), Mantri et al. (2022). It is also likely to be more sensitive than Okan et al.’s  (2019) scale given it ranges from 0-30, rather than 1-4.

Mantri et al. (2022) use the 5-item SGL.




  
