# Discussion

**Data visualisations facilitate comprehension of data by exploiting humans’ perceptual and cognitive capabilities. Systematically manipulating data visualisation designs can help reveal cognitive mechanisms involved in interpretation. This, in turn, can inform recommendations for effective design.**

**Data visualisations can illuminate many aspects of a dataset, from correlations to distributions. Viewers may also form impressions of values’ absolute magnitudes: how large or small values are. To understand this process, it is necessary to examine how graphical cues contribute to one’s mental representation.**

**The aim of this thesis was to investigate how data visualisation design influences interpretations of values’ absolute magnitudes. This investigation focused on viewers’ *gist* representations of data, rather than their comprehension of specific values. I conducted a series of experiments demonstrating that judgements about magnitude are informed by values’ relative positions within axis limits. This reveals that graphical cues to context play a role in the processing of how large or small values are.**

# Main Findings

**The three sets of experiments in this thesis consider the same overarching question, but each provides a unique contribution.**

**The study in Chapter 1 manipulated axis limits in dot plots. This manipulation altered the position of plotted values, such that they appeared at high or low positions. After establishing that interpretations of values’ magnitude were affected by axis limits, I explored whether judgements were influenced by data points’ relative positions within axis limits, or data points’ absolute physical positions. An inverted axis orientation made it possible to distinguish between these potential explanations. Despite conventions around displaying magnitude, participants rated magnitudes as greater when values appeared closer to bottom of the visualisation, which was associated with higher numerical values. This illustrates that data points’ relative positions within axis limits inform magnitude judgements.**

**The study in Chapter 2 manipulated the limits of colour legends accompanying choropleth maps. Rather than altering the appearance of plotted values, this manipulation only modified the range of colours and numerical values in colour legends. Participants interpreted magnitude as greater when plotted values’ corresponding positions were at a colour legend’s upper limit, rather than its halfway point. This illustrates that magnitude judgements are informed by data points’ correspondence with axis values, not simply the appearance of plotted values.**

**The study in Chapter 3 manipulated axis limits in bar charts. This manipulation compared upper limits based on ggplot2’s defaults to upper limits corresponding to datasets’ denominator values. After establishing that participants interpreted magnitude as greater in the latter condition, I explored how awareness of numerical context affects the use of graphical cues to magnitude. Removing accompanying text containing datasets’ denominator values increased the degree to which axis limits informs magnitude judgements. This illustrates that knowledge about data points’ numerical context limits the influence of axis limits on interpretations.**

**The stimuli used in these studies reveal different approaches to conveying magnitude using axis limits. *Frequencies* plotted in bar charts (Chapter 3) were associated with denominators, so upper axis limits were intrisincally linked to datasets. Conversely, *measurements* plotted in choropleth maps (Chapter 2) upper axis limits were not determined by denominator values. The *relative frequencies* plotted as percentages in dot plots (Chapter 1) could not be less than 0 or more than 100, so axis limits were subject to logical constraints. Designers must consider the type of data at hand when identifying suitable axis limits for data visualisations. What constitutes *context* is not uniform.**

**Overall, this work provides consistent evidence of framing effects affecting magnitude judgements in data visualisations.* According to models of graph comprehension (Pinker, Carpenter and Shah), visual patterns are encoded prior to comprehension of numerical values and contextualisation of information. Therefore, first impressions elicited by a data visualisation may prejudice overall interpretations (Pandey et al. 2015; Yang et al. 2021).** This occurs because … (Tversky and Kahneman). 
Reyna (2008), Stone et al,. 2015 - importance of gist

# Data Visualisation Literacy

**Data visualisation literacy levels did not account for variation in responses to axis manipulations. This accords with research on axis truncation, which found that the same subjective literacy measure was not associated with the degree of bias in judgements of relative differences (Yang et al., 2021). The same has also been observed using an objective literacy measure (Okan et al., 2018).  Another experiment on the same issue, using yet another literacy measure, did observe that data visualisation literacy predicted bias (Driessen et al., 2022). However, a lack of diversity in the sample’s literacy levels diminished confidence in the utility of this measure.**  

**Variability in participants’ responses is evident, suggesting the data visualisation literacy employed measure was not best placed to capture these differences. The measure may register basic skills for comprehending visualisations, rather than susceptibility to visualisation design (Yang et al., 2021). Ge et al. suggest that critical thinking skills predict the degree of bias elicited by deceptive designs, and produce a literacy measure designed to capture this capacity. However, its considerable length makes it unsuitable for use as a covariate in experimental studies. A shorter literacy measure of critical thinking in comprehension of data visualisations would be valuable.** 

# Contributions and Implications

