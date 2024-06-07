# Finnish Civil War Discourse Analysis Using NLP Techniques

## Overview

This essay aims to study the differences and developments in attitudes towards the Finnish Civil war by studying the Finnish parliamentary discourse. These differences are examined by focusing on ideological sentiments, different time-periods, as well as meta-data such as party membership, gender, and age. By using topic modeling and discourse analysis methods the essay aims to demonstrate some of the nuances that occur in the Finnish parliament discourse before and after the Finnish Civil War in 1918.

## Background 

At the turn of the 20th Century, Finnish society underwent rapid industrialization and population growth, leading to the emergence of a civil society where citizens became more politically active and engaged in discussions about national identity and societal issues (HIMA 2024). This led to the birth and spread of two conflicting ideologies, nationalism (Fennoman movement, in the Finnish context) and socialism (Ibid.).

Inequality had increased and people were divided based on social status, built on wealth: those who owned (land, factories, forests, fields) and those who had no such capital (Ibid.).  Socialism was attractive to crofters (working on rented fields), 'Parasites' (in Finnish loiset), who went from house to house and worked for food wages and urban workers (Ibid.). Whereas ideas of a Finnish nation, formed by people living in Finland, were being shared among the wealthy Finns (Ibid.). However, these Fennomans perceived supporters of socialist ideals as either Russian or as Russian sympathizers, not as part of the nation (Ibid.).

Pacifism spread to Finland relatively late, it gained foothold in the 20th Century (Peace Union 2017). When it comes to the Finnish Civil War and national politics this sentiment was strongest especially after the Civil War among centrist (Hentilä, 2018, p.84) and center-leftist (Kannisto, 2016, p.345).

### Finnish Parties 

The Finnish political parties that discussed Finnish Civil War in the parliamentary discussions between the years 2017 and 2022 can be divided into three clusters – left, center and right – because the Civil War division primarily followed this economic clustering. The information regarding each party and their political ideologies was found in Suomen puolueet : vapauden ajasta maailmantuskaan by Mickelsson (2021). Left-wing cluster consists of Suomen Kommunistinen Puolue (SKP) (1918-1990), Suomen Sosialistinen Työväenpuolue (1920-1923), Suomen Kansan Demokraattinen Liitto (SKDL) (1944-1990), Demokraattinen Vaihtoehto (1986-1990) and Vasemmistoliitto (1990 - present). The parties shared more radical left and even communist ideologies until the year 1990, when Vasemmistoliitto was formed. Vasemmistoliitto tends to be relatively moderate compared to its predecessors (Mickelsson, 2021, p.304-305). 

The center-party cluster includes a center-left party Suomen Sosialidemokraattinen Puolue (SDP) (1899 - Present), due to the aspect that especially after the Civil War the party distanced itself from the communist and radical left movements (Mickelsson, 2021, p.109). Actual political center parties included Maalaisliitto / Suomen Keskusta (1906 - present), Suomen Maaseudun Puolue (1959-1995), Pienviljelijäin puolue (1936-1950s), Suomen Kansan Yhtenäisyyden Puolue / Kansalaisvallan Liitto (KVL) (1972-1983), which advocated for the rights of rural Finland, as well as Vihreä Liitto (1987 - Present), which is perhaps most distanced from the events of Civil War as the party has been formed on the grounds of a newer, climate movement (e.g. Mickelsson, 2021, p.263). 

