--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: raptor
--

CREATE TABLE categories (
    id integer NOT NULL,
    category text,
    definition text
);


ALTER TABLE categories OWNER TO raptor;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: raptor
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO raptor;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raptor
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: note; Type: TABLE; Schema: public; Owner: raptor
--

CREATE TABLE note (
    id integer NOT NULL,
    content text,
    smaller text,
    research text
);


ALTER TABLE note OWNER TO raptor;

--
-- Name: note_id_seq; Type: SEQUENCE; Schema: public; Owner: raptor
--

CREATE SEQUENCE note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE note_id_seq OWNER TO raptor;

--
-- Name: note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raptor
--

ALTER SEQUENCE note_id_seq OWNED BY note.id;


--
-- Name: notes_categories; Type: TABLE; Schema: public; Owner: raptor
--

CREATE TABLE notes_categories (
    note_id integer,
    category_id integer
);


ALTER TABLE notes_categories OWNER TO raptor;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY note ALTER COLUMN id SET DEFAULT nextval('note_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY categories (id, category, definition) FROM stdin;
1	male	Everything related to males in the sense of men that have reached the fertile age.
8	female	Everything related to females in the sense of women that have reached the fertile age.
2	mate	Category joining both men and women. The "couples" category.
4	conflict	A category reflecting what creates or act as catalyst of the conflict reaction.
5	reproduction	Directly related to the reproduction act.
6	investment	This is a generic view of investment.
7	social	Everything related to groups behaviors and dynamics.
9	fear	A sub-section of mental defenses. The innate human fears.
10	normal vs ovulation	Joining the different natural behaviors when a women is in her ovulatory period and non-ovulatory period.
11	children	From the bringing of children to their natural learning phase.
12	negative	The negative emotions effect on behaviors.
13	positive	The positive emotions effects on behaviors.
14	status/reputation	Related to social interaction; This section lists the direct implications of social status and reputation.
15	material	Humans have a deep interaction with the material surrounding them.
16	parental investment	Related to children; How the different aspects of parental investments have a meaning and purpose.
17	step-parent	A non-blood related parent.
18	infidelity/poaching	Switching partners, snatching them, cheating on them, how does this affect the dynamics of a social group and of the couples.
19	mate choice	What are the factors that make you like someone more than someone else. What attracts males and what attracts females.
20	pheromones/hormones (+ emotions)	We might not notice it or put too much importance on it but our body secretions affect our mood and the view of others.
21	reproduction investment/engagement	The act of reproduction needs investment and engagement, how does it play on the dynamics of the world.
22	monogamy	What are the effects of monogamy.
23	polygamy	What are the effects of polygamy.
24	paternal investment	A specific subgroup of parental investment; What role does the father play.
25	maternal investment	A specific subgroup of parental investment; What role does the mother play.
26	cognitive defense/adaptation	A set of built-in biases that are set to protect us of the world.
27	kin vs non-kin	The difference between blood related and non-blood related.
28	stress	All the effect of stress from birth till death.
29	r VS K strategies	The r vs K strategies are:\nr : like rabbits, herbivore and calm\nK : like wolves, carnivore and ferocious
30	memory	A subset of the cognitive defenses; Memory keeps what is important and filters what is not.
3	mate guarding	It's important to keep your mate for yourself, how does this happen.
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('categories_id_seq', 30, true);


--
-- Data for Name: note; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY note (id, content, smaller, research) FROM stdin;
7	First born are more likely to stay in long term relationships and defer gratification; they prefer stability but are overall more anxious.\n\nLater born are more likely to strive for variety and excitement; they also have a more relaxed life.\n\nThis is related to anxiety felt from the parents' expectations, which highly affects self-esteem.	first born -> prefer stability but stressed\nlater born -> prefer variety but relaxed	Birth Order Dynamics and Response to Stress http://www.littletree.com.au/birthorder.htm
19	Women are more focused on maintaining social harmony.\nThey like to create social networks and link people together to share goods.	Women -> Social harmony	Maccoby, 1990; Pratto, 1996; Whiting & Edwards, 1988
9	r-selected people (see definition) tend to have a more developed neural alarm system, the red button (anterior cingulate cortex (ACC)) pushed by\nthe amygdala (part of brain) in case of danger.\n\nIt triggers significant physical pain, in case of danger.\n\nStudies have also correlated that people which have a more developed "alarm system" also have issues with:\nSocial ostracism and exclusion.\nA perception of unfairness in society.\n\nIt is also linked to the experience of envy.\nMoreover, envy is also associated with a willingness to break rules.\n\nThis all leads to anti-social tendencies.	r-selected -> more envy + willingness to break rules (over perception of unfairness)	Cerebral Lateralization of Pro- and Anti-Social Tendencies\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC3984952/\n
10	Affection, and bonding between parents and children is the root of future violence and dis-functions as adults.\n\nThe more a society experiences pleasure the less it inflicts pain and\nvice-versa.\n\nSocieties with a strong denial of body contact and shaming of natural\ninstincts have the highest rate of violence.\n\nIn those societies products enhancing violence are approved but not the ones who are pro-pleasure.\n\nFor instance, alcohol is allowed but not marijuana.\n\n\nThere’s a correlation between marital non-sexual\nsatisfaction, somatosensory deprivation (denial of body contact) and\nnon-affectionate parents, and extramarital affairs.\n\nPeople have extramarital affairs because they have lost the ability to bond with their partner. They jump from one person to another in\nthe hope it’ll be better.\n\nLike with alcohol, anything acts as a suppressor of\nthe pain inflicted in childhood.	Missing Affection & pleasure as children -> future violence & dis-functions	BODY PLEASURE AND THE ORIGINS OF VIOLENCE\nhttp://violence.de/prescott/bulletin/article.html
11	Male are good at spacial orientation; finding locations and creating mental maps. They are imagining objects in different angle in space.	Male -> Good with mental maps	Gender effects in spatial orientation: cognitive profiles and mental strategies\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2909401/\n\nMen Are Better At Maps Until Women Take This Course\nhttp://nautil.us/issue/32/space/men-are-better-at-maps-until-women-take-this-course\n\nVISUAL PERCEPTUAL DIFFERENCES BETWEEN MEN AND WOMEN\nhttp://content.lib.utah.edu/utils/getfile/collection/ehsl-nam/id/4843/filename/4934.pdf
12	Women are better at finding landmarks; With a detailed visualization they can remember small details in their close environment. They can quickly and easily notice changes in their surrounding.	female -> good at detailed visualization	Gender effects in spatial orientation: cognitive profiles and mental strategies\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2909401/\n\nMen Are Better At Maps Until Women Take This Course\nhttp://nautil.us/issue/32/space/men-are-better-at-maps-until-women-take-this-course\n\nVISUAL PERCEPTUAL DIFFERENCES BETWEEN MEN AND WOMEN\nhttp://content.lib.utah.edu/utils/getfile/collection/ehsl-nam/id/4843/filename/4934.pdf\t\t\t
13	Girls are better at tree climbing than boys. They used to seek refuge in trees.	Women -> better tree climbers\t\t\t\t	Precocious Knowledge of Trees as Antipredator Refuge in Preschool Children: An Examination of Aesthetics, Attributive Judgments, and Relic Sexual Dinichism\nPrecocious Knowledge of Trees as Antipredator Refuge in Preschool Children: An Examination of Aesthetics, Attributive Judgments, and Relic Sexual Dinichism
14	For men reproduction is short and low cost. It only comes down to inseminating a female.	Men -> reproduction time is short	Evolutionary Psychology\nhttps://en.wikipedia.org/wiki/Evolutionary_psychology\n\nSexual Strategies Theory: An Evolutionary Perspective on Human Mating\nhttp://www.bradley.edu/dotAsset/165805.pdf
15	Male use promises of material, violence, conceal their partner, and use submission to mate guard their partner.	Male -> use force and material to keep partner	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
16	Men socially tend to put more importance in coming out ahead. They put importance in being in front of the social row.	Men -> Come out ahead	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
17	Sperm are plentiful compared to eggs.\n\nFemales spend more time and energy than males in the conception because the infant grows in their body.\nThere are risks accompanied by carrying a child.	Female -> reproduction time is long and high risk	Dominance, Status, and Social Hierarchies - DENISE CUMMINS
20	Female use their appearance, jealousy, and desirability to keep their mate.\nTheir mate guarding revolve around attention and investment.	Female -> use desirability to keep partner	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
18	In their ovulation phase, women avoid risky places.\nThey also favor physically able men during this phase.\n\nGo with the most exotic and strong man you can find, get the best genes possible.\n\nIn the hunter-gatherer society, it was frequent to have women taken as hostage after wars, as war trophy. Creating a sort of Stockholm syndrome.\n\nHowever, during ovulation women prefer stable, resourceful, and men that have potential.	Women -> ovulation -> avoid risk	artile: "Risk Taking and Women’s Menstrual Cycle: Near Ovulation, Women Avoid a Doubtful Man" Nicolas Guéguen\nhttp://lebs.hbesj.org/index.php/lebs/article/viewFile/lebs.2012.17/56\n\nbook "Against Our will" - Susan Brownmiller
22	Fear is a signal of protection against pain or death.\nIt's better to be false positive than false negative.\n\nFor example: If someone gets sick after eating a certain type of food he'll avoid the food even though he might have not gotten sick directly because of it. Avoiding the food has no major drawbacks but eating it again might kill the person.	Fear -> Signal of danger\t\t\t	The Gift of Fear (1997), Gavin De Becker
24	Positive mood is correlated with risk seeking and exploration.\n\nWhen things are going smooth it is time to grow in new domains.	Positive Mood -> risk seeking\t\t	The Psychology of Personality: Viewpoints, Research, and Applications - By Bernardo J. Carducci
28	Women are better at hiding infidelity.\n\nThis might be due to the high risk of her being killed by her romantic partner.\nMen emphasis on the matters of cuckoldry and loss of status, their paternal uncertainty and sexual jealousy.\nIn fact, most family homicides are directly related to this: The most dangerous person in a woman's life is her romantic partner.	Women -> Better hide infidelity	Adaptations to Dangers from Humans - SECRECY - JOSHUA D. DUNTLEY\nSex Differences in Self-reported Infidelity and its Correlates - Rebecca J. Brand, Charlotte M. Markey, Ana Mills, Sara D. Hodges\nInvestigating sexual coercion in romantic relationships: A test of the cuckoldry risk hypothesis - JA Camilleri\n12 Violence and Abuse in Families: The Consequences of Paternal Uncertainty - AT Goetz
29	Mate guarding strategies have been developed as ways to prevent infidelity and poaching.	Mate guarding -> Against Infidelity	Human Mate Guarding - David M. Buss\nThe Evolution of Human Mating - David M. Buss\nMate retention, semen displacement, and human sperm competition: a preliminary investigation of tactics to prevent and correct female infidelity\n
30	For women, their partner leaving means risking being left alone to take care of children.\nTheir men investing in someone else children instead of their own.\n\nThus women have an innate bias to focus on how much investment and attention they are getting:\nAlways seeing less than reality.\n\nIt's an emotional betrayal.	Women -> Loss of investment -> Left alone -> Bias over attention	Fundamentals of Human Mating Strategies - DAVID P. SCHMITT\nRelationship infidelity: A loss perspective - BA Boekhout, SS Hendrick\nHuman mate guarding - DM Buss
33	The more a couple spends  time apart the more the man is motivated to inseminate his partner.\nIt is directly related to the time spent apart from his partner.\n\nIt is possibly a mechanism to fight against sperm competition or to drive the male to come back home after a long trip. Strengthening the bonding and investment in the relationship.	More time spent apart -> More want to inseminate	Female Infidelity and Sperm Competition - PSYCHOLOGICAL MECHANISMS ASSOCIATED WITH PRUDENT SPERM ALLOCATION - TODD K. SHACKELFORD, NICHOLAS POUND, AARON T. GOETZ, and CRAIG W. LAMUNYON
32	There are many physical factors that are taken in consideration when mate choosing:\n\n* Skin quality\n* Hair quality (especially for female)\n* Oral health\n\nIn general, those are all cues of a strong body and health.	Choose mate that has a resistant body\t\t	Physical Attractiveness in Adaptationist Perspective - ASSESSMENT OF CUES TO HUMAN SOCIAL VALUE: HEALTH, PHENOTYPIC, AND GENOTYPIC QUALITY - LA\nWRENCE S. SUGIYAMA
31	For men, partner's infidelity is a risk of cuckoldry, raising another man's child - wasting all his resources on someone else genetic material.\n\nThus men have an innate bias to focus on sex.\nAlways seeing more than reality.\n\nTheir woman having a sexual relationship with another man triggers a wide range of violent emotions, especially in monogamous couples where there is a higher degree of investment.	Men -> Sexual betrayal -> Cuckoldry -> \tBias over sex	Human mate guarding - DM Buss\nSex differences in response to sexual versus emotional infidelity: The moderating role of individual differences - SL Miller, JK Maner
34	A female fertility and fertility potential are the most important traits a man is attracted to.	Men -> Prefer fertile women\t\t	Evolution of human mate choice - David C. Geary, Jacob Vigil & Jennifer Byrd‐Craven
36	During their ovulation period women are more attracted to the pheromones and body odors (ex: sweat) of well built men.	Ovulation -> Women more attracted to well built men\t\t\t	Physical Attractiveness in Adaptationist Perspective - LAWRENCE S. SUGIYAMA\nAttractiveness of women's body odors over the menstrual cycle: the role of oral contraceptives and receiver sex - S Kuukasjärvi, CJP Eriksson, E Koskela, T Mappes
37	In non-ovulatory periods women prefer men that show "good father" attributes.\n\nThose attributes are related to investment, resources, dedication, passion, altruism, and potential.	Non-Ovulatory period -> Prefer good father men	Adaptations to ovulation implications for sexual and social behavior - SW Gangestad, R Thornhill\nOvulation leads women to perceive sexy cads as good dads - KM Durante, V Griskevicius, JA Simpson\nWomen's fertility across the cycle increases the short-term attractiveness of creative intelligence - MG Haselton, GF Miller\nChanges in women's mate preferences across the ovulatory cycle - SW Gangestad, CE Garver-Apgar
38	Men short-term mating strategy focuses on having a large number of partners.\n\nThis implies having more children.\n\nWhen men are constantly looking for new partners it creates a world of competition and conflict: For mates and resources.\n\nMen that have "high value" and live riskier lives are more frequently following this strategy.	Men -> Short Term Mating -> Many Partners -> More competition	Fundamentals of Human Mating Strategies DAVID P. SCHMITT\nSexual strategies theory: an evolutionary perspective on human mating - DM Buss, DP Schmitt
39	Women short term mating strategy focuses on obtaining high value men.\n\nThey strive for the most exotic and high quality genes.\n\nThis strategy is taken more frequently during their ovulation period.	Women -> Short term -> Ovulation -> High value men	Sexual strategies theory: an evolutionary perspective on human mating - DM Buss, DP Schmitt\nSex similarities and differences in preferences for short-term mates: what, whether, and why - NP Li, DT Kenrick\nConditional expression of women's desires and men's mate guarding across the ovulatory cycle - MG Haselton, SW Gangestad
40	Monogamy enhances male alliances.\n\nBy reducing competition and creating social bounds between monogamous nuclear families males can focus on working together.	Monogamy -> Male alliances.	Aggression - MALE-FEMALE PARTNER AGGRESSION - ANNE CAMPBELL\nMale reproductive strategies and social bonds - RC Connor, AJ Read
41	Children need long term investment.\n\nA mate leaving the couple equates to a low survival rate for the offspring.\n\nThe investment put into children is inversely proportional to the fact that the persons are unmarried, polygamous, have been married more than once.\nWhich means that in those cases the person is less likely to invest in his or her young.	Children -> Long term investment -> less investment if have other options	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\nEvolution of paternal investment - DC Geary
42	The mechanisms put in place to build strong monogamous couples:\n\n* Pair bonding\n* Attachment\n* Strong feelings\n* Emotions	Monogamy -> Feelings of attachment\t\t\t\t	Fundamentals of Human Mating Strategies - MONOGAMOUS MATING STRATEGIES - Evidence of Monogamy in Humans - DAVID P. SCHMITT\nThe mystery of monogamy - ED Gould, O Moav, A Simhon\nConcealed ovulation and clandestine copulation: A female contribution to human evolution - I Schoröder\nLove is more than just a kiss: a neurobiological perspective on love and affection - A De Boer, EM Van Buel, GJ Ter Horst
45	Factors linked to mate value:\n\n* Agreeableness\n* Commitment (Altruism, Cooperation, Trust)\n* Physical Prowess (Strength, protection)\n* Emotional Stability (Calmness and stability)\n* Surgency (Dominance, leadership)\n* Physical attractiveness (Good genes, fertility)	Factors related to mate value -> Good genes, Long run partner, Stable and strong	Commitment, Love, and Mate Retention - DEPENDENCE IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS\nTrait‐Specific Dependence in Romantic Relationships - BJ Ellis, JA Simpson, L Campbell
46	Facial similarities affect investment in others.\n\nThe more similar the faces, the more trust, and resource investment there is.\nIf they are close in their features it is an: Identity By State (IBS)\n\nThe closer they are linked, in their relationship genetically, the lesser they are sexually attracted.\n\nThis coefficient or relatedness is the: Identity By Descendant (IBD)\n\nMen are more able to discern facial similarities than women.\nThis device is used as defense against cuckoldry; they can directly notice if the child is rightfully theirs.	Facial & physical similarities -> More trust -> Men device against cuckoldry	PARENTING AND KINSHIP - MARTIN DALY and MARGO WILSON\nFacial resemblance enhances trust - LM DeBruine
47	There is a higher child mortality rate in high risk societies.\nIt correlates with low investment in children and with adults seeking more mates.\n\nIn the cases where parental investment is present, children have better social competitiveness and by consequence have a reproductive advantage over their peers which have no parental investment.	Parental investment -> High quality offsprings	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway
48	Men that invest a lot are seeking more competent, intelligent, and better educated partner.\n\nTogether they have a more effective parenting.\n\nThe opposite also applies, less investing men tend to have less effective parenting.	Men more invested -> Women more invested -> Educated and intelligent children	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
49	When a father interacts in games with children, through physical activities or education, the children are:\n\n* More social and popular\n* More positive and have less emotionally unstable\n* Less psychologically difficult\n* Better in academic performances\n* Less aggressive\n* More motivated\n\nThis might be linked to genes for intelligence, impassivity, and personality.\nMeaning that it might not be directly related to the parent interaction but to a genetic cause.	Parental investment -> Calm and intelligent children	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
50	The way a father interacts with his children directly influences their later reproductive strategies:\n\nIf absent from home it correlates for boys with a higher chance of criminality, stress, "Macho" behavior, criminality, and delinquency.\n\nFor girls it correlates with them seeking quantity over quality.	Father behaviour -> mirror of children behaviour\t\t	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
51	Fertility, fecundity, and future value are factors in the mate choosing process.\n\nPartners want to access the future reproductive value and investment of their mate.	Mate choice -> Future value of mate is also important	Physical Attractiveness in Adaptationist Perspective - MATE VALUE - LAWRENCE S. SUGIYAMA\n
52	Male have an unconscious vigilance at noticing female ovulation.\n\nIt forges cooperation between the sexes: Men protect their partner during the critical phase and other men don't steal women from other mates.\nIt's a mutual respect.\n\nThe "sperm competition" theory goes in accordance with this.\n\nMen don't want any other men around their female, they fight even at the level of the sperms.\nThis explains why men have relatively large penis/body ratio compared to other apes, the role of female orgasm to retain sperms and why men are worried about it, male vigilance at women fertility, etc...	Men -> vigilance at women ovulation\t	Adaptations to Ovulation - STEVEN W. GANGESTAD, RANDY THORNHILL, and CHRISTINE E. GARVER-APGAR\nHuman sperm competition: Ejaculate manipulation by females and a function for the female orgasm - RR Baker, MA Bellis
53	Women have a higher chance of becoming pregnant from men they have previously copulated with.\n\nThis is a defense against having children from a man that doesn't want to invest.	Copulation -> More chance of pregnancy if had previous intercourse	Female Infidelity and Sperm Competition - TODD K. SHACKELFORD, NICHOLAS POUND, AARON T. GOETZ, and CRAIG W. LAMUNYON\t
54	Parental care is needed for infants growth and survival.\n\nThey demand time, food, and protection until mature.\n\nA child without parents nor any relative has almost no chance of survival.	Children -> Need investment until mature\t\t	Why parents matter: Parental investment and child outcomes - N Barber
161	Children fight and are greedy for their parents' resources.	Children -> fight over parents resources	The Selfish Gene - Richard Dawkins\n
67	At 13 months boys become more assertive than girls.\n\nThey prefer to destroy, attack things and to compete.\nThey want to know who is better and tougher.\n\nThose types of activities consume 65% of their time. \n\nOn the opposite, girls prefer to cooperate, and to nurture.	From young age -> Sex differences in conflicts	Goldberg & Lewis, 1969\nAggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\nSex differences in the games children play - J Lever\n\n
56	There is a correlation between a good and stable relationship and the perception of ideal mate and the number of disagreements the persons in the couple have.	Happy relationship -> Less disagreements\t\t	Commitment, Love, and Mate Retention - RELATIONSHIP PROCESSES AND THE LOVE SYSTEM - LORNE CAMPBELL and BRUCE J. ELLIS\nThe importance of similarity and understanding of partners' marital ideals to relationship satisfaction - K Acitelli, DA Kenny, D Weiner
57	Time is a costly asset.\n\nThe more time a couple spends time together the less likely they are to breakup.	More time together -> Less chance of breakup	Commitment, Love, and Mate Retention - INVESTMENTS IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS
58	Factors influencing the choice of a mate:\n* Provisioning\n* Protection\n* Parental nurturance\n* Sexual access\n* Commitment	Mate choice -> All aspect based on avoidance of risk	Commitment, Love, and Mate Retention - INVESTMENTS IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS
59	Aggression is a mean to acquire or defend resources.	Aggression -> defend/gain resources	Aggression - ANNE CAMPBELL
61	Women from the moment of conception invest highly in their children.\nBecause of this they can differentiate between healthy fetus and non-healthy ones.\n\nOnly 60% of fertilized eggs implants in the uterus, 20% of those are miscarried. Furthermore, if a fetus doesn't secrete enough HCG (hormone) it won't survive the development phase.\n\nThe environment also plays a role in early miscarriage. For instance, danger and stress are correlated with an increase in miscarriage.\n\nThose are natural "abortion" and investment redirection mechanism. There are priorities and the body knows it.	Women -> Developed an auto-abortion mechanism to choose healthy children	Aggression - MATERNAL-INFANT CONFLICT AND INFANTICIDE - ANNE CAMPBELL\nFetal programming by maternal stress: insights from a conflict perspective - M Del Giudice\nGenetic conflicts in human pregnancy - D Haig\n
62	Infanticide rates are correlated with the absence of father and paternity uncertainty.	Less parental investment -> More infanticide	Aggression - MATERNAL-INFANT CONFLICT AND INFANTICIDE - ANNE CAMPBELL\nEssock-Vitale & McGuire, 1988; Hill & Low, 1992\t\t
64	Women's dependence on men has been increased by patrilocality, the loss of female kin bonds, and the evolution of male alliances.\n\nThe chance of divorce raises by 187% when the man is economically deficient.\n\nThe chance of divorce when it's the woman spending too much money are only raised by 77%.\n\nThis all relates to how male support is being perceived and how important it is.	Low level of male support -> High level of divorce	Aggression - ANNE CAMPBELL\nEconomic factors and marital stability - WJ Goode
65	99% of same sex homicides are male on male.\n\nThe main cause is that there are more male alliances than female alliances and groups fight against each others for resources.	Conflicts are a male thing	Aggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\nSex differences in aggression: A rejoinder and reprise - EE Maccoby, CN Jacklin\n
66	Most conflicts may seem trivial from an outsider's perspective.\nHowever for the belligerents perspectives, it is a fight for status and honor, both parties do not want to loose face.\n\nThis specially applies to men and their extreme sensitivity to status loss.\n\nStatus being associated with dominance and reproductive success.\nIn sum, they are indirectly fighting for mates.	Conflict -> Benign but stay to not loose face -> Fight for mate	Daly and Wilson (1988)\nAggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\nSocial conflict activates status-dependent endogenous analgesic or hyperalgesic mechanisms in male mice: effects of naloxone on nociception and behaviour - RJ Rodgers, CA Hendrie\nPrecarious manhood and its links to action and aggression - JK Bosson, JA Vandello\n
68	Men emphasis on fertility to choose their partner.\n\nMen of 60 years or older prefer to women that are 15 years younger or more.\nYoung teenagers prefer women that are 5 years older.\n\nBoth prefer women that are close to their most fertile years.\n	Men -> Focus on fecundity	Marrying women 15 years younger maximized men's evolutionary fitness in historical Sami - S Helle, V Lummaa, J Jokela\nKenrick & Keefe, 1992\nAggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL
69	Men and women have different ways of competing withing the same sex.\n\nMen compete with each others by using their superiority, promiscuity, and popularity.\n\nWhile women compete with each others with the currency of appearance.\nAn example of that is that 88% of women older than 18 use makeup.	Same sex conflict -> Men, superiority / Women, appearance	Aggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL\nBody image and appearance-management behaviors in college women - B Fink, N Neave, H Seydel\nThe evolutionary psychology of physical attractiveness: Sexual selection and human morphology - N Barber\nFemale competition: Causes, constraints, content, and contexts - A Campbell 
70	A woman's reputation is directly linked to her sexual restraint.\n\nMen avoid women that have a wide range of past sexual behavior because they are concerned with paternity uncertainty.\n\nStatus such as "whore" are important judgment in a woman's world.\n\n	Women -> Status related to sexual behaviour	Aggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL\n“Once you get a reputation, your life's like…'wrecked'”: The implications of reputation for young women's sexual health and well-being - F Stewart
71	Males inside a group cooperate with other males in the group as a mean to gain resources from other groups - the outgroups.\n\nThe resources can range from territories, to mates, and food, etc..\n\nWhen the material resources in an area/group are running low there is raise in violence.\nThe reason is that individuals start to fight between themselves for resources.\n\nFor instance, 71% (or more) of the violent crimes in cities are from the poor neighborhoods. 	Less materials -> More violence, attack for resources	Coulton, Korbin, Su, & Chow, 1995\nAggression - THE ECOLOGICAL TRANSMISSION OF AGGRESSION -A NNE CAMPBELL\nMultilevel analyses of neighbourhood socioeconomic context and health outcomes: a critical review - KE Pickett, M Pearl
73	Before birth, oxytocin, the "love hormone", is secreted in the mother as a mean of attachment and bounding between her and her child.\n\nThis hormone calms and nudges the brain reward system resulting in her staying and focusing on the infant after birth.\n\nIt acts like an addictive drug.	Women oxytocin secretion before birth -> Bound with child -> more investment	Carter, 2002; Fleming, O’Day, & Kraemer, 1999\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE
74	Getting attached to a mate influences the person's social relationship management.\nIt deactivates an individual social guard and judgment, making him or her more likely to get along or accept people they wouldn't usually get along with.	Mate attachment -> Lower social guard	Hormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nBartels & Zeki, 2004; Fisher, 2004\nNeurobiology of social attachments - GA Coria-Avila, J Manzo, LI Garcia, P Carrillo\n
75	Experienced fathers are more willing to invest in children than non-experienced fathers.	Parental care increase with experience as a father	Ziegler & Snowdon, 1997\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\n
76	Hormones related to mate preference and bounding:\n\nFor females:\nOxytocin (OT), the hormone of relaxation which is released after mating.\n\nFor males:\nArginine Vasopressin (AVP) and OT, the hormones of sexual activation and pair bounding.	OT and AVP -> Important role in pair bounding	The effects of oxytocin and vasopressin on partner preferences in male and female prairie voles (Microtus ochrogaster) - MM Cho, AC DeVries, JR Williams\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nThe neurobiology of attachment - TR Insel, LJ Young
78	If a children respond aggressively to a "challenge" and "wins", he is more likely to respond aggressively in the future.\n\nIt's an instinct to find an easy way out of a problem.	Conflict -> Child use violence and win -> Will use violence in the future	Patterson, Littman, & Bricker, 1967\nAggression - PSYCHOLOGICAL MODELS OF ECOLOGICAL ADJUSTMENT - ANNE CAMPBELL
79	A man prolactin level goes higher and his testosterone goes lower when his wife is pregnant.\n\nIt makes him focus on the child on an emotional level, instead of focusing on finding more mates.\n\nWe refer to this as the pregnancy syndrome.	Prolactin -> Father's emotional response to infant	Storey, Walsh, Quinton, & Wynne-Edwards, 2000\nTestosterone and prolactin are associated with emotional responses to infant cries in new fathers - AS Fleming, C Corter, J Stallings, M Steiner
80	Low resource & risky environments are correlated with:\n\n* Less attentive and conflicted parenting.\n* Children that have a tendency to form unstable relationship later in life.\n\nThe opposite applies as well:\n\n* Secure and positive individuals have less conflicts, more satisfying and longer relationships.\n\n\nThose two world views are passed down to children through stress, environment, and knowledge (interaction with the world).	The environment shapes future behaviour	MacDonald, 1992\nEvolution of Paternal Investment - FACULTATIVE EXPRESSION OF HUMAN PATERNAL INVESTMENT - DAVID C. GEARY
81	The older the parents the more they invest in children.\n\nThe infanticide rates goes in accordance with this, it goes down drastically in an aging population.\n\nMenopause plays its role as a reminder that rearing children is costly. There is a higher risk in rearing children for older women.\n\nIt is also a mechanism to stop investing in reproduction and to start investing in grand-children instead.	Parents older -> Invest more in children and grand-children -> Menopause is a reminder	Bugos & McCarthy, 1984; Daly & Wilson, 1995\nParental Investment and Parent-Offspring Conflict - CATHERINE SALMON\nHypothesis: menopause discourages infanticide and encourages continued investment by agnates - PW Turke
83	In suspicious situations people tend to automatically consider the opposite of what is asserted.\n\nThis also depends on how familiar they are with the individual.	Suspicious situation -> Consider the opposite	Schul, Mayo, & Burnstein, in press
84	In high risk situations individuals are nepotistic, they favour kin more than anyone else.\n\nThe cost can be calculated as follow:\n\n(Genetic cost of helping) < ( (Benefits) / (Degree of relatedness) )\n\nThis is called the Hamilton's rule.	Individuals are inherently nepotistic	Altruism and Genetic Relatedness - COMPUTING THE COSTS AND BENEFITS OF ALTRUISM - EUGENE BURNSTEIN\nKin-recognition abilities and nepotism as a function of sociality - JM Mateo
85	Sperms are plentiful and low cost.\nFecundation for a male isn't costly, this explains the risk of abandonment.\n\nEggs are costly and scarce.\nFecundation for a female is costly, this explains the high commitment.\n\nThose aspects poor down into all of our daily lives, from risk to investment, nurturing, and social issues.	Sperms -> Low cost, Eggs -> Costly	The cost of sex: quantifying energetic investment in gamete production by males and females - A Hayward, JF Gillooly
115	List of strong social emotions:\n\nSocial fear:\nTriggered by coalitions or ethnic groups that threaten physical safety.\n\nSocial disgust:\nTriggered by something or someone threatening health or morals.\n\nSocial anger:\nTriggered by free riders, a person taking what is not rightfully theirs.	Defence of social circle -> Strong emotions	Mackie et al. (2000)\nAltruistic punishment in humans - E Fehr, S Gächter\nBody, psyche, and culture: The relationship between disgust and morality - J Haidt, P Rozin, C McCauley
87	There is a state of equilibrium between infidelity and fidelity in a society.\n\nUsually it is a rate of 5/6 coy women for 1/6 "fast" women and\n5/8 faithful men for 3/8 "philanderer" men.\n\nThis isn't fixed, the balance always move to an equilibrium, and evolutionary stable strategy (ESS).\n\nThe more "fast" women are available the more men will cheat.\nAnd the more they cheat the less investment there will be in children.	Game theory of "sexual openness"	The selfish gene - Richard Dawkins\nCoyness, philandering and stable strategies - P Schuster, K Sigmund
88	Orphans have low reproductive value in many societies.\n\nWhich lead to think that relationships and connections are important factors in mate/reproduction choice.	Orphans -> Low reproduction	Alexander, 1974; Hawkes, 2003; Williams, 1957
89	Factors promoting monogamy:\n\n* Extensive biparental care\n* Social education of children (linguistic amongst others)\n* Lengthy adolescence\n* Concealed ovulation\n* Menopause	Monogamy -> Has social factors promoting it	Flinn, Geary, & Ward, 2005\nHormones and the Human Family - EVOLUTION OF THE HUMAN FAMILY - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE 
90	Social bounds and cooperation are created through attachment.\n\nAttachment provides security and relief.\n\nParadoxically it also creates pressure on their subjects, stress directed towards the loved ones, the ones they care about.	Social bound -> Attachment -> Pressure	Hormones and the Human Family - THE CHEMISTRY OF AFFECTION - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nAttachment, stress, and psychopathology: A developmental pathways model - COFC RISK\n
91	In game theory there is always an equilibrium pointand this point depends on the current environment.\n\nDepending on group criteria, policing, and maintenance of equity, it's possible for "generous" individuals to replace "selfish" ones.\n\nThe society rules makes it less advantageous for defectors.	Equilibrium of defectors and cooperators	Strong reciprocity, human cooperation, and the enforcement of social norms - E Fehr, U Fischbacher, S Gächter
92	Infants develop social skills before physical ones.\nThey have an elastic brain that quickly learns social rules.\n\nIt makes us realize the important of adaptation to the local community: language, facial recognition, eye contact, facial expression, etc..\n\nBecause it takes a long time for infants to be physically able there is a need for long parental investment, for caretakers.	Infant -> Develop social before physical -> Need for investment	de Haan, Johnson, & Halit, 2003\nFarroni, Mansfield, Lai, & Johnson, 2003\nBornstein & Arterberry, 2003\nAlexander, 1990a; Bjorklund Pellegrini, 2002; Bloom, 2000; Geary & Bjorklund, 2000; Geary & Huffman,2002; Small, 1998, 2001
93	Participating in "warfares", getting the "warrior status" for males gives them an in-group benefit and reproductive advantage/success.\n\nThey gain the respect from their peers and the trust from the group.\n\nNot participating in crucial group activities such as "warfares" can lead to the opposite, loss of status, ostracism, and being tagged as coward.	War -> Male status -> Reproductive advantage	Boyd, Gintis, Bowles, & Richerson, 2003; Boyd & Richerson, 1992\nAggression - ANNE CAMPBELL
94	Groups are always stronger than single individuals.\n(Flock of bird example)	Groups -> Stronger than individual	https://en.wikipedia.org/wiki/Flocking_(behavior)
95	Emotions are an evolutionary device to focus attention on immediate problems.\nThey are used to evaluate the best outcome in an array made of pieces of information that aren't always coherent.\n\nIt would be too costly to compute (think about) them all.\n\nEmotions are a mean to maximize positive outcomes, they are a fast shortcut to good generic rules.	Emotions -> Bias to maximize positive outcomes	Ketelaar & Todd, 2001\nAggression - ANNE CAMPBELL
97	Testosterone makes males impatient, impulsive, and ferocious.\n\n\nIt leads to hasty, non-lasting relationships.\nThey prefer to invest in other things.\n\nRisky and unstable societies have a bigger portion of males with high testosterone.	Testosterone -> Impulsivity -> Aggression	Testosterone and aggression - J Archer\nTestosterone and human aggression: an evaluation of the challenge hypothesis - J Archer\nEffects of testosterone on breeding density, breeding success and survival of red grouse - R Moss, R Parr, X Lambin
98	The "love hormone", oxytocin, acts on the brain reward system.\nIt enables long lasting relationships due to its drug-like effect and addiction.\n\nIt also increases stress in situations related to partners and loved ones.	Oxytocin -> Addiction effect	Neuroendocrine perspectives on social attachment and love - CS Carter\nIs love passion an addictive disorder? - M Reynaud, L Karila, L Blecha\nStress, sex, and addiction: potential roles of corticotropin-releasing factor, oxytocin, and arginine-vasopressin - V Bisagno, JL Cadet
99	In short unpredictable events, stress (cortisol) enhances mental activities.\nThis helps cope with challenges.\n\nMeanwhile, other mental processes are inhibited to favor focusing on the current situation and reducing "noise".	Stress -> Short term -> Help face challenges	Hormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nEndocrine responses to unpredictable environmental events: stress or anti-stress hormones? - JC Wingfield, AS Kitaysky
100	Children living with step-parents have a higher level of cortisol than \nchildren living with any other kind of relatives\n\n\nThis is interesting, this happens even in the case of a children living with a remarried mother.\n\nConsequently, living with the grandparents is less stressful than living with a remarried mother.	Children living with anyone other than parents -> More stress	Childhood Stress: Endocrine and Immune Responses to Psychosocial Events - M. V. Flinn and B. G. England
105	Fitness is enhanced by resources and commodities such as food, shelter, territories, and mates.\n\nResources might become scarce and individuals might want to leave. Such choice carries costs: The new location might not have enough resources of might be inhabited by strangers which will lead to fights.\n\nAggression is one of the responses to competition for resources.\n\nThere are costs to leaving and costs for fighting for resources.	Resources -> The main source of conflict	Aggression - AGGRESSION CONCEPTUALIZED - ANNE CAMPBELL
103	Daily contact makes individuals more aware of their peers needs.\nThey learn to reciprocate and help in times of needs\n\nThere's an understanding of obligations and entitlement.\n\nThe more distant the contacts the more direct trades are made - The less reciprocity.\n\nIt's an explicit and instant trade of goods.	Close contacts -> long term obligations & status VS Distant -> explicit and direct trade	Neurocognitive Adaptations Designed for Social Exchange - LEDA COSMIDES and JOHN TOOBY\nReciprocity and social distance: A reconsideration - S Price
106	Aggression has costs.\n\nIn zero sum games, competitions were there are only one conclusion, an individual has to chose the best option: fight or flight, reward or cost.\n\nIf we wanted to calculate it, it would be similar to:\n\nReward * (Probability - Cost * Probability)\n\nThere are two types of aggression: Proactive and responsive.\n\n* Proactive:\nAbsence of anger and arousal, it's a mean to an end.\n\n* Responsive:\nIt's a response with anger and emotions.	Aggression is costly -> Individuals developed a mechanism to choose what to do (emotions)	Aggression - ANNE CAMPBELL
107	People like to associate themselves with others that push them forward.\n\nFor example, good partners in cooperative activities, which they can benefit from in their current social circle and environment.\n\nIn small groups if someone acts selfishly, the selfish behavior is more likely to spread than if it was in a bigger group.	Cooperation -> Like individuals that help / nasty behaviours spread in small groups	Hamilton, 1964; Trivers, 1971; Boyd & Richerson, 1985\nManaging Ingroup and Outgroup Relationships - CHOOSING SOCIAL PARTNERS - ROBERT KURZBAN and STEVEN NEUBERG
108	Why do men rape:\n\nMen have a bias over sex (They see it everywhere and over emphasize it).\n\n* Disadvantaged Men (no other mean of reproduction)\n\n* Specialized Rapists (Aroused by violent acts, fast ejaculation to not get caught)\n\n* Opportunistic Rapists (Seek receptive women but rape when they don't consent)\n\n* High Mating Effort Rapists (Psychopaths)\n\n* Partner Rapists (In the case of sperm competition)	Rape -> Main cause is bias over sex	Why Do Men Rape? An Evolutionary Psychological Perspective - William F. McKibbin, Todd K. Shackelford, Aaron T. Goetz, and Valerie G. Starratt
109	The thought of future interactions makes people more aware of their reputation, especially when it's for future cooperation.\n\nThe opposite is also true, anonymity creates selfishness and antisocial behaviors.\n\nThe commitment to future interactions gives rise to group commitment. \n\nIndividuals do public performances to show their attachment to the group.\n\nSocial familiarity gives rise to long future commitment and an increase in the likelihood of pro-social behaviors. 	Future interaction -> More cooperation	Prentice-Dunn & Rogers, 1980; Zimbardo, 1970\nManaging Ingroup and Outgroup Relationships - AVAILABILITY FOR FUTURE INTERACTION - ROBERT KURZBAN and STEVEN NEUBERG\nDrunk, powerful, and in the dark how general processes of disinhibition produce both prosocial and antisocial behavior - JB Hirsh, AD Galinsky, CB Zhong\nThe effects of commitment to future interaction in single plays of three games - E. Allen Slusher, Kenneth J. Roering, and Gerald L. Rose
110	Humans have an inner desire to punish those who enjoy benefits without paying costs, it triggers the emotion of anger.\n\nThis desire doesn't apply when it's children and disabled persons enjoying benefits without paying costs.\n\nThe fitness of a "punisher", someone who puts a cheater back on track, depends on the number of "free loaders" in the current population.\n\nIf there is only a small number of "free loaders" it is advantageous to be a punisher, otherwise it is too costly.	Angers at individuals who enjoy benefits without cost -> recalibrate society with "police" only if small number of "free loaders"	Fehr and Gächter (2002)\nWilbur, Shapiro, Neuberg, Goldstein, & Hofer, 2003\nCottrell & Neuberg, in press; Neuberg & Cottrell, 2002\nManaging Ingroup and Outgroup Relationships - ROBERT KURZBAN and STEVEN NEUBERG 
111	Protecting and defending oneself from threats and attacks is an automatic adapted behavior.\n\nFor instance, we focus and notice directly angry facial expressions, the rapid approach of an object or person, and the sight of weapons.\n\nThose threats trigger strong responses.\n\nIndividuals also consider out-groups as threats, which plays a role in in-group preferences and out-group avoidance.\n\nThe group membership of another person, itself, might trigger the anti-threat mechanism.	Adaptation to danger -> Directly notice threats -> Avoid threats	Schaller & Neuberg, 2003\nManaging Ingroup and Outgroup Relationships - PHYSICAL ATTACK - ROBERT KURZBAN and STEVEN NEUBERG
112	It is instinctive to avoid a person that appears to has contracted a parasite or that is infectious.\n\nIt triggers a feeling of disgust, which is a mechanism to protect individuals in a group from contagion, to avoid the spreading of the disease.	Individual appear contagious -> Protection mechanism -> Triggers disgust in others	Ginsburg & Link, 1993; Kurzban & Leary, 2001; Park, Faulkner, &Schaller,2003;   Rozin,   Markwith,   &   Nemeroff,   1992;   Schaller, Park, & Faulkner,2003
113	The in-group/out-group preferences increase as much as the individual dependency on the group.\n\nThe in-group morals weight so much that even un-threatful out-groups can be seen as dangerous if they have different morals.\n\nIt entails conflict in the absence of threats and competition.\nThey become target simply by following their norms.	Individual depends on the group -> In-group bias -> Individual wants conflict with out-groups with different moral values	Gil-White (2001)\nManaging Ingroup and Outgroup Relationships - PHYSICAL ATTACK - ROBERT KURZBAN and STEVEN NEUBERG
114	Inter-group conflict is a male phenomenon.\n\nIT rises when males want the reproductive benefits of other groups.\nReproductive benefits that are closely related to resources.\n\nThey put the risks aside and fight.	Male want females from other groups -> Inter-group conflicts	Tooby and Cosmides (1988)
116	Status is tied with the ability to survive, reproduce, take care of yourself, and to take care of your offspring.	Status -> Related to the basic survival	Altmann et al., 1996\nDawkins, 1982
119	Norms are shared information inside the group.\n\nThey are transferred between the members so that they copy and adhere to them, facilitating group cooperation and coordination.\n\nStraying from the norms is subject to rejection, disgust, and prejudice.\nThere is an urge to separate this type of individual from other members.	Norms -> Spread in group -> Better cooperation and homogeneity	Boyd & Richerson, 1985\nBiernat, Vescio,Theno, & Crandall, 1996; Katz & Hass, 1988; Rokeach, 1972\nRozin, Haidt, & McCauley, 2000; Rozin, Lowery, Imada, & Haidt, 1999
120	Social dominance is the first social organization a child learns.\n\nThe way it's first perceived affects the child's personality throughout life.\n\nDistinction between facial expressions is also learned at an early age.	Children -> Learn social hierarchy from a young age	Frankel & Arbel, 1980; Strayer & Trudel, 1984
121	Behaviors related to social power and dominance:\n\n* Learning others behavior\n* Monitoring others\n* Influencing and predicting others\n* Being good at persuading and deceiving others	Social dominance -> Good at handling others	Hall, Halberstadt, & O’Brien, 1997; Keating & Heltman, 1994
122	Societies with rigid rules are more stable; they are characterized by rigid social hierarchies.\n\nThe drawbacks are the loss of individuality and individual freedom.\nPeople have an obligation to learn and follow the rules.\n\nThere are more stereotyped persons in those societies.\nEveryone is typical and falls into a category.	Rigid society -> More stability and followers of norms -> Less freedom -> Less individuality and free thoughts	CoatesMarkel, 1997; de Waal, 1982\nCummins, 1996a, 1998, 2000\nThe differences between “tight” and “loose” societies - Pertii J. Pelto
123	The view on how resources are shared depends on the person's own status:\n\n* If someone is socially dominant they will prefer hierarchical relationships and distributions based on merit.\n\n* If someone is low on social dominance they will favor social qualities and distributions based on needs.	Sharing resources -> Depends on the person's status	Pratto, Tartar, & Conway-Lanz, 1999\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
124	To go against the norm and hierarchy people have to use deception.\n\nThe norms usually make such behaviors forbidden and punishable.\nThus, they hide their behavior from others and avoid attracting attention.\n	Go against the norm -> Creation of secret	Cummins, 1996a, 1998, 2000
125	The status of an individual raises by maintaining alliances with others.\nThose alliances are kept through reciprocal obligations.\n\nStatus might also raise when someone challenges a high ranking individual and wins.	Status raise -> Keep alliances -> Win over others with higher status	Chapais, 1988, 1992; Harcourt & de Waal, 1992; Riss & Goodall, 1977; Uehara, Hiraiwa-Hasegawa, Hosaka, & Hamai, 1994\nDawkins, 1976\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
126	Social reasoning emerges early in development.\n\nLike adults, children also have a firm grasp of the implications of socially prescriptive rules.\n\nThey also learn early how to bent and manipulate those rules.	Children -> Learn early about social rules	Sodian, 1991\nDominance, Status, and Social Hierarchies - HOW DEVELOPMENT INFORMS EVOLUTIONARY EXPLANATIONS OF SOCIAL DOMINANCE EFFECTS - DENISE CUMMINS
127	A loss of status or facing someone with better status induces many different feelings:\n\n* A deep sense of shame\nIt is characterized by the avoidance of eye contact, lower chin, avoiding social encounter, etc..\n\n* Rage and depression, or submissive behavior\nUsed to appease others and avoid future humiliation.\n\n* Envy\nDue to a loss or inequality in status.\nThis specific emotion can trigger destructive behavior, especially if the subject field is one that the individual is deeply involved.\n\n\nThe degree to which someone is satisfied with one-self has also an effect on status, the so called self-esteem.\n\n\nPeople prefer others that make them feel good about themselves.\n\nBy consequence, the ones that are targets of envy make others feel bad: The discomfort they entice triggers others to attack their status.\nFor example using: gossip, malicious acts, etc..	Loss or difference in status -> Strong conflicted feelings between individuals	Wicker, Payne, & Morgan, 1983\nGilbert, 1990\nForrest & Hokanson, 1975\nRamson, 1988\nFeather (1994)
128	The concept of memes.\n\nDefinition: A meme is a units of imitation which can replicate itself in cultures the same way genes do in nature.\n\nThis concept explains cultures, languages, and norms.	Memes -> Social genes	Dawkins, 1976\nBlackmore, 1999\nDonald (2001)
129	Attractive females focus more on men with masculine faces.	Attractive women -> Prefer Masculine men	Little, Burt, Penton-Voak, & Perrett, 2001\n
130	Biases are design features.\n\nThey arise when no evidence of logic is found and work as shortcuts, which are valid in many cases.\n\nThey are useful in situations where there are processing limitations or processing all available choices is too costly.\n\nThey are also created for tasks that the mind has not been designed to conceive, abstract concepts.\n\nIf processing is not costly than the bias is removed if and only if it affects the reproduction process.	Biases -> Shortcut to processing information	Tversky and Kahneman 1974, p. 1124\nFehr & Gächter, 2000; Fehr, Gächter, & Kirchsteiger, 1997; see also Güth & van Damme, 1998\nTversky & Kahneman, 1974; see Gilovich, Griffin, & Kahneman, 2002, for a recent review; see Kahneman, 2003, for a recent theoretical treatment\nArkes (1991)
131	Respecting authority figures is learned at an early age.\n\nIt stays true throughout life: adults also respect authority figures.\n\nThey influence and intimidate people.	Children -> Influenced and intimidated by authority figures	Milgram’s (1974)\nOsherow, 1995\nThe Evolution of Morality - DENNIS KREBS
162	First born have in average 1 IQ point higher than other siblings.\nThis might be due to the fact that first born have/had to take care of other siblings.	First born -> Take care of future siblings -> Higher IQ	Sibling constellation, creativity, IQ, and academic achievement - VG Cicirelli\nBirth order and intelligence - LL Thurstone, RL Jenkins\nThe relation of measured intelligence to birth order and maternal age - RG Record, T McKEOWN
43	In a society where there is a lot of female infidelity men invest more in their sisters' children than in their own.\n\nThey have more proofs that they share genes with their sisters than their children.\nWhen women cheat there is low proof of paternity.\n\nThis mechanism redirects the resources unto someone sharing at least 1/8th of his genes (Hamilton Investment Theory).	Female infidelity in society -> Male invest in sister's children\t\t	Cooperation and Conflict among Kin - PARENTAL PROBABILITY AND MORE DISTAL KIN RELATIONS: THE LATERALITY BIAS - JEFFREY A. KURLAND and STEVEN J. C. GAULIN\nMatriliny as daughter-biased investment - CJ Holden, R Sear, R Mace\nOn the impact of sex and birth order on contact with kin - CA Salmon\n
133	Positive illusion: The inner bias to overstate oneself.\n\nIt can be used to appease one own mind or to gain trust from others.	Positive illusion -> People see themselves better than they are	Taylor & Brown, 1988\nAlicke, 1985\nWeinstein, & Abramson, 1979; Rudski, 2000\nSedikides, Gaertner, & Toguchi, 2003
134	Depending on the situation, the way we think of something differs.\n\nIt is contextual.\n\nUnder pressure we cannot think of all the complex alternatives and thus use shortcuts or simple rules based on past scenarios, we use biases.\n\nBiases are multiple rules defined for multiple situations.\n\nIt has in assumption that a false positive is always better than a false negative.\n\nFor example: People avoid eating the same food if they get sick right after eating it. Even in the case where the sickness wasn't related to the food.\nThe opposite case, where it was indeed induced by the food, can be fatal.	Bias -> Set of generic rules -> Better false positive than false negative	Guthrie, 1993; Haselton & Buss, 2000; Öhman & Mineka, 2001\n
135	Low status individuals allocate more time and energy to social judgments than do more powerful individuals.	Low status -> Focus more on social judgement	Keltner, Gruenfeld, & Anderson, 2003
136	Out-groups are seen as more dangerous, mean, and less generous than the group one belongs to.	Bias towards out-group -> Dangerous and Selfish	Brewer, 1979\nQuillian & Pager, 2001\nThe Evolution of Cognitive Bias - MARTIE G. HASELTON, DANIEL NETTLE, and PAUL W. ANDREWS
137	Morality is a mean to keep the social equilibrium and cooperation by fighting against defectors.\n\nWe discern 5 stages of morality:\n\nStage1:\n* Avoid punishment\n* Respect authority\n* Avoid Damage\n\nStage2:\n* Exchange\n* Making deals\n\nStage3:\n* Upholding mutual relationship\n* Having roles (trust, respect)\n* Being viewed as good\n* Showing concern\n\nStage4:\n* Maintaining a social system\n* Obeying rules and laws\n\nStage5:\n* Contributing to society\n* Fulfilling social obligations freely agreed upon; stands on the greatest * good for the greatest number\n* Equality	Morality -> Social equilibrium	Colby & Kohlberg, 1987, pp. 18-19
138	Women tend to make more stage 3 moral judgments.\n\nThis means:\n\n* Upholding mutual relationship\n* Having roles (trust, respect)\n* Being viewed as good\n* Showing concern\n\nThis is explained by their role in nurturing and keeping a good social circles around them.	Female -> Moral judgements based on role and concerns	Gilligan (1982)\nCare-oriented moral reasoning and prosocial behavior: A question of gender or sex role orientation - I Söchting, EE Skoe, JE Marcia
139	In the inculcation of morality conditioning, vicarious learning, and  the identification plays a bigger role than social learning and reasoning. \n\nSocial learning and reasoning are overrated, they aren't as important as it seems in the transmission of norms.\n\nLet's also note that societies are supported by reward and punishment.\nIf there are no punishment there will always be defectors breaking rules, behaving immorally, and cheating.\nIt is advantageous for them.	Morality -> Based on conditioning	Aronfreed, 1968; Freud, 1926; Higgins, 1987; Kohlberg, 1984; Mead, 1934\nThe Evolution of Morality - DENNIS KREBS\n
140	In dangerous situations people prefer to stay in groups or crowds.\nIt makes them feel secure because of the loss of individuality it produces.	Danger -> Crowd/Group makes people feel better	Wisman and Koole (2003)\nTaylor (2000)
141	Women prefer to tend and befriend rather than fight or flight.\nFor men it's the opposite.	Women/Men -> Friends/Fight	Taylor and colleagues (2000)
143	Parents invest in children that have the most profitable return  reproduction wise.\n\nThere is a difference in how the sex of the children affect this investment.\n\nBoys:\nIn the future they can have many offspring with multiple partners. To achieve this they have to compete against other males for mates.\n\nGirls:\nIn the future they are assured offspring but are limited in the number of children they can have.\n\nThere is a tendency for couples with abundant resources to invest more in boys and for resource-poor couples to invest in girls.	Parental investment -> Choose according to reproductive success	Alexander, 1979; Fairbanks, 1993\nDaly & Wilson, 1988; Trivers & Willard, 1973
144	Humans spend more time "pre-reproductive" than any other mammal.\n\nThis is an indication of how important it is for children to learn fast and focus on learning social rules and interactions rather than building their body.	Long time to become reproductive -> Learn social rules	Tomasello, 1999\nEvolutionary Developmental Psychology - DAVID F. BJORKLUND and CARLOS HERNÁNDEZ BLASI
145	When being part of a group there is always an in-group favoritism and out-group fear and hostility.\nApart from that there is also a feeling of reciprocity with the group and a will to seek status within it.	In-group -> Reciprocate with them -> Want to raise status compared to them	Harris (1995)
146	Children learn more through games than through normal educative methods.	Chidlren -> learn more from games	Steen & Owens, 2001\nHyson, Hirsh-Pasek,& Rescorla, 1990). Geary (2005)
147	In a group with a high number of assertive and dominant extrovert, there is a benefit for individuals of low extroversion (See game theory).\n\nThe opposite is also true.	Equilibrium in group depending on personality types	Figuredo and King (2001)\nEvolutionary Personality Psychology - AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS
160	Sexual intercourse issues between the genders:\n\n* Men have problems with premature ejaculation.\nIt might have been favored because of the advantage it gives when the time for copulation is limited, or stressful, or dangerous.\nThis problem is more frequent in young, fearful, and stressed men.\n\n* Women have the opposite problem.\nThey have issues reaching orgasm, taking more time to achieve it.\nIt might have been favored so they have fewer children and focus on choosing only the best partners, the ones who take the time to please them.	Premature ejaculation and lack of women orgasm -> Stress and investment	Troisi, 2003\nSymons, 1979\nEvolutionary Psychology and Mental Health - RANDOLPH M. NESSE
149	After mate choice, a mental mechanism takes place in ones mind to prevent wandering from the current mate.\n\nWhen committed to the relationship, there's a positive bias toward the partner and a negative on towards potential mates.	Committed to relationship -> Positive bias towards partner	Simpson, Gangestad, & Lerma, 1990\nR. S. Miller, 1997\nEvolutionary Social Psychology - DOUGLAS T. KENRICK, JON K. MANER, and NORMAN P. L
159	Seeing another person express fear in face of a situation creates a bias in the individual. The next time there's an encounter it's more probably that it'll induce fear and/or avoidance.\n\nPost traumatic stress disorder: A constant stress and fear that emerges from any cue or recurrent events that resemble a past traumatic event.	See on person fear -> Build bias for own fears	Mineka, Keir, & Price, 1980\nBreslau, Davis, & Andreski, 1995
156	As a general appreciation of personality:\n* Men prefer tender-minded partners.\n* Women prefer tough-minded partners.\n\nThe couple marital satisfaction is lower when the man in the couple has high libido.\nThis fact is unrelated to the woman's libido.\n\nDissimilarities, the differences in personality between partners, is correlated with divorce.	Men/Women preference -> Tough/Tender, Men high libido -> Marital unsatisfaction	Buss (1984)\nNovgorodoff (1974)\nEysenck and Wakefield (1981)\nLum & Curran, 1975\nKeller, Thiessen, and Young (1996)
150	Important facts about memory:\n\n* It maintains items once added to long term memory.\n* It keeps them in a flexible form.\n* It silences irrelevant information.\n\nWe selectively remember information because it is too costly to remember everything.\n\nAn example of this is the childhood amnesia from abuse. It's role is to protect the child from the knowledge that a key caregiver may be a perpetrator. Which is a prerequisite for maintaining a crucial relationship/survival.\n\nWhen missing clues from the past people go back and create steps that could possibly lead to the same judgment, reinforcing the biases and prejudices. This is called the "confirmation bias".\n\nSmall samples of memory act like biases, together they form correlations and shortcuts of thoughts.\n\nIn a world where the environment constantly changes, literally recalling information is unimportant.\n\nWhen making decisions people simply weights the choices against each others.\n\nIt is easier to process and make decisions about information related to ideas that come from a longer evolutionary time than the ones that just recently appeared in the human world.\n\nIt's easier to deal with the fear of fire than the fear of walking on the highway.	Memory -> Remember what is important -> Shortcut for future choices	Kareev, 1995a, 1995b, 2000; Kareev, Lieberman, & Lev, 1997\nAtkinson & Shiffrin, 1968\nBartlett (1932/1995)\nHertwig, and Gigerenzer (2000)\nEvolutionary Cognitive Psychology - PETER M. TODD, RALPH HERTWIG, and ULRICH HOFFRAGE
151	It has been shown that women have a reproductive advantage when their personality is constituted from one of those:\n\n* High neuroticism (emotional disorder/obsession) and low extroversion (introvert)\n* Low neuroticism (less emotional and more calm) and high extroversion (extrovert)	Female reproductive advantage in personality -> High neuroticism + low extroversion or low neuroticism + high extroversion	Personality and reproductive fitness\nLJ Eaves, NG Martin, AC Heath, JK Hewitt, MC Neale 
152	The difficulty of a woman recognizing and sharing emotions is inversely correlated with the frequency of penile-vaginal intercourse.\n\nThe more a woman has sex the more keen to emotions she is.\n\nMore intercourse is also correlated with better physical and mental health in both sexes.	Women -> More sex -> More open with emotions	Alexithymia is inversely associated with women's frequency of vaginal intercourse - S Brody 
153	It has been shown that men have a less of a reproductive advantage when they show extroversion and social assertion.\nThose factors are inversely correlated with fertility.\n\nMoreover, men from infertile coupled scored low on critique anxiety, low on showing guilt, low on norm orientation, and an inability to resist demands.	Men -> Extrovert -> Low fertility	Hellhammer, Hubert, Phil, Frieschem, and Nieschlag (1985)
154	Extroversion is correlated with promiscuity and inversely correlated with nervousness and prudishness.	Extrovert -> Promiscuous	Eysenck (1976) and Wilson (1997)
1	Happiness is correlated with fitness.\nFitness is usually defined as the surviving abilities and fecundity.\n\nOn the opposite, depression and anxiety are correlated with heart diseases, asthma, peptic ulcers, and headaches.\n\nIt works in both ways, the happier you are the more fit you are likely to be and the more fit you are the happier you are.	happiness -> fitness	Evolutionary Personality Psychology\n(AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS)\nhttp://www.u.arizona.edu/~ajf/pdf/Figueredo,%20Sefcek,%20Vasquez,%20Brumbach,%20King%20&%20Jacobs%202005.pdf\nThe influence of anxiety and depression on outcomes of patients with coronary artery disease - JL Januzzi, TA Stern\nAnxiety and depression are associated with unhealthy lifestyle in patients at risk of cardiovascular disease - F Bonnet, K Irving, JL Terra, P Nony, F Berthezène
157	Natural selection aims for reproduction success, not health nor cooperation.\n\nA gene that raises reproductive success but lower longevity will spread.\n\nThis is an indirect explanation to bitter competition, envy, greed, sexual desire, and jealousy.	Genes spread only for reproductive success and nothing else	Buss, 2000\nCronin, 1991; Daly & Wilson, 1983; Geary, 1998; Kruger & Nesse, 2004
158	Stress in early development is related to mental disorder and reduction of fetal brain development.\n	Stress early in life -> Mental disorders	The potential influence of maternal stress hormones on development and mental health of the offspring - M Weinstock
21	Children absorb what their parents say and do.\n\nOne of the important part of the learning phase is to take part in predator/prey games. They mentally prepare for real life scenarios.	Children -> predator/prey games as preparation\t	Hunter-Gatherer Childhoods: Evolutionary, Developmental, and Cultural Perspectives (Evolutionary Foundations of Human Behavior\nThe Handbook of Evolutionary Psychology - Adaptation to Predators and Prey\nModeling Behavior for Children Has Long-Lasting Effects\nhttp://psychcentral.com/news/2010/05/27/modeling-behavior-for-children-has-long-lasting-effects/14139.html
8	Maternal nagging/depression/unhappiness, is correlated to child aggressiveness.\nIt is a sign of low resources and investment, the child grows learning that the resources are scarce and that the world is a dangerous place.\nThe child wants attention and bounding.	Mother nags -> Child aggressive	The connection between maternal depression, parenting, and child externalizing disorders\nhttp://ir.uiowa.edu/cgi/viewcontent.cgi?article=1618&context=etd\n\nParenting Practices and Child Disruptive Behavior Problems in Early Elementary School\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2764296/\n\nTHE DEVELOPMENT OF AGGRESSIVE BEHAVIOUR IN CHILDREN AND YOUNG PEOPLE: IMPLICATIONS FOR SOCIAL POLICY, SERVICE PROVISION,AND FURTHER RESEARCH\nhttp://www.community.nsw.gov.au/__data/assets/pdf_file/0017/321740/aggression_discussionpaper.pdf\n\nTHE RECIPROCAL RELATION BETWEEN MATERNAL DEPRESSIVE SYMPTOMATOLOGY AND ADOLESCENTS’ AGGRESSION: THE ROLE OF PARENTING PRACTICES AND FAMILY FUNCTIONING\nhttp://scholarscompass.vcu.edu/cgi/viewcontent.cgi?article=3721&context=etd
23	In fearful or dangerous situations people seek security and refuge.\n\nThey want certainty because the outcomes frightens them.\n\nIn those cases, they prefer to take decisions based on statistics and more health-promoting: They want to avoid risks.\n\nThey are more conscientious.\nConscientiousness correlates with longevity.	Fear -> Conscientiousness -> Refuge&Security	The Psychology of Personality: Viewpoints, Research, and Applications - Friedman 2002\t\t\t
25	Individuals are motivated to keep what is valuable under protection.\n\n* Their status\n* Their material resources\n* Their mating resources\n\nHow much something is worth depends on the society. It is referred to as relative deprivation.	Material -> Protect valuables\t\t\t	Adaptations to Dangers from Humans - THE COEVOLUTION OF DANGERS FROM HUMANS AND DEFENSES AGAINST THEM - THEFT AND CHEATING - JOSHUA D. DUNTLEY
26	Female have an "auto-abortion" mechanism to avoid the wasteful investment in offspring that would die young.\n\nThe chance of miscarriage raises because of stress, mood swing, or bad mother of child health conditions.\n\nIt is both to keep the mother from bringing and weak child into the world and to keep her from investing too much in her child when the surrounding environment is too dangerous.	Female -> Miscarriage correlated with danger\t\t\t\t	Stressed mothers may risk early miscarriage\nhttps://www.newscientist.com/article/dn8750-stressed-mothers-may-risk-early-miscarriage/\n\nNew insights into mechanisms behind miscarriage - Elisabeth Clare Larsen, Ole Bjarne Christiansen, Astrid Marie Kolte and Nick Macklon \n\nPregnant Monkeys Miscarry to Avoid Infanticide\nhttp://www.livescience.com/18629-pregnant-monkeys-miscarry-avoid-infanticide.html
35	Women prefer men that have a combination of high testosterone and beauty.\n\nA high testosterone level is correlated with physical imperfections and deficits in the immune system.\n\nHowever, if a man is "beautiful", as in he has a high degree of symmetry, and masculine he is perceived as more attractive. He has the advantage of high testosterone without the drawbacks.	Women -> Prefer High testosterone + beauty	Physical Attractiveness in Adaptationist Perspective - LAWRENCE S. SUGIYAMA
163	r strategy:\n* Excessive resources, quantity over quality\n* Aversion to competition\n* Promiscuity\n* Low investment\n* Single parenting and little care for offspring\n* Father absence\n* Early sexual maturity\n* Low in-group loyalty\n* High level of sex hormones and fertility\n* Aggressive and risk takers\n* Attracted to short term but long term detrimental strategies\n* Correlated with criminality and violence\n* More envy and willingness to break rules (See status)\n* Less optimism and diminished reward incentives this correlates with anxiety, depression, and neuroticism\n\nMore frequent in dangerous environment but always has an opportunity for expansion.\nChildhood stress is linked to an r-strategy.\n\n\nK strategy:\n\n* Scarce resources, quality over quantity\n* Embrace competition\n* Delayed, monogamous sexuality\n* High investment and dual parenting\n* Small number of offspring\n* Care for offspring\n* Late sexual maturity and activity\n* High in-group loyalty\n* High level of empathy\n* Tendencies toward feeling of disgust (see Morals)\n* Desire to win in-group status\n\nMore frequent in safe environments.\n\nThere should be an equilibrium between the number of K and r individuals in a population. Otherwise the system looses its stability.	Social strategies explained with r/K theory	From Quantity to Quality of Life: rK selection and human development - F Heylighen, J Bernheim\nSexuality, delinquency and r/K reproductive strategies: Data from a Canadian University sample\nAuthor links open the overlay panel. Numbers correspond to the affiliation list which can be exposed by using the show more link - Anthony F. Bogaert, J. Philippe Rushton\nThe r - K Continuum and the Relative Effectiveness of Sexual Selection - Denson Kelly McLain\nPlacing intelligence into an evolutionary framework or how g fits into the r–K matrix of life-history traits including longevity - JP Rushton\nr-and K-selection revisited: the role of population regulation in life-history evolution - D Reznick, MJ Bryant, F Bashey\nThe K-factor, covitality, and personality - AJ Figueredo, G Vásquez, BH Brumbach\nAn evolutionary perspective on human fertility - K MacDonald\nDo rK strategies underlie human race differences? A reply to Weizmann et al - JP Rushton\n
164	When a child lack support from his mother or is restricted and unable to explore the world he becomes more stressful.(neglect or over-concern)\n\nStress affects the development of the consolidation of memories, and thus the affect how experiences are build in the brain.	Childhood stress -> Neglect or over-concern from mother	The influence of mothers on their children's health attitudes and behavior - D Mechanic\nChild-mother attachment and the self in six-year-olds - J Cassidy\nhttps://en.wikipedia.org/wiki/Maternal_deprivation
165	Pregnancy symptoms such as nausea that happen during the first developmental phase of pregnancy are mechanisms to keep women from eating food that have a high amount of bacteria.\n\nThey usually avoid smelly food and prefer the food that removes pathogens.\nFor instance: pickles.	Pregnancy symptoms -> Protect children during development	Nausea and vomiting of pregnancy in an evolutionary perspective - PW Sherman, SM Flaxman
166	Women have redder lips during ovulation.\nMen are more attracted to the color red on women.	Ovulation -> Redder lips -> Men attracted	Romantic red: red enhances men's attraction to women- AJ Elliot, D Niesta\nColor and women attractiveness: When red clothed women are perceived to have more intense sexual intent - N Guéguen
44	The offspring survival rate and quality depends directly on parental investment.\n\nIn a society where the cost of investment in children is high and the cost of having other mates is low there is more male abandonment.\nThe men are more likely to leave the couples.\n\nOn an opposite side the notion of concealed ovulation, dispersed mates, and low investment cost are correlated with high paternal investment.\nIn this case it is favorable for the men to invest in the children.	Parental investment -> Survival of children\t\t\t\t	Cooperation and Conflict among Kin  - JEFFREY A. KURLAND and STEVEN J. C. GAULIN\nThe evolution of monogamy and concealed ovulation in humans - L Benshoof, R Thornhill\nSexual selection, paternal care, and concealed ovulation in humans - BI Strassmann\n
55	A cognitive process we use to choose a mate is called the "comparison level":\n\nWe compare standards and expectations, what we think we "deserve", with our perception of the current relationship.\n\nMoreover, we mix this with the comparison between all of the available choices of partners. This is referred as "comparison level alternatives".	Mate choice -> Compare on expectations	Commitment, Love, and Mate Retention - RELATIONSHIP PROCESSES AND THE LOVE SYSTEM - LORNE CAMPBELL and BRUCE J. ELLIS
60	In the eye of step parents children are seen as a cost rather than benefit.\n\nThey are 70 times more likely to abuse them and 100 times more likely to fatally abuse them.	Step parents -> See non blood related as burden -> More likely to abuse children	Adaptations to Dangers from Humans - EVIDENCE OF ADAPTATIONS FOR HOMICIDE AND HOMICIDE DEFENSES - JOSHUA D. DUNTLEY\nRisk of maltreatment of children living with stepparents - M Wilson, M Daly
63	The advantages of monogamy:\n\nFor males:\nIt enhances male alliances.\nIt assures a modest reproductive success.\nIt gives sexual intercourse ad-libitum.\nIt increase the certainty of paternity.\nIt gives the monopoly of one woman reproductive career.\nIt enhances the survival of offspring.\n\nDisadvantage:\n\nThere's a price to pay with mate guarding against cuckoldry and possibly wasted parental efforts.\n\nFor females:\n\nIt let her invest more time and energy on her young.\nIt gives her extra calories and protection from aggression.\nIt increases her offspring survival rate.\n\nDisadvantage:\nA lower diversity of children genetics.\nShe expose herself to the danger of jealousy (jealousy motivated violence): which has a high risk of involving violence from her male partner.\nShe has to guard her partner from younger and more fertile women.	Monogamy -> Creates a stability	Daly & Wilson, 1988\nAggression - MALE-FEMALE PARTNER AGGRESSION - ANNE CAMPBELL\nMale reproductive strategies and social bonds - RC Connor, AJ Read\nParental investment: The hominid adaptation - JB Lancaster, CS Lancaster, D Ortner
77	A list of the long term effects of stress (cortisol):\n\n* Immune deficiency\n* Cognitive impairment\n* Inhibition of growth\n* Delayed sexual maturity\n* Damages to hippocampus\n* Psychological maladjustment\n\nLet's name a few example of long term stress: a divorce, the death of a loved one, the loss of job, etc..	Long term effects of stress -> Degrade the individual	Herbert & Cohen, 1993; Maier, Watkins, & Fleschner, 1994\nHormones and the Human Family - STRESS RESPONSE MECHANISMS AND THEORY - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nStress and glucocorticoids impair retrieval of long-term spatial memory - AS Clarke, DJ Wittwer, DH Abbott\nLong-term effects of social stress on brain and behavior: a focus on hippocampal functioning - B Buwalda, MHP Kole, AH Veenema\nEffects of stress throughout the lifespan on the brain, behaviour and cognition - SJ Lupien, BS McEwen, MR Gunnar
72	In a life or death situation kin altruism is curvilinear (U-shaped) depending on age.\nMeaning that we help more the younger and older aged people than the rest.\n\nWomen are also favored over males in the case where they are younger than 45yo. If not they receive the same treatment.\n\nAltruism with others is also possible if the cost and risks of investment are low (see Hamilton's rule).\n\nThe overall rule is that help is directed at advantaging the vulnerable.\n\nHelping others is also a sign of abundance and power.\nMales that are altruist show those features.\n\nDoing the opposite, not helping at all, can hurts someone's status. Showing the signs of selfishness.	Altruism -> Help fecundity then help vulnerable people -> Sign of abundance	Buss, 2003\nAltruism and Genetic Relatedness - COMPUTING THE COSTS AND BENEFITS OF ALTRUISM - EUGENE BURNSTEIN
82	Mother and child learn very soon to recognize each others.\n\nAn infants recognizes his mother's voice 24h after birth, the odor of her breasts after 6 days, and her face after 2 weeks.\n\nA mother recognizes her infant's face 5h after birth, and the infant's voice 2 days after birth.	Mother and child soon after birth bound with each other	Altruism and Genetic Relatedness - SINGLE LOCUS KIN RECOGNITION SYSTEMS - EUGENE BURNSTEIN\nRecognition of maternal axillary odors by infants - JM Cernoch, RH Porter\nMother-stranger face discrimination by the newborn - TM Field, D Cohen, R Garcia, R Greenberg\nMother‐infant skin‐to‐skin contact after delivery results in early recognition of own mother's milk odour - K Mizuno, N Mizuno, T Shinohara, M Noda
86	It is risky for a women to copulate, get pregnant and be left alone to take care of the child.\nConsequently they refuse to copulate, use "coyness" and "domestic-bliss", to spot signs of infidelity and recognize the qualities of her mate before opening her bed.\n\nFor example, women want to be sure of certain qualities, assess them before rearing a child: Nest, food, security.\n\nMales are more tempted to leave after copulation and this sort of mechanism prevents that. It makes sure they invest enough and are less likely to depart.\n\nOn a side note, liars use this method to get "free" sex from women.\n\nOn the men part, they can also use "long engagement periods" to make sure the women won't sway or they are already pregnant from another man's children.\n\nMoreover, the more time and energy a couple spends together, the less likely they are to break up. The cost of leaving is higher than the cost of staying.	Couples spend a preliminary time together to access each others	The selfish gene - Richard Dawkins\nModeling mate choice in monogamous mating systems with courtship - J Simão, PM Todd
96	There are two type of impulsivity: behavioral and cognitive.\n \nBehavioral impulsivity is related to violent offenses and antisocial behavior while the cognitive one is not.	Behavioural impulsivity -> Agressivity	Aggression - ANNE CAMPBELL\nEvaluation of behavioral impulsivity and aggression tasks as endophenotypes for borderline personality disorder - MS McCloskey, AS New, LJ Siever, M Goodman\nThe influence of serotonin-and other genes on impulsive behavioral aggression and cognitive impulsivity in children with attention-deficit/hyperactivity - RD Oades, J Lasky-Su\nImpulsiveness and aggression - ES Barratt, J Monahan
101	Household factors to raise stress (cortisol):\n\n* Children living in houses with quarreling and fight have abnormal peaks and fluctuations of cortisol.\n\n* When the father leaves the house and returns the cortisol level of the children raises and falls back upon return.\n\n* Traumatic events increase cortisol by 100% to 2K% compared to normal raise, which varies between 10% to 100%.\n\nChronic stress has long lasting risks on children:\n\n* It blunts the responses to normal and useful stress.\n\n* The chronically stressed children have a bellow average cortisol level during "normal" situation and appear socially "tougher".	Unstable household in childhood -> Chronic stress -> Blunt Adults	cf. Long, Ungpakorn, & Harrison, 1993\nHormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\nChild abuse and stress disorders - MF Olive\n
102	Factors that reduce stress in children:\n\n* Affectionate interactions\n\n* Support from parents\n\n* Availability of parents\n\n* Maternal care: it affects the child the most - A mother living in a stable and supportive household makes the child more relaxed.\n\n* Paternal care: indirectly provides benefits to the child by supporting the mother.	Father supports mother -> Mother calm -> Children less stressed	Belsky, Steinberg, & Draper, 1991; Flinn, 1992; Hurtado & Hill, 1992; Lamb, Pleck, Charnov, & Levine, 1987;Scheper-Hughes, 1988\nHormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE
104	Detecting cheaters is innate to humans.\nIt is present at an early age in children and is even present in schizophrenics.\n\nWe mean by cheaters, anyone that violates a rule.\n\nIf it is in a non-intentional or natural way, people tend to be more willing to accept it.\n\nHowever, individuals still notice the "injustice" even in the case of the non-intentional acts.	Detect cheaters -> Willing to accept non-intentional acts	Maljkovic (1987)\nNeurocognitive Adaptations Designed for Social Exchange - LEDA COSMIDES and JOHN TOOBY\nCheater detection is modified by social rank: The impact of dominance on the evolution of cognitive functions - DD Cummins
117	Because of the importance of status, changes in it directly affect the individual's physiology by the medium of hormones.\n\nChanges in status can mean the difference between life or death.\nThe body responds to it with stress: cortisol and adrenaline.\n\nThe short term effects are to mobilize energy taken from the fat storage and to make the heart beat fast, pumping blood throughout the body.\n\nThe long term effects are to alter the fat storage mechanism, create an hormonal imbalance, sleep disturbance, and altered mood.	Status -> Difference between life and death -> Responds with stress	McEwen & Wingfield, 2002\nDominance, Status, and Social Hierarchies - SOCIAL STATUS AND NEUROENDOCRINE RESPONSES - DENISE CUMMINS\n
118	A change in status might induce stress or it might not in some cases.\nThe opposite is also true: Stress can lower someone's status, and being relaxed can rise someone's status.\n\nHow an individual reacts in a particular situation reflects their social status and their quality of life.\n\nFor example:\n\nCompetitive games and contests psychologically feel like real contests between rivals:\nThey include the fight for status in the hierarchy and thus induce stress.\n\nPoverty is highly correlated with stress because of its effect on status. Persons "relatively depreived" have a higher cortisol level.\n\n	Status <-> Stress	Kapuku, Treibner, & Davis, 2002; Lupien, King, Meaney, & McEwen, 2001\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
132	Social/Game theory is an important field related to evolutionary psychology.\n\nIt involves studying the evolution of social behaviors in game like environments. Because game scenarios are like real social conflicts it can be applied to group dynamics.\n\nOne of the best strategy is the "Tit for tat" which is a winner in most populations.\nIt consists in acting "kindly" on first encounter and "roughly" if the partner doesn't cooperate.\n\nThis type of strategy is called an altruistic strategy.\n\nAltruistic strategies open the door for selfish ones to flourish.\nIn a population where tit for tat won over the equilibrium, totally altruistic strategies (no reprehension at all) can spread and in theory would not be distinguishable from tit-for-tat.\n\nIn this case it would leave an advantage to abusers to abuse the totally altruistic strategists.\n\nPeople can assess if another person will cooperate by checking their status, norms, and reputation or by using their social biases.\n\nAll in all the composition of a population affect the dynamics and strategies the people can take.	Altruistic strategies -> Leave room for selfish ones if no policing	Tit for tat in sticklebacks and the evolution of cooperation - M Milinski\nThe selfish gene - Dawkins\nTrivers (1971)\nAxelrod and Hamilton (1981)
142	The role of female orgasm is still unclear.\nHowever studies have shown that if it happens 1 min before or 45 min after ejaculation there is a higher chance of retaining sperm.\n\nIt is hypothetical that this will result in a bigger likelihood of conception.\nRetaining sperms doesn't mean a higher chance of conception.\n\nThe concern men show about whether their partner achieves orgasm or not might signify that female orgasm has an evolutionary role.	Female orgasm -> Retain sperm	Pound & Daly, 2000\nBaker and Bellis (1995)\nPound, 1999; Zavos, 1988\nThornhill et al., 1995
155	The most desired traits in partners are:\n* Kindness\n* Understanding\n* Intelligence.\n\nOther desired traits:\n* Considerate\n* Honest\n* Affectionate\n* Dependable\n* Interesting to talk to\n* Loyal\n\nSpecific traits for women:\n* Physical attractiveness\n* Good cook\n* Frugal\n\nSpecific traits for men:\n* Good earning\n* Dependable\n* Ambitious\n* Good family background\n* Altruism\n* Tall\n\nIt's also important to note that individuals prefer similarity mating, people with the same traits, more than complementary mating.\n\nThe theory behind similarity mating or genetic similarity theory is the following:\n\nIf the phenotype matches the persons are more close genetically (Identity by State) and thus preserving the coherence of their genome.\nIt consequentially increases the relatedness of parents to children.\n\nOn a side note, older couples prefer choosing partners that are less similar to themselve.	Choose mate with positive traits that go along with their own	Buss (1984)\nRushton, 1989\nvan den Berghe, 1983\nGlazer, 1975\nAltruism and Genetic Relatedness - EUGENE BURNSTEIN
27	A stepparent is a risk factor for a child.\nStatistics show that there are 4 to 10 times more infanticides in home where children live with stepparents.\n\nChildren have a set of specific behaviour they show with stepparents:\n* They keep a low profile\n* They help the stepparents to gain their trust\n* They try to attract attention from their genetic parent, particularly with the mean of dangerous and self-harming behaviours.	Children -> More danger from stepparents	Child abuse and other risks of not living with both parents - H Temrin, S Buchmayer\nChildren killed by genetic parents versus stepparents - GT Harris, NZ Hilton, ME Rice, AW Eke\nStepparental behavior as mating effort in birds and other animals - S Rohwer, JC Herron, M Daly - Evolution and Human Behavior, 1999 - Elsevier
148	Personality is a mix of the following:\n\n* A range of heritable alternatives mechanism to deal with the world.\n\n* Traits created by situation dependent mechanism.\n\n* A momentarily calibration to the events or environment.\n\nNot all strategies/personalities are viable in a population.\nSome populations restrict thoughts because of its environment and norms.\n\nOn the opposite, the more a society allow free interaction between its members, the more there will be different personality types.\n\nLet's also note that if an optimal personality trait emerges in the current environment, no new trait will appear different from it.\n\nFitness traits and personality traits are favored if passed genetically and show a high genotypic variance and variability.\nThis means the traits are clearly discernible, making a difference between individuals that have it and those who don't.\n\nMen tend to have personality traits that go along with dominance, extroversion, and risk taking.\nWomen tend to have personality traits that go along with nurturance and love.\nThose are all clearly discernible traits.	Personality -> A mix of traits viable in the environment -> Traits are chosen according to and equilibrium	Buss, 1991\nBuss, 1997\nMiller (2000)\nWeiss, King, and Enns (2002)\nMacDonald (1998, p. 142)\nWilson (1994) and Figueredo and King (2001)\nEvolutionary Personality Psychology - AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS
\.


--
-- Name: note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('note_id_seq', 166, true);


--
-- Data for Name: notes_categories; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY notes_categories (note_id, category_id) FROM stdin;
1	7
1	14
7	9
7	11
7	22
7	23
7	28
8	11
8	25
8	4
9	4
9	7
9	29
10	4
10	11
10	16
11	1
12	8
13	8
13	9
14	1
14	5
14	6
14	21
15	1
15	2
15	3
15	4
15	15
16	1
16	7
16	14
17	5
17	8
17	21
18	8
18	9
18	10
19	7
19	8
20	2
20	3
20	4
20	8
21	9
21	11
21	16
22	9
22	12
22	26
23	9
23	12
23	26
24	13
24	26
25	2
25	3
25	4
25	7
25	14
25	15
25	26
26	8
26	16
26	25
26	28
27	11
27	16
27	17
27	26
28	2
28	8
28	9
28	14
28	18
28	26
29	3
29	18
29	26
30	2
30	3
30	8
30	18
30	26
30	6
31	1
31	2
31	3
31	5
31	9
31	18
31	26
32	1
32	2
32	8
32	19
33	1
33	3
33	5
33	9
34	1
34	2
34	19
35	2
35	8
35	19
35	20
36	1
36	2
36	8
36	10
36	19
36	20
37	2
37	8
37	10
37	19
38	1
38	4
38	5
38	21
38	23
38	29
38	19
39	5
39	8
39	19
39	21
39	23
39	29
40	1
40	7
40	22
41	2
41	3
41	11
41	16
41	21
41	22
41	23
41	29
42	16
42	20
42	21
42	22
42	26
42	29
43	1
43	2
43	6
43	7
43	8
43	16
43	18
43	23
43	24
43	27
44	1
44	6
44	7
44	11
44	16
44	22
44	23
44	24
44	29
45	2
45	9
45	15
45	19
46	1
46	6
46	16
46	18
46	26
47	6
47	7
47	11
47	16
47	24
47	29
47	1
48	1
48	6
48	11
48	16
48	19
48	24
49	1
49	4
49	6
49	7
49	11
49	16
49	24
50	1
50	4
50	6
50	11
50	16
50	18
50	21
50	24
50	28
51	2
51	19
51	21
52	1
52	2
52	3
52	5
52	8
52	10
53	1
53	2
53	5
53	8
53	21
53	22
54	2
54	6
54	11
54	16
54	22
55	2
55	7
55	19
56	2
56	19
57	2
57	6
57	19
57	22
58	2
58	3
58	6
58	9
58	15
58	16
58	18
58	19
58	21
58	22
52	20
59	4
59	7
59	15
60	11
60	17
60	27
61	4
61	5
61	6
61	16
61	20
61	21
61	25
61	28
62	1
62	6
62	11
62	16
62	24
62	18
62	21
63	1
63	2
63	3
63	5
63	6
63	7
63	8
63	11
63	16
63	19
63	21
63	22
63	24
63	25
63	29
64	1
64	2
64	4
64	6
64	8
64	15
65	1
65	4
65	7
66	1
66	4
66	7
66	14
67	1
67	4
67	8
67	11
67	14
68	1
68	2
68	19
69	1
69	4
69	7
69	8
69	19
70	4
70	7
70	8
70	14
70	18
70	19
71	1
71	4
71	7
71	15
71	29
72	6
72	7
72	14
72	27
73	6
73	8
73	11
73	20
73	21
73	25
74	2
74	7
74	20
74	22
75	1
75	6
75	11
75	16
75	24
76	1
76	2
76	5
76	8
76	19
76	20
76	22
77	12
77	20
77	28
78	4
78	11
79	1
79	16
79	20
79	24
80	4
80	6
80	7
80	11
80	15
80	16
80	18
80	21
80	22
80	23
80	28
80	29
81	2
81	5
81	8
81	11
81	16
81	21
81	22
81	25
82	8
82	11
82	16
82	25
83	26
83	27
84	4
84	6
84	7
84	27
84	29
85	1
85	5
85	6
85	8
85	16
85	21
86	1
86	2
86	3
86	5
86	8
86	9
86	18
86	19
86	21
87	5
87	6
87	7
87	16
87	18
87	21
87	22
87	23
87	29
88	5
88	7
88	11
88	16
89	7
89	11
89	16
89	22
90	6
90	7
90	28
91	4
91	6
91	7
91	26
91	29
92	6
92	7
92	11
92	16
92	21
93	1
93	4
93	7
93	14
94	7
95	4
95	20
95	26
95	28
96	4
96	7
96	20
96	26
97	1
97	5
97	6
97	7
97	18
97	20
97	21
97	23
97	29
98	6
98	9
98	19
98	20
98	22
98	28
99	20
99	26
99	28
100	11
100	16
100	17
100	27
100	28
101	4
101	6
101	7
101	11
101	16
101	20
101	26
101	28
102	1
102	2
102	6
102	8
102	11
102	15
102	16
102	22
102	24
102	25
102	28
103	6
103	7
103	15
103	26
104	4
104	7
104	26
105	4
105	7
105	14
105	15
105	29
106	4
106	7
106	20
106	26
107	4
107	6
107	7
107	15
108	1
108	4
108	5
108	14
108	15
108	21
108	26
109	4
109	6
109	7
109	14
110	4
110	7
110	15
110	26
111	4
111	7
111	9
111	20
111	26
112	7
112	9
112	14
112	26
113	4
113	6
113	7
113	15
114	1
114	4
114	5
114	7
114	14
115	4
115	7
115	9
115	15
115	26
116	6
116	7
116	14
116	15
117	7
117	14
117	20
117	26
117	28
118	4
118	7
118	9
118	14
118	15
118	20
118	26
118	28
119	4
119	7
119	9
120	7
120	11
120	14
121	7
121	14
122	4
122	7
122	26
123	6
123	7
123	14
123	15
124	4
124	7
124	9
125	4
125	7
125	14
126	7
126	11
127	4
127	7
127	9
127	12
127	14
127	15
127	20
127	26
127	28
128	7
129	1
129	2
129	8
129	19
130	7
130	9
130	26
131	7
131	11
131	14
132	4
132	7
132	14
132	26
133	7
133	14
133	26
133	28
134	26
135	6
135	7
135	14
135	15
135	26
136	4
136	7
136	9
136	26
137	4
137	6
137	7
137	14
138	6
138	7
138	8
138	14
139	4
139	7
139	26
140	7
140	9
140	12
140	26
141	1
141	4
141	6
141	7
141	8
142	5
142	8
143	1
143	5
143	6
143	8
143	11
143	16
143	21
144	5
144	6
144	7
144	11
145	4
145	6
145	7
145	14
146	7
146	11
146	26
147	7
147	26
148	1
148	5
148	7
148	8
148	14
148	26
149	2
149	3
149	6
149	18
149	26
150	7
150	26
150	30
151	5
151	7
151	8
151	26
152	5
152	7
152	8
152	20
153	1
153	5
153	7
153	26
154	5
154	7
154	21
154	23
155	1
155	2
155	6
155	7
155	8
155	14
155	15
155	19
155	26
156	1
156	2
156	5
156	7
156	8
156	19
157	4
157	5
157	7
158	11
158	28
159	7
159	9
159	12
159	26
159	28
160	1
160	5
160	6
160	8
160	9
160	21
161	4
161	11
161	15
161	16
162	6
162	7
162	11
162	16
162	26
163	4
163	5
163	6
163	7
163	11
163	14
163	15
163	16
163	18
163	21
163	22
163	23
163	24
163	26
163	28
163	29
164	6
164	11
164	16
164	25
164	26
164	28
164	30
10	5
165	5
165	8
165	16
165	25
165	26
166	1
166	2
166	5
166	8
166	19
166	20
166	26
166	10
8	16
\.


--
-- Name: categories_category_key; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_category_key UNIQUE (category);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: note_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY note
    ADD CONSTRAINT note_pkey PRIMARY KEY (id);


--
-- Name: category_link; Type: FK CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY notes_categories
    ADD CONSTRAINT category_link FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: note_link; Type: FK CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY notes_categories
    ADD CONSTRAINT note_link FOREIGN KEY (note_id) REFERENCES note(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