**This investigation addresses a neglected topic in data visualisation research. Empirical results demonstrating viewers’ sensitivity to *absolute magnitude* present new considerations for design. Experiments were designed to generate robust evidence (Kosara, 2016), enhancing the findings of intial work on this topic (Sandman et al., 1994). Furthermore, a focus on identifying underlying cognitive mechanisms provides insight into how graphical cues to magnitude are processed, and additional factors influencing interpretations.**

**This thesis challenges the notion of ‘objectively correct’ data visualisation design, presenting a more nuanced perspective. Certaintly, misrepresenting numerical values is an invalid practice. However, the axis manipulations explored in the present work do not alter the numerical values presented, but the *subjective* judgements of these values. As Correll et al., (2020) argue, becuase these judgements depend on context, there is no *inherently truthful* axis setting which avoids influencing viewers. Therefore, designers ought to be aware of what their visualisation implies about plotted data, and make design choices which faithfully represent relevant characteristics.**

**The present work discusses *bias*, but use of this term does not necessarily warrant a negative perspective. Unquestioning acceptance of the message conveyed by a visualisation is obviously detrimental. However, *failing* to account for visual cues to values’ magnitudes could also be considered a limitation in cognitive processing. Sensitivity to values’ relative positions within an axis range and ability to weight this information in accordance with other knowledge constitute a powerful capability. Appropriate use of graphical cues to magnitude provides an opportunity to leverage this bias for effective communication.**

**Sensitivity to norms in communication is another relevant factor. Under the assumption that visualisation design follows Gricean pragmatic principles (Grice, 1975), viewers’ judgements will be guided by a chart’s implied message. Values’ relative positions within axes would be considered relevant and reliable information, thus informing inferences about magnitude.** 

# Limitations and Future Directions

**This work does not suggest that conveying absolute magnitude will be appropriate in all scenarios. Other aspects of data may be considered be more pertinent. Conflicting graphical cues may prevent designers conveying magnitude *in addition to* other aspects. For example, a truncated axis may clearly display relative differences between data points but omit context illustrating values’ absolute magnitudes. Alternatively, an extended axis may clearly display absolute magnitudes but obscure values’ relative differences. A possible compromise to this trade-off may involve generating two visualisations: one to illustrate absolute magnitudes and another to promote discrimination between values. A similar approach is discussed in work on axis truncation (Correll et al.), and has been reported to benefit users (Ritchie et al., 2019). Future work could investigate the utility of this approach for conveying both absolute magnitudes and relative differences.** 

**Eliciting judgements using rating scales is an established method for measuring interpretations of visualisations (see Correll et al. 2020, Witt, 2019, Yang et al. 2021, Pandey et al. 2015,  Stone et al. 2017, 2018, Okan et al. 2018, Okan et al. 2020, Sandman et al. 1994). To ensure participants’ responses reflected message-level interpretations, all scales captured ratings pertaining to the information presented, not simply the graphical elements. However, future work employing decision-making measures would complement this work. First, this would provide insight into how axis limits’ presentation of magnitude influences behaviour. Second, this would more effectively illustrate the strength of effects observed. Measuring responses in terms of well-defined units (e.g., monetary value) can capture the magnitude of bias in a more concrete manner. Other experiments in the field offer inspiration for effective and comprehensible decision-making tasks (e.g., Kale et al. 2021, Bancilhon et al., 2019).** 

**Future work could also investigate the contribution of numerical context when plotting information about familiar measurements and relative frequencies. One approach to investigating this question would involve testing multiple different axis ranges whilst maintaining data points’ approximate physical positions. This would reveal whether interpretations of magnitude are directly proportional to the range of numerical values on an axis. Furthermore, this thesis focuses on how axis limits inform magnitude judgements, but many other factors may also influence interpretations, from numerical units to prior beliefs. A comprehensive account of cognitive processing of magnitude in data visualisations will also incorporate additional biases and mechanisms.** 

**An algebraic approach to visualisation design suggests that substantial changes in data should be reflected accordingly in a visualisation (Kindlmann and Scheidegger, 2014). However, this capacity requires ability to convey substantial change in the *specific aspect* of a dataset of interest. A design supporting comprehension of relative differences may be poorly suited to conveying other messages. This thesis demonstrates that conventional data visualisation formats present an opportunity for communicating an often-overlooked aspect of a dataset: absolute magnitude. Just as adjusting axis limits influences interpretations about absolute magnitude, other design choices may help convey other messages. Future work should identify whether graphical cues to other features of data, such as noise or numerosity, have been similarly under-explored. Developing an understanding of cognitive processes involved in interpretating these features would inform effective design.** 

# Closing Remarks