Lastly, the right-wing cluster consists of  Nuorsuomalainen Puolue (1905-1918), Suomalainen Puolue (1906-1918), Kansallinen Edistyspuolue (1918-1951), Isänmaallinen Kansanliike (IKL) (1932-1944), Suomen Kansanpuolue (1951-1965, Suomen Ruotsalainen Kansanpuolue (RKP) (1906 - present), Kansallinen Kokoomus (1918 - present), Suomen Kristillinen Liitto / Suomen Kristillisdemokraatit (1958 - present), Vapaamielisten Liitto (1951-1965), Liberaalinen Kansanpuolue (1965-2011), Perussuomalaiset (1995 - present), and Korjausliike / Sininen Tulevaisuus / Siniset (2017-2023). The earliest parties were direct participants in the Finnish Civil War, whereas the later parties have kept a strong ideological distance to leftist parties (Mickelsson 2021). 



## Key Search Terms for Data Collection
- **Vapaussota**: Freedom War / War for Freedom (right-wing, independence from Russia/Soviet Union) -- It suggests that the Reds aimed to align Finland with the Soviet Union, portraying them as either Russian or Russian supporters.)
- **Luokkasota**: Class War (left-wing, social class struggle) -- Predominantly used by the left wing to emphasize the conflict as a struggle between different social classes.
- **Punakapina / Punainen Kapina**: Red Rebellion (right-wing)
- **Torpparikapina**: Crofters' Rebellion (right-wing, tenant farmers revolt)
- **Vallankumous**: Revolution (right-wing)
- **Kapina**: Rebellion (right-wing)
- **Sisällissota**: Civil War (neutral)
- **Kansalaissota**: “Civil War” (neutral) -- Used to emphasize the conflict within the nation itself, this term can have political connotations and suggests internal strife that is more about national identity than geopolitics. Generally, it is considered a neutral term.
- **Veljessota**: Fratricidal War -- It was used often by those who wanted to build peace within Finland. The term highlights the tragic nature of the conflict where compatriots, even neighbors or brothers, fought against each other, underscoring the inherent tragedy and senselessness of the war.

## Data Source
- Finnish Parliamentary Speech Data provided by the Semantic Computing Research Group (SeCo)
  - [Parlamenttisampo](https://parlamenttisampo.fi/fi/)
  - [SeCo Projects](https://seco.cs.aalto.fi/projects/semparl/)

## Research Questions:
1.	How has the Finnish Civil war discourse changed over time and what are some key ideas which were discussed during the civil war?
2.	How do nationalist, socialist and pacifist sentiments in the Finnish parliamentary discourse vary and how have they changed over time?
3.	Are there any meta-data-based changes, i.e., differences based on gender, speaker party, speaker experience etc. and do they affect the civil war discourse. 


## Methodology
This section describes the methodology employed to analyze Finnish parliamentary data, focusing on the discourse surrounding the Finnish Civil War across various time periods. To deepen our understanding of this discourse, we utilized a range of text processing techniques. The primary method involved Topic Modeling using the Latent Dirichlet Allocation (LDA) framework, implemented through the Python libraries 'gensim' and 'scikit-learn'. In addition to topic modeling, we conducted collocation analysis using LancsBox software (http://corpora.lancs.ac.uk/lancsbox/), enabling us to identify common word pairings within the corpus. 


We also performed a subgroup analysis through word clouds, which visually represented the frequency of terms within specific groups of data. This was complemented by a dictionary-based approach, where keywords identified in relevant literature helped to guide further analysis. Furthermore, subgroup-based clustering was carried out to categorize the parliamentary parties based on their discourse patterns, and heuristics derived from the topic modeling results provided additional insights into the discourse around the Civil War in different time periods. 


Our analysis began with the generation of word clouds, aimed at identifying the key words and major differences within the Finnish parliamentary discussions on the Civil War based on subgroups. We developed a function to automatically generate these word clouds based on a text column and a subset column which contains the factor levels as input; however, the metadata-based word clouds did not reveal significant insights. Once we applied the dictionary-based approach, we observed clearer distinctions in the language used by different groups based on their nationalist, socialist and pacifist sentiments. The dictionary based word clouds provided interesting results; however, this can be due to the nature of the dictionary based method which uses key-words to identify the columns. 


Furthermore, we used the LancsBox software (http://corpora.lancs.ac.uk/lancsbox/) to explore collocation networks within the corpus. We configured the analysis to identify words that frequently co-occur within a seven-word window on either side of a target word, applying a mutual information (MI) threshold of 4.75 and a minimum frequency of 8. Although this setting produced interesting insights, it did not help addressing any of the primary research questions, which motivated us to proceed with topic modeling. 


Now that we have shifted our focus to topic modeling using Latent Dirichlet Allocation (LDA), we employed both scikit-learn and Gensim library which is trained using the TF-IDF transformed corpus. We also performed vectorization, i.e., converting a text document into a matrix to proceed with the analysis. We tested the topic models using 3,4,5 and 10 components for each subset; since the primary goal of this study was to identity the Civil War discourse, we choose the topic modeling approach which results in the furthest split of the topics, i.e., the most clear categorization. The dual-library-approach allowed us to compare and contrast the effectiveness of the default settings within each framework. The analysis, through scikit-learn, provided more user-friendly and interpretable results. This process helped us in revealing the overarching themes that characterized the discourse around the Finnish Civil War across different periods, as well as among different subgroups. Our made use of only visual analysis (using PyLDAVis) and fell short of thoroughly validating the results of the topic models. In future, we will aim to validate the results using more comprehensive methods and robustness checks, as well as test hyperparameter optimization, to tune our modeling approach with finer parameters for the best results. 
Finally, we used a dictionary-based analysis, where we utilized a list of keywords  identified from literature reviews, topic modeling insights, party based clusters and our discussions on ideal key-words. Initially, the results from this approach were unsatisfactory, which led us to expand our keyword list using large language models, yielding usable results. This enabled us to identify the nationalistic, socialist, and pacifist sentiments within the parliamentary debates. Post running the dictionary through the dataset, we looked at some exploratory data analysis (EDA), word clouds, and topic modeling based on these keywords,to addressing our final research question.

## Results
The analysis of Finnish parliamentary debates from 1917 to the present reveals interesting discourses and significant shifts over time. One note-worth shift which can be observed is the shift from referencing the Civil war as rebellion to one of a revolution over time. A clear and gradual shift in this linguistic terminology can be seen over time. The rhetorics used in parliamentary speeches shift multiple times during different periods; however, 3 major themes can be identified: 
1.	Geo-Political Relationships:
Discussions frequently involved legislative considerations and historical reflections on Finland's political stance. The Mäntsälä Rebellion and other internal conflicts were common subjects. Finland's relationship with Russia and the broader international context was also heavily discussed in discussions around the CIvil War.  
2.	Changing/Bringing a New Order:
The rhetoric reflected a significant concern with societal transformation. The parliamentary speeches during this period often emphasized the need for a new societal structure, shaped by the outcomes of internal conflicts like the civil war. Terms (verbs) like "syntyä" (to be born/emerge) and "yhteiskunta" (society) were indicative of the emotions surrounding societal change and the emergence of a new order. 
3.	Legislative Discussions:
Legislative discussions highlighted historical, geopolitical, and national issues, with a particular focus on Finland's internal and external conflicts – mainly around policies and law. This topic includes discussions around law, policies and formal regulations with future concerns in mind.
While the overall discourse provided interesting insights, we were unable to formulate a discourse based purely on the overall sentiments; we hypothesized that there existed major differences within numerous subgroups, which can help understand the discourse better. Here is a summary of the results based on nationalistic, socialist and pacifist sentiment which were identified using a dictionary-based approach, as well as interesting sub-group based differences. 
Based on Stance taken during the CIvil War:
1.	Nationalism:
-	The discourse on nationalism often centered around a strong passion and development of a new and strong state, as well as for societal stability, and the preservation of Finnish identity. Keywords like “maa” (country), “Suomi” (Finland), “valtiollinen” (statelike), “itsenäisyys” (independence), “kansallinen” (national), “lippu” (flag), and “isänmaa” (fatherland) frequently appeared. 
-	Here a sentence with a high nationalism score– ‘’Meidän isänmaa tarvitsee isänmaallisuus ja maanpuolustus säilyttääkseen itsenäisyys ja kansallinen yhtenäisyys. (Our fatherland needs patriotism and national defense to maintain independence and national unity)
2.	Socialism:
-	Socialist rhetoric focused on issues of inequality, social welfare, and the role of the working class. The analysis revealed a persistent emphasis on class struggle, societal reforms, and criticisms of government policies perceived as favoring the wealthy.  Keywords such as "kapina" (rebellion), "yhteiskunnallinen" (societal), "porvaristo" (bourgeoisie), "työväen" (working), "työtaistelu" (labor struggle) and "luokkataistelu" (class struggle) 
-	Here is a sentence with a high socialism score – “Voimakas porvaristo itse vaarallinen sentähti vaarallinen työväenluokka tuntea luokka-asema nähdä työväenluokka vapauttaa suorittaa luokkataistelu vallankumous ehdottaa laki suuri valiokunta valiokunta ottaa käsittely pohja työväenasiainvaliokunta mietintö liittää vastalause esityksen olla vp ed” (The powerful bourgeoisie itself is dangerous therefore dangerous the working class feels its class position sees the working class liberates to carry out the class struggle revolution proposes law the large committee committee takes up for consideration the basis labor committee report attaches an objection to the proposal be vp ed.)
3.	Pacifism:
-	Pacifist discourse highlighted the importance of peace and disarmament. There was a notable emphasis on international peace movements and critiques of militaristic policies. This sentiment was particularly strong in discussions negative impacts of war on society. This included keywords such as – “rauha” (peace), “rauhanomainen” (peaceful), “sovinto” (reconciliation) “aseeton” (unarmed), ”neuvottelu” (negotiation) 
-	Here is an example of a pacifist sentence – Tuhoamissota sota uhri aseeton siviiliväestö koettaa tällainen ilmahyökkäyksi murtaa kansa hermovoima selvästi osoittaa viimeaikainen sota esinä italia abessinia sota espanja nykyinen sisällissota erittäinkin kiina japanna sota viimeksimainitä sota siviiliväestö surmata sotilas selvää selvä vaaranalainen maa asema (A war of destruction, the war victim is the unarmed civilian population who tries to break such an air raid that undermines the nation's mental strength, clearly demonstrated by recent wars such as the war in Italy, Abyssinia, the Spanish Civil War, and especially the war between China and Japan, where civilians are killed as soldiers, clearly endangering the country's position.)
Meta-Data Based Differences
1.	Gender:
-	The analysis indicated minimal differences in the rhetoric used by male and female speakers; however, subtle variations in word usage were observed.
2.	Age:
-	Age-based differences were also subtle. It can be seen that younger speakers tended to use broader terms, while older speakers provided more specific examples and detailed narratives, reflecting their greater experience and historical knowledge.
3.	Period:
-	1918 (+/- 1 Year):
i.	Legislative and Government Actions: Discussions centered on legislative actions and the broader future of Finland.
ii.	Russian Involvement: The influence and involvement of Russia in Finnish affairs were significant topics.
iii.	Nationalism: Nationalistic themes, including the role of the people and land in shaping Finland's future, were prominent.
-	1920-1960:
i.	Rebellion to Revolution: The period immediately around the civil war saw a shift in rhetoric from rebellion to revolution.
ii.	Mäntsälä Rebellion: A significant focus was on the Mäntsälä Rebellion and its outcomes, reflecting the political turbulence of the time.
-	1961-2000:
i.	Nationalism: One of the periods which has strong nationalistic features and can be categorized by the mentions and reflection of the Civil War, also, focuses on the people (ihminen, kansa) and their role or impact in the revolution.
ii.	Importance of Public Sentiments and Opinions: Personal "mieli"and political terms appear more frequently alongside policy lines (linja) and public sentiments (mieli). 
-	2002-Present:
i.	Industrialization: Modern terms related to industrialization, such as "teollinen" (industrial), became more common.
ii.	Civil War Comparisons: The Finnish civil war was often compared to other conflicts, such as those in Afghanistan and Spain, which can possibly highlight the differences or consequences of a Civil War.
4.	Party Ideology:
-	Left-leaning parties were more likely to discuss revolutions and societal changes, emphasizing the ongoing struggle and conflict. Right-leaning parties focused more on historical ties with Russia and action-oriented outcomes. The center parties showed less distinct patterns without deeper linguistic analysis.
5.	Polarization
-	 The words ‘kapina’ and ‘vallankumous’ were identified to be polar in nature. Despite being the two most commonly occurring words (each occurring in nearly 27% of all sentences), there were only 16 sentences which used both words together, highlighting its polar nature. 
-	 Sentences which used ‘kapina’ were central around the main idea of gain from the rebellion, the Mäntsälä Rebellion and suppression of public emotions. Some keywords used here include – 'hallitus' (government ), 'käyttää' (methods ), 'kukistaa', 'sanoa' and actions such as 'mieli' and 'tehdä'. 
-	On the other hand, sentences which used ‘vallankumous’ had more frequent occurrences of communism and Russia oriented sentences. This included keywords such as 'kommunistinen valtio' (communist states), 'venäjä' (Russia) 'suomi' (Finland) and 'kansa' (people)

## Conclusion 
This essay aimed to find answers to three research questions, one regarding the evolution of the Finnish Civil War discourse, another concerning the different discourse nuances between different political sentiments and a third one covering the variation based on meta-data. The essay found that first, the discourse shift surrounding the Finnish Civil War has indeed evolved over time, notably through the label of the Civil War from "rebellion" to "revolution." This change reflects a broader acceptance and recontextualization of the war's impact on Finnish society. To answer the second research question, more generally it can be said that the sentiments expressed in the Finnish parliamentary discourse exhibit distinct variations based on ideological lines. Nationalistic, more specifically, Fennoman rhetoric emphasized the birth and preservation of a strong Finnish state, with frequent mentions of national symbols and independence. On the contrary, socialist rhetoric highlighted issues of inequality, class struggle, and societal reforms. Pacifist discourse, though less frequent, focused on peace, disarmament, and the negative impacts of war, reflecting a desire for reconciliation and avoidance of future conflicts. 

The discourse also varied based on metadata such as gender, speaker age, time period, and party ideology. While gender differences were minimal, age-related variations showed younger speakers using broader terms, and older speakers providing detailed narratives. Over different periods, the focus shifted from immediate post-war legislative actions to broader reflections on national identity and international comparisons, sometimes even discussions of other than the Finnish Civil War. Similar to the findings regarding ideological sentiments, and as expected the essay was able to locate varying stances based on the speakers’ party affiliations. Left-leaning parties focused on revolution and societal changes, whereas right-leaning parties emphasized historical ties and actions. Center parties demonstrated less distinct patterns, perhaps due to the placement of social democratic party in this cluster.

Future research should aim to validate the results of this analysis using more comprehensive methods and robustness checks. One such method could be exclusivity of topics, which focuses more on the differences between the content of speeches leaving out the irrelevant and more broadly used concepts. In this way the future studies could contribute to a more detailed and nuanced understanding of the Finnish Civil War's impact on parliamentary discourse and national identity as well as the detection of the impact of societal change on the way the Civil War is understood over time.

## Bibliography
- Hentilä, S. (2018), Sisällissodan punaisten uhrien julkinen muistaminen – Kielletty! julkaisussa M Häyry , J Ahola-Launonen & T Takala (toim), Oikeudenmukaisuuden ongelma. Gaudeamus, Helsinki, Sivut 77-89.
- HIMA (2024) 'Suomen yhteiskunta muuttuu’. Available in: https://www.hi3.fi/3-kansalaiset-aktivoituvat-saaty-yhteiskunta-hajoaa/suomen-yhteiskunta-muuttuu/#footer-menu 
- Kannisto, N. (2016) Vaaleanpunainen tasavalta – SDP, itsenäisyys ja kansallisen yhtenäisyyden kysymys vuosina 1918–1924. Työväen historian ja perinteen tutkimuksen seura, Helsinki.
- Mickelsson, R. (2021). Suomen puolueet : vapauden ajasta maailmantuskaan / Rauli Mickelsson. (Kolmas, uudistettu laitos.). Vastapaino.
- Varho, E. (2018) ’Julma maa’ documentary of the 1918 civil war. YLE. Available in: https://areena.yle.fi/1-4460977?utm_medium=social&utm_campaign=areena-ios-share 
- The Union of International Associations (UIA) Peace Union of Finland, Link: https://uia.org/s/or/en/1100056614 