**Context makes numbers meaningful. In data visualisations, context be can established not only by plotted data points, but also extrinsic details. By determining a visualisation’s physical characteristics, designers may also influence the message conveyed about the data. Viewers’ sensitivity to the framing of data illustrates the power of design choices to enlighten or mislead.** 

——————————————————————————————————————————————————————————
——————————————————————————————————————————————————————————
——————————————————————————————————————————————————————————

# Not Sure Where

X is a core aspect of the present work. 

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

In the same study where they look at truncated line charts, Lauer and O’Brein also explore 3D pie charts which distort the actual expression of numbers. They fail to distinguish between charts that misrepresent values, and those that simply present a certain view.

Although not empirically tested, a suggestion for avoiding misinterpretation of truncated line charts involves introducing additional blank space below plotted data (Gagnon, 2018).

However, this risks conveying the magnitude of differences as smaller, potentially diminishing viewers’ interpretations of the magnitude of important differences.**

Padilla (2018) argues for greater adoption and generation of cognitive models in visualisation research. Knowledge of the cognitive mechanisms processes involved in interpreting a particular visualisation helps understand how a suitable experiment can be designed. There’s not a single process, but a combination, starting from encoding of basic visual information, top-down and bottom-up processing, through to decision-making. See Okan et al. 2012 and 2016 for overview of models

The algebriac approach has motivated the study of the effectiveness of different chart options for detecting issues during exploratory data analysis (Correll et al., 2019) and building a tool for identifying misleading visualisations through repeat testing with distinct inputs (McNutt et al., 2020).  

# Beyond Representation - not sure where this would go
Recent work by Markant et al. (2023) highlights how prior attitudes interact with data visualisation, such that even visualisations which successful updated beliefs about specific patterns in data did not alter overall attitudes. It’s not all about portraying accurate and clear plots. 

The definition of misleading charts can be expanded even further, accounting for the fact that they can be *used* to further a point. Lisnic et al. (2023) - deception with visualisation is typically considered to occur when charts do not apply good visualisation practices. However, this paper suggests that, in their large social media sample, few charts (~12%) actually used deceptive practices. Instead, the deception was achieved by using the (properly constructed) charts to support unreliable reasoning. ‘Vulnerable’ visualisations are those that lack relevant context for exposing weaknesses in these inductive arguments. This lends support the notion that certain uses of visualisation are only misleading *in context*. The issue is *epistemological*: issues arise when the message conveyed by the visualisation is at odds with other knowledge about the world.

For example, Wainer (1984) presents a number of examples of bad visualisations, mostly focused on distorting data by manipulating axes, incorrectly implementing area encoding, using inconsistent baselines, etc. 

Misleading visualisation design has often been characterised as interfering with a viewer’s ability to accurate extract numerical information (Wainer et al., 1984; Rougier et al. 2014). 

Measuring objective performance (error, rt, precision) has been the focus of much research (Hegarty, 2011). 

**Lo et al.’s taxonomy tries to be more comprehensive - but ends up being too comprehensive - this illustrates that it’s important to be specific when we’re talking about deception.** Lo et al. (2022) point out that some frequently discussed misleading visualsations are rarely employed (e.g. inverted axes). They create a taxonomy of misleading visualisations, from a large sample of images associated with bad charts harvested from the internet. They identify cases where it’s not the visualisation per se, but just bad data. Some where the chart has inconsistencies or omissions - though it’s not guaranteed this is actually misleading. Others still where the chart suggests something but it isn’t plotted wrong e.g. implying causation through correlation. Argue that visualisations that are not informative are comparable to misleading visualisation, but I suggest there is a crucial difference. Not central to the main issue- maybe not too much detail required here. Nevertheless, it is important to remain cogniscant of what we mean by misleading - Lo’s defintion is too comprehensive.

Ge et al. (2023) also note that assessing response accuracy requires a specific task, so misleadingness will always be related to specific tasks.**

Brust-Renck et al. (2013) - importance of intentionally selecting a message and designing chart appropriately to convey gist. Reyna and Brainerd (2008) - Suggest it’s not just about making humans more like computers and memorising verbatim detail, it’s about making sure the gist that they do extract captures the true nature of the information. 

It’s possible that this occurs because visually representing numerators *and* denominators supports a viewer to take account of the proportion in their reasoning, helping to convey the true magnitude (Stone et al. 2018). 

Visualisations are rarely presented in isolation. Often, they contain captions, titles or annotations, and in scientific or news articles, they are embedded within a larger context. Despite this, relatively little work has explored the effect of accompanying text on the interpretation of information presented in data visualisations. 
Kim et al. (2021) - captions less likely to inform takeaway interpretations when not corresponding to salient features, so the recommendation is to make important features more salient e.g. by excluding irrelevant dates/categories, or adding annotations. 
Cheng et al. (2022) - interested in the content/style of captions. Captions referring to highly salient phenomena facilitate recall when refer to actual numbers. Captions referring to less salient phenomena facilitate recall when they refer to visual patterns.
Hearst (2023) argues that text and charts should be treated with equal importamnce.

Kindlmann and Scheidegger (2014) set out an algebraic approach to visualisation design. This concerns the nature of the correspondence between a dataset and its visual representation, and consists of three principles. Problematic visualisation practices occur when a) the degree of variation within a dataset is disproportate to the appearance of variation, b) different datasets appear indistinct, and c) altering visualisation parameters alters appearance. Yet many visualisations are agnostic about magnitude. 

It is impossible to discuss the construction of effective data visualisations without reference to data visualisation literacy. Increasing popularity and use of data visualisation has expanded the audience who are exposed to charts. This means that individuals with minimal or zero training are often expected to interpret visual displays. 

Burns et al. (2023) discusses research aimed at understanding how relatively inexperienced users understand charts. This is important, but there is inconsistency around what constitutes a novice, and also an inconsistency between general population and samples used to explore that population. The term novice is unhelpful since it forces a binary perspective onto a more nuanced picture. Why not look at individual variation in ability? Burns reports very few cases where novice was defined by literacy.
Some people are ‘novices’ - discuss the two novices papers - but there are not just two groups - literacy scales can be useful

It is useful to understand variability in biases by looking at individual differences. Get a better picture of how they might work, and the types of audience most likely to be affected. 

Visualisation literacy is the ability to comprehend data presented in visualisations (Boy et al.)

Ziemkiewicz and Kosara: a focus on precision of individual elements fails to account for the overall form of the graphic and how it might fit with metaphors. Consistent with Tversky and Zacks. Thinking about metaphor is a good way to understand how and why design choices might affect interpretation. 

On horizontal postion: Part of Franconeri et al.’s (2021) discussion of creating understandable charts discusses the role of conventions for representing magnitude. These include color intensity and *horizontal* and vertical position. This is to fit with a schema, facilitating comphrension. See also Okan et al. 2016.

Markant’s findings are relevant here because they also illustrate how external information moderates/mediates the impact of charts. Markant’s work refers to perspective, my work refers to knowledge, but both show how the impact of a design is not fixed, and can depend on what’s in someone’s mind. 

Intro - this work is a defence of the thesis that… I suggest that…, demonstrate that

Data representations exploit our sensory capabilities, and cognitive heuristics. 
Effective communication of numerical information is typically concerned with clarity and coherence. 
We may say that axis limits *inform* but do not *dictate* magnitude judgements. 

I like the idea of study numbers because they have the illusion of objectivity and trustworthiness, which decreases likelihood of spotting bias and manipulation. They are also more precisely defined than other types of information, which means that we should theoretically all be able to represent them the same - yet this does not happen. We are not even always  consistent even with ourselves. But bias shouldn’t always be considered a negative thing - it reflects valuable features of our cognitive system. The popularity of the ‘chart-junk’ concept also speaks to an instinct that if only we presented data with minimal embellishments, we would show it in its purest form (Kosara, 2016). 

Grice (1975) characterises discourse as essentially cooperative in nature. Among others features, ‘quality’ (i.e. truthfulness) is a central aspect of effective communication. 

discuss counterfacutals - 

Correll et al. used context-free visualisations to test the effects of truncation, yet advocate for the importance of context when designing charts. Perhaps testing visualisations in context would reveal limitations.

Ziemkiewicz and Kosara note that cognitive models which assume an ‘information extraction’ perspective tend to ignore the fact that one’s internal representations can influence interpretation - it goes both ways. 

Since this information is not part of the plotted data, it is guided by design choices, even if not consciously. 

Evidence collected through empirical studies 

Data visualisation designers’ choices influence the characteristics of a visualisation and the message conveyed about the data. The work presented in this thesis demonstrates the connection between the graphical and semantic levels. 

The work presented in this thesis demonstrates the connection between a visualisation’s physical characteristics and its message. Both are determined by a data visualisation designers’ choices. Presenting context which is not part of a dataset illustrates the non-impartial aspect of visualisation design. 

Certain constraints limit how widely these findings can be applied.

For example, a dataset with unequal denominator values would prohibit use of a single denominator value as an axis limit. 

Is numerical context always appropriate way to convey subjective magnitude? Mangnitude comes not just from numerical context but also topical context. 

improve upon the design of previous experiments (Sandman et al., 1994). and

