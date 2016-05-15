--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: categories; Type: TABLE; Schema: public; Owner: raptor; Tablespace: 
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
-- Name: note; Type: TABLE; Schema: public; Owner: raptor; Tablespace: 
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
-- Name: notes_categories; Type: TABLE; Schema: public; Owner: raptor; Tablespace: 
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
7	Multiple researches have found that first born are more likely to stay in long term relationship and defer gratification; they are more stable or like stability but more anxiety in life. While later born have a tendency to prefer variety and excitement but have a more relaxed life.\r\n\r\nThis might be due to the anxiety the child experience from the parents' expectations. Highly affecting self-esteem.	first born -> prefer stability but stressed (fear)\r\nlater born -> prefer variety but relaxed	Birth Order Dynamics and Response to Stress http://www.littletree.com.au/birthorder.htm
8	Maternal "nagging" is highly correlated to child aggressiveness.	Mother nags -> Child aggressive	The connection between maternal depression, parenting, and child externalizing disorders\r\nhttp://ir.uiowa.edu/cgi/viewcontent.cgi?article=1618&context=etd\r\n\r\nParenting Practices and Child Disruptive Behavior Problems in Early Elementary School\r\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2764296/\r\n\r\nTHE DEVELOPMENT OF AGGRESSIVE BEHAVIOUR IN CHILDREN AND YOUNG PEOPLE: IMPLICATIONS FOR SOCIAL POLICY, SERVICE PROVISION,AND FURTHER RESEARCH\r\nhttp://www.community.nsw.gov.au/__data/assets/pdf_file/0017/321740/aggression_discussionpaper.pdf\r\n\r\nTHE RECIPROCAL RELATION BETWEEN MATERNAL DEPRESSIVE SYMPTOMATOLOGY AND ADOLESCENTS’ AGGRESSION: THE ROLE OF PARENTING PRACTICES AND FAMILY FUNCTIONING\r\nhttp://scholarscompass.vcu.edu/cgi/viewcontent.cgi?article=3721&context=etd
9	r-selected people tend to have larger anterior cingulate cortex (ACC)\r\nwhich relates to the neural alarm system (the red button) pushed by\r\nthe amygdala in case of danger ACC triggers significant physical pain,\r\nas well as social ostracism/exclusion - as well as perceived unfairness\r\nhighly stimulated during the experience of envy.  therefore r-selected\r\nhave more 'envy' envy is also associated with a willingness to break rules	r-selected -> more envy + willingness to break rules (over perception of unfairness)\t\t\t	Cerebral Lateralization of Pro- and Anti-Social Tendencies\r\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC3984952/\r\n
10	Affection, and bonding between parents and\r\nchildren is the root of future violence and dis-functions as adults.\r\n\r\nThe more a society experience pleasure the less it inflicts pain and\r\nvice-versa.\r\n\r\nSocieties with strong denial of body contacts and shaming of natural\r\ninstincts have the highest rate of violence.\r\n\r\n\r\nIt has also been discussed how in those society products which enhance\r\nviolence are approved but not the ones who are pro-pleasure.\r\n\r\n\r\nThere’s a correlation between marital non-sexual\r\nsatisfaction, somatosensory deprivation and\r\nnon-affectionate parents, and extramarital affairs.\r\n\r\nThose people have lost the ability to bond with their\r\npartner and so they jump from one person to another in\r\nthe hope it’ll be better.\r\n\r\nLike with the alcohol, anything acts as a suppressor of\r\nthe pain inflicted in childhood.	Missing Affection & pleasure as children -> future violence & dis-functions	BODY PLEASURE AND THE ORIGINS OF VIOLENCE\r\nhttp://violence.de/prescott/bulletin/article.html
11	Male are good at spacial orientation; finding locations and creating mental maps.	Male -> Good with mental maps	Gender effects in spatial orientation: cognitive profiles and mental strategies\r\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2909401/\r\n\r\nMen Are Better At Maps Until Women Take This Course\r\nhttp://nautil.us/issue/32/space/men-are-better-at-maps-until-women-take-this-course\r\n\r\nVISUAL PERCEPTUAL DIFFERENCES BETWEEN MEN AND WOMEN\r\nhttp://content.lib.utah.edu/utils/getfile/collection/ehsl-nam/id/4843/filename/4934.pdf
12	Women are better at finding landmarks; with a detailed visualization they can remember small details in their close environment.	female -> good at detailed visualization	Gender effects in spatial orientation: cognitive profiles and mental strategies\r\nhttp://www.ncbi.nlm.nih.gov/pmc/articles/PMC2909401/\r\n\r\nMen Are Better At Maps Until Women Take This Course\r\nhttp://nautil.us/issue/32/space/men-are-better-at-maps-until-women-take-this-course\r\n\r\nVISUAL PERCEPTUAL DIFFERENCES BETWEEN MEN AND WOMEN\r\nhttp://content.lib.utah.edu/utils/getfile/collection/ehsl-nam/id/4843/filename/4934.pdf\t\t\t
13	Girls are better tree climbers than boys. They used to seek refuge in trees.	Women -> better tree climbers\t\t\t\t	Precocious Knowledge of Trees as Antipredator Refuge in Preschool Children: An Examination of Aesthetics, Attributive Judgments, and Relic Sexual Dinichism\r\nPrecocious Knowledge of Trees as Antipredator Refuge in Preschool Children: An Examination of Aesthetics, Attributive Judgments, and Relic Sexual Dinichism
14	For men the time for reproduction is short and low cost.	Men -> reproduction time is short	Evolutionary Psychology\r\nhttps://en.wikipedia.org/wiki/Evolutionary_psychology\r\n\r\nSexual Strategies Theory: An Evolutionary Perspective on Human Mating\r\nhttp://www.bradley.edu/dotAsset/165805.pdf
15	Male use promises of material, violence, they conceal their partner, use submission.	Male -> use force and material to keep partner	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
16	Men socially tend to put more importance in coming out ahead.	Men -> Come out ahead	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
17	Sperm are plentiful compared to eggs, and females spend more time and energy than males. It is also implies high risk.	Female -> reproduction time is long and high risk	Dominance, Status, and Social Hierarchies - DENISE CUMMINS
20	Female use their appearance, jealousy, and desirability to keep their mate.	Female -> use desirability to keep partner	Adaptations to Dangers from Humans - JOSHUA D. DUNTLEY
18	Women avoid risky places when ovulating. They prefer physically able men when ovulating. Women used to be taken hostages after wars, as war trophy.	Women -> ovulation -> avoid risk	artile: "Risk Taking and Women’s Menstrual Cycle: Near Ovulation, Women Avoid a Doubtful Man" Nicolas Guéguen\nhttp://lebs.hbesj.org/index.php/lebs/article/viewFile/lebs.2012.17/56\n\nbook "Against Our will" - Susan Brownmiller
19	Women are more focused on maintaining social harmony	Women -> Social harmony	Maccoby, 1990; Pratto, 1996; Whiting & Edwards, 1988
21	Children absorb what their parents say or do.\r\nOne of the important part of this is to take part in predator/prey games that prepares for real scenarios.	Children -> predator/prey games as preparation\t	Hunter-Gatherer Childhoods: Evolutionary, Developmental, and Cultural Perspectives (Evolutionary Foundations of Human Behavior\r\nThe Handbook of Evolutionary Psychology - Adaptation to Predators and Prey\r\nModeling Behavior for Children Has Long-Lasting Effects\r\nhttp://psychcentral.com/news/2010/05/27/modeling-behavior-for-children-has-long-lasting-effects/14139.html
22	Fear is a signal to protect against pain or death.\r\nIt's better to be false positive than false negative.	Fear -> Signal of danger\t\t\t	The Gift of Fear (1997), Gavin De Becker
23	In fearful or dangerous situations people seek security and refuge.\r\nThey also prefer to take decision based on statistics, more health-promoting behaviour. Avoiding risks.\r\nThey are more conscientious.\r\nConscientiousness is also related to longevity.	Fear -> Conscientiousness -> Refuge&Security	The Psychology of Personality: Viewpoints, Research, and Applications - Friedman 2002\t\t\t
24	Positive mood is highly correlated with risk seeking and exploration.	Positive Mood -> risk seeking\t\t	The Psychology of Personality: Viewpoints, Research, and Applications - By Bernardo J. Carducci
25	Individuals are motivated to keep what is valuable under protection.\r\n\r\nTheir status.\r\nTheir material resources.\r\nTheir mating resources.	Material -> Protect valuables\t\t\t	Adaptations to Dangers from Humans - THE COEVOLUTION OF DANGERS FROM HUMANS AND DEFENSES AGAINST THEM - THEFT AND CHEATING - JOSHUA D. DUNTLEY
27	Stepparents are risky for children.\r\nThere are 4 to 10 times more infanticide when they live with stepparents.\r\n\r\nChildren consequently keep a low profile, try to help the stepparents to gain trust, try to get the attention back from genetic parents by using dangerous behaviours.	Children -> More danger from stepparents	Child abuse and other risks of not living with both parents - H Temrin, S Buchmayer\r\nChildren killed by genetic parents versus stepparents - GT Harris, NZ Hilton, ME Rice, AW Eke\r\nStepparental behavior as mating effort in birds and other animals - S Rohwer, JC Herron, M Daly - Evolution and Human Behavior, 1999 - Elsevier
26	Female have an "auto-abortion" (miscarriage) mechanism to avoid the wasteful investment in offspring that would die young.\n\nIt could be related to stress, (related to dangerous environment)\nmood swing, or bad health.\n	Female -> Miscarriage correlated with danger\t\t\t\t	Stressed mothers may risk early miscarriage\nhttps://www.newscientist.com/article/dn8750-stressed-mothers-may-risk-early-miscarriage/\n\nNew insights into mechanisms behind miscarriage - Elisabeth Clare Larsen, Ole Bjarne Christiansen, Astrid Marie Kolte and Nick Macklon \n\nPregnant Monkeys Miscarry to Avoid Infanticide\nhttp://www.livescience.com/18629-pregnant-monkeys-miscarry-avoid-infanticide.html
28	Women are better at hiding infidelity.\r\nThis might be due to the high risk of her being killed by her romantic partner because of cuckoldry or loss of status.	Women -> Better hide infidelity	Adaptations to Dangers from Humans - SECRECY - JOSHUA D. DUNTLEY\r\nSex Differences in Self-reported Infidelity and its Correlates - Rebecca J. Brand, Charlotte M. Markey, Ana Mills, Sara D. Hodges
29	Mate guarding strategies have been developed as ways to prevent infidelity and poaching.	Mate guarding -> Against Infidelity	Human Mate Guarding - David M. Buss\r\nThe Evolution of Human Mating - David M. Buss\r\nMate retention, semen displacement, and human sperm competition: a preliminary investigation of tactics to prevent and correct female infidelity\r\n
30	For women if their partner leave it means risking being left alone to take care of children.\r\nTheir man investing in someone else children.\r\nIt's an emotional betrayal.\r\n\r\nThus women have an innate bias to focus on how much investment and attention they are getting. Always seeing less than reality.	Women -> Loss of investment -> Left alone -> Bias over attention	Fundamentals of Human Mating Strategies - DAVID P. SCHMITT\r\nRelationship infidelity: A loss perspective - BA Boekhout, SS Hendrick\r\nHuman mate guarding - DM Buss
31	For men their partner infidelity means the risk of cuckoldry, raising another man's child.\r\nTheir woman having a sexual relationship with another man.\r\n\r\nThus men have an innate bias to focus on sex. Always seeing more than reality.	Men -> Sexual betrayal -> Cuckoldry -> \tBias over sex	Human mate guarding - DM Buss\r\nSex differences in response to sexual versus emotional infidelity: The moderating role of individual differences - SL Miller, JK Maner
32	There are many physical factors that help choosing a mate over another:\r\n\r\nSkin quality\r\nHair quality (especially for female)\r\nOral health\r\n\r\nAll cues of a strong body and health.	Choose mate that has a resistant body\t\t	Physical Attractiveness in Adaptationist Perspective - ASSESSMENT OF CUES TO HUMAN SOCIAL VALUE: HEALTH, PHENOTYPIC, AND GENOTYPIC QUALITY - LA\r\nWRENCE S. SUGIYAMA
33	The motivation of a male to inseminate his partner is related to the time spent apart from her. Possibly to fight against sperm competition.	More time spent apart -> More want to inseminate	Female Infidelity and Sperm Competition - PSYCHOLOGICAL MECHANISMS ASSOCIATED WITH PRUDENT SPERM ALLOCATION - TODD K. SHACKELFORD, NICHOLAS POUND, AARON T. GOETZ, and CRAIG W. LAMUNYON
34	The most important trait a man finds attractive in a female is her fertility and fertility potential.	Men -> Prefer fertile women\t\t	Evolution of human mate choice - David C. Geary, Jacob Vigil & Jennifer Byrd‐Craven
35	Women prefer men that have high testosterone and beauty.\r\nHigh testosterone is correlated with imperfection and deficits in the immune system. Thus, "beautiful", a high degree of symmetry, and masculine men would have better genes.	Women -> Prefer High testosterone + beauty	Physical Attractiveness in Adaptationist Perspective - LAWRENCE S. SUGIYAMA
36	Pheromones/body odors of well built men are more attractive to female during ovulation than during normal periods.	Ovulation -> Women more attracted to well built men\t\t\t	Physical Attractiveness in Adaptationist Perspective - LAWRENCE S. SUGIYAMA\r\nAttractiveness of women's body odors over the menstrual cycle: the role of oral contraceptives and receiver sex - S Kuukasjärvi, CJP Eriksson, E Koskela, T Mappes
37	In non-ovulatory period women prefer men that show "good father" attributes.	Non-Ovulatory period -> Prefer good father men	Adaptations to ovulation implications for sexual and social behavior - SW Gangestad, R Thornhill\r\nOvulation leads women to perceive sexy cads as good dads - KM Durante, V Griskevicius, JA Simpson\r\nWomen's fertility across the cycle increases the short-term attractiveness of creative intelligence - MG Haselton, GF Miller\r\nChanges in women's mate preferences across the ovulatory cycle - SW Gangestad, CE Garver-Apgar
38	Men short-term mating strategy is focused on having a large number of partners.\r\nThis is more frequent with "high value men" and men that have riskier lives.\r\n\r\nThis implies having more children and more competition and conflicts for mates.	Men -> Short Term Mating -> Many Partners -> More competition	Fundamentals of Human Mating Strategies DAVID P. SCHMITT\r\nSexual strategies theory: an evolutionary perspective on human mating - DM Buss, DP Schmitt
39	Female short term mating strategy is focused on obtaining high value men. This strategy is taken more frequently when they are in their ovulation period.	Women -> Short term -> Ovulation -> High value men	Sexual strategies theory: an evolutionary perspective on human mating - DM Buss, DP Schmitt\r\nSex similarities and differences in preferences for short-term mates: what, whether, and why - NP Li, DT Kenrick\r\nConditional expression of women's desires and men's mate guarding across the ovulatory cycle - MG Haselton, SW Gangestad
40	Monogamy enhances male alliances.	Monogamy -> Male alliances.	Aggression - MALE-FEMALE PARTNER AGGRESSION - ANNE CAMPBELL\r\nMale reproductive strategies and social bonds - RC Connor, AJ Read
41	Children need long term investment.\r\nA mate leaving means low survival rate for the offspring.\r\nThe investment is inversely proportional to the fact that the persons are unmarried, polygamous, have been married more than once.	Children -> Long term investment -> less investment if have other options	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\r\nEvolution of paternal investment - DC Geary
42	Pair bonding, attachment, strong feelings, emotions are all mechanism that have been put in place to build strong monogamous couples.	Monogamy -> Feelings of attachment\t\t\t\t	Fundamentals of Human Mating Strategies - MONOGAMOUS MATING STRATEGIES - Evidence of Monogamy in Humans - DAVID P. SCHMITT\r\nThe mystery of monogamy - ED Gould, O Moav, A Simhon\r\nConcealed ovulation and clandestine copulation: A female contribution to human evolution - I Schoröder\r\nLove is more than just a kiss: a neurobiological perspective on love and affection - A De Boer, EM Van Buel, GJ Ter Horst
43	In a society where there is a lot of female infidelity men invest more in his sister's children than in his own; he shares genes with them.\r\nThis is due to the low proof of paternity.	Female infidelity in society -> Male invest in sister's children\t\t	Cooperation and Conflict among Kin - PARENTAL PROBABILITY AND MORE DISTAL KIN RELATIONS: THE LATERALITY BIAS - JEFFREY A. KURLAND and STEVEN J. C. GAULIN\r\nMatriliny as daughter-biased investment - CJ Holden, R Sear, R Mace\r\nOn the impact of sex and birth order on contact with kin - CA Salmon\r\n
44	Paternal investment is correlated with offspring survival rate and quality.\r\nIn a society where the cost of investment is high and the cost of having other mates is low there are more male abandonment.\r\n\r\nConcealed ovulation, dispersed mates, and low investment cost is correlated with parental investment.	Parental investment -> Survival of children\t\t\t\t	Cooperation and Conflict among Kin  - JEFFREY A. KURLAND and STEVEN J. C. GAULIN\r\nThe evolution of monogamy and concealed ovulation in humans - L Benshoof, R Thornhill\r\nSexual selection, paternal care, and concealed ovulation in humans - BI Strassmann\r\n
45	Factors linked to mate value:\r\n\r\nAgreeableness\r\nCommitment (Altruism, Cooperation, Trust)\r\nPhysical Prowess (Strength, protection)\r\nEmotional Stability (Calmness and stability)\r\nSurgency (Dominance, leadership)\r\nPhysical attractiveness (Good genes, fertility)	Factors related to mate value -> Good genes, Long run partner, Stable and strong	Commitment, Love, and Mate Retention - DEPENDENCE IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS\r\nTrait‐Specific Dependence in Romantic Relationships - BJ Ellis, JA Simpson, L Campbell
46	Facial similarities have effect on the individuals investment into others.\r\nIf they are similar they have more trust, they invest more resources (Identity By State).\r\nIt the coefficient of relationship increases there is a decrease in sexual attractiveness but a stronger trust (Identity By Descendant).\r\n\r\nMen are more able to discern facial similarities. It's a device against cuckoldry so they can directly know if their children are rightfully theirs.	Facial & physical similarities -> More trust -> Men device against cuckoldry	PARENTING AND KINSHIP - MARTIN DALY and MARGO WILSON\r\nFacial resemblance enhances trust - LM DeBruine
47	In high risk societies there is a higher child mortality rate which correlates with low investment in children and adults seeking more mates.\r\n\r\nWhen parental investment is present children have better social competitiveness and by consequence have a reproductive advantage.	Parental investment -> High quality offsprings	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\r\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway
48	A high investing male is correlated with:\r\nThe seeking of a more competent, intelligent, and better educate partner.\r\nMore effective parenting (the opposite is also true, less investing males have less effective parenting).	Men more invested -> Women more invested -> Educated and intelligent children\t\t	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\r\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\r\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
49	The father interaction in play with children through physical activities or education are correlated with:\r\nChildren that are more social and popular.\r\nChildren that are more positive and have less emotional instabilities.\r\nChildren that have less psychological difficulties.\r\nChildren with better academic performance.\r\nChildren that have less aggressive.\r\nChildren that are more motivated.\r\n\r\nThis might be linked to genes for intelligence, impulsivity, and personality.	Parental investment -> Calm and intelligent children	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\r\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\r\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
50	The father way of interacting with children directly influences their later reproduction strategy.\r\n\r\nA father absent from home is correlated with:\r\nA higher chance of criminality, stress, "Macho" behaviour, criminality, delinquency in boys.\r\n\r\nFor girls this correlates with them seeking quantity over quality.	Father behaviour -> mirror of children behaviour\t\t	Evolution of Paternal Investment - PHYSICAL AND SOCIAL WELL-BEING OF CHILDREN - DAVID C. GEARY\r\nParental investment: how an equity motive can produce inequality - R Hertwig, JN Davis, FJ Sulloway\r\nFamily Matters: Impacts of Family Background on Educational Attainments - John Ermisch and Marco Francesconi
51	One factor for choosing a mate is his/her fertility, fecundity, and future value; In the sense of future reproductive value and investment.	Mate choice -> Future value of mate is also important	Physical Attractiveness in Adaptationist Perspective - MATE VALUE - LAWRENCE S. SUGIYAMA\r\n
52	Male have an inner "vigilance" to notice female ovulation. It forges cooperation between the sexes.\r\n\r\nThis is correlated with the sperm competition theory: Explaining why men have large penis (compared to other apes), female orgasm to retain sperms, vigilance, etc...	Men -> vigilance at women ovulation\t	Adaptations to Ovulation - STEVEN W. GANGESTAD, RANDY THORNHILL, and CHRISTINE E. GARVER-APGAR\r\nHuman sperm competition: Ejaculate manipulation by females and a function for the female orgasm - RR Baker, MA Bellis
53	Women have a higher chance to become pregnant from men they have previously copulated with.	Copulation -> More chance of pregnancy if had previous intercourse	Female Infidelity and Sperm Competition - TODD K. SHACKELFORD, NICHOLAS POUND, AARON T. GOETZ, and CRAIG W. LAMUNYON\t
54	Parental care is needed for infants survival. They demand time, food, protection until mature.	Children -> Need investment until mature\t\t	Why parents matter: Parental investment and child outcomes - N Barber
161	Children fight and are greedy for their parents' resources.	Children -> fight over parents resources	The Selfish Gene - Richard Dawkins\r\n
55	One of the cognitive process that take place to choose a mate is the comparison level:\r\nWe compare standards and expectations (What we think we "deserve") versus our perception of the current relationship.\r\n\r\nWe also compare between all the available choices of mates, a comparison level alternatives.	Mate choice -> Compare on expectations	Commitment, Love, and Mate Retention - RELATIONSHIP PROCESSES AND THE LOVE SYSTEM - LORNE CAMPBELL and BRUCE J. ELLIS
56	There's a correlation between a good relationship and the perception of ideal partner and number of disagreements.	Happy relationship -> Less disagreements\t\t	Commitment, Love, and Mate Retention - RELATIONSHIP PROCESSES AND THE LOVE SYSTEM - LORNE CAMPBELL and BRUCE J. ELLIS\r\nThe importance of similarity and understanding of partners' marital ideals to relationship satisfaction - K Acitelli, DA Kenny, D Weiner
57	Time is a costly asset.\r\nThe more time a couple spends together the less chance they have to breakup.	More time together -> Less chance of breakup	Commitment, Love, and Mate Retention - INVESTMENTS IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS
58	Factors influencing the choice of a mate:\r\n* Provisioning\r\n* Protection\r\n* Parental nurturance\r\n* Sexual access\r\n* Commitment	Mate choice -> All aspect based on avoidance of risk	Commitment, Love, and Mate Retention - INVESTMENTS IN RELATIONSHIPS - LORNE CAMPBELL and BRUCE J. ELLIS
59	Aggression is a mean to acquire or defend resources.	Aggression -> defend/gain resources	Aggression - ANNE CAMPBELL
60	For step parents children are seen as cost rather than benefit.\r\nThey are 70 times more likely to abuse children that aren't theirs and 100 times more likely to abuse them fatally.	Step parents -> See non blood related as burden -> More likely to abuse children	Adaptations to Dangers from Humans - EVIDENCE OF ADAPTATIONS FOR HOMICIDE AND HOMICIDE DEFENSES - JOSHUA D. DUNTLEY\r\nRisk of maltreatment of children living with stepparents - M Wilson, M Daly
61	Women have a high level of parental investment and because of it they developed a mechanism to differentiate between healthy foetus and non-healthy ones.\r\n\r\nOnly 60% of fertilized eggs implants in the uterus, 20% of those are miscarried. Furthermore, not all survive the development phase if they don't secrete enough HCG.\r\n\r\nAdding to that, the environment the mother is living in affects the "system". Danger is correlated with an increase in miscarriage.\r\n\r\nThis is a natural "abortion" and redirect of investment mechanism. 	Women -> Developed an auto-abortion mechanism to choose healthy children	Aggression - MATERNAL-INFANT CONFLICT AND INFANTICIDE - ANNE CAMPBELL\r\nFetal programming by maternal stress: insights from a conflict perspective - M Del Giudice\r\nGenetic conflicts in human pregnancy - D Haig\r\n
62	Infanticide rate is correlated with the absence of father or paternity uncertainty.	Less parental investment -> More infanticide	Aggression - MATERNAL-INFANT CONFLICT AND INFANTICIDE - ANNE CAMPBELL\r\nEssock-Vitale & McGuire, 1988; Hill & Low, 1992\t\t
63	The advantages of monogamy:\r\n\r\nFor males:\r\nIt enhances male alliances.\r\nIt assures a modest reproductive success.\r\nSexual intercourse ad-libitum.\r\nIncrease the certainty of paternity.\r\nThe monopoly of one woman reproductive career.\r\nIt enhances the survival of offspring.\r\n\r\nDisadvantage:\r\n\r\nThere's a price to pay with mate guarding against cuckoldry and possibly wasted parental efforts.\r\n\r\nFor females:\r\n\r\nGreater time and energy to spend on her young.\r\nExtra calories and protection from aggression.\r\nAn increase in offspring survival rate.\r\n\r\nDisadvantage:\r\nA lower diversity of children genetics.\r\nShe expose herself to the danger of jealousy (jealousy motivated violence): which has a high risk of involving violence from her male partner.\r\nShe has to guard her partner from younger and more fertile women.	Monogamy -> Creates a stability	Daly & Wilson, 1988\r\nAggression - MALE-FEMALE PARTNER AGGRESSION - ANNE CAMPBELL\r\nMale reproductive strategies and social bonds - RC Connor, AJ Read\r\nParental investment: The hominid adaptation - JB Lancaster, CS Lancaster, D Ortner
64	Women's dependence on men has been increased by patrilocality, the loss of female kin bonds, and the evolution of male alliances.\r\n\r\nThe chance of divorce if the man is economically deficient are raised by 187%.\r\n\r\nThe chance of divorce when it's the woman spending too much money are only raised by 77%.\r\n\r\nThis all relates to how male support is being perceived.	Low level of male support -> High level of divorce	Aggression - ANNE CAMPBELL\r\nEconomic factors and marital stability - WJ Goode
65	99% of same sex homicides are male on male.\n\nThis might be because there are more male alliances than female alliances.	Conflicts are a male thing	Aggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\nSex differences in aggression: A rejoinder and reprise - EE Maccoby, CN Jacklin\n
66	A conflict might seem trivial from an outsider perspective however for the belligerents it's a fight for status and honour, both parties do not want to loose face.\r\n\r\nMen are extremely sensitive to status loss because of its association with dominance and reproductive success. They are indirectly fighting for mates.	Conflict -> Benign but stay to not loose face -> Fight for mate	Daly and Wilson (1988)\r\nAggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\r\nSocial conflict activates status-dependent endogenous analgesic or hyperalgesic mechanisms in male mice: effects of naloxone on nociception and behaviour - RJ Rodgers, CA Hendrie\r\nPrecarious manhood and its links to action and aggression - JK Bosson, JA Vandello\r\n
67	Boys are more assertive than girls by 13months of age.\r\nThey prefer to destroy, attack things and to compete; which consumes 65% of their time. They want to know who is better and tougher.\r\n\r\nGirls prefer to cooperate.	From young age -> Sex differences in conflicts	Goldberg & Lewis, 1969\r\nAggression - MALE SAME-SEX AGGRESSION - ANNE CAMPBELL\r\nSex differences in the games children play - J Lever\r\n\r\n
68	Men of 60 years or older prefer to choose mates that are 15 years younger or more.\r\nYoung teenage boys prefer women that are 5 years older.\r\n\r\nThis study shows how men emphasis on "fertility" to choose their partner.	Men -> Focus on fecundity	Marrying women 15 years younger maximized men's evolutionary fitness in historical Sami - S Helle, V Lummaa, J Jokela\r\nKenrick & Keefe, 1992\r\nAggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL
69	Men compete with each others by using their superiority, promiscuity, popularity.\r\n\r\nWomen compete with each others with the currency of appearance.\r\nFor example: 88% of women older than 18 use makeup.	Same sex conflict -> Men, superiority / Women, appearance	Aggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL\r\nBody image and appearance-management behaviors in college women - B Fink, N Neave, H Seydel\r\nThe evolutionary psychology of physical attractiveness: Sexual selection and human morphology - N Barber\r\nFemale competition: Causes, constraints, content, and contexts - A Campbell 
70	Men are concerned with paternity uncertainty and thus avoid women that have past sexual behaviour.\r\n\r\nReputation for a women is directly linked to her sexual restraint. For example status such as "whore" are important judgement.	Women -> Status related to sexual behaviour	Aggression - FEMALE SAME-SEX AGGRESSION - ANNE CAMPBELL\r\n“Once you get a reputation, your life's like…'wrecked'”: The implications of reputation for young women's sexual health and well-being - F Stewart
71	Ingroup cooperation between males is used as a way to gain resources from other groups (outgroups). The resources can be territories, mates, food, etc..\r\n\r\nIf the material resources are low then there are more chances of violence (between individuals and for resources).\r\n\r\n71% of violent crimes in cities are from the poor neighbourhoods. 	Less materials -> More violence, attack for resources	Coulton, Korbin, Su, & Chow, 1995\r\nAggression - THE ECOLOGICAL TRANSMISSION OF AGGRESSION -A NNE CAMPBELL\r\nMultilevel analyses of neighbourhood socioeconomic context and health outcomes: a critical review - KE Pickett, M Pearl
72	In life or death situation kin altruism is curvilinear (U-shaped) depending on age.\r\n\r\nFemale are favoured over males if they are younger than 45yo.\r\n\r\nAltruism with others is also possible if the cost of investment is low. It is directed at advantaging the vulnerable.\r\n\r\nHelping others is a sign of abundance of resources and power. Doing the opposite hurts the status.	Altruism -> Help fecundity then help vulnerable people -> Sign of abundance	Buss, 2003\r\nAltruism and Genetic Relatedness - COMPUTING THE COSTS AND BENEFITS OF ALTRUISM - EUGENE BURNSTEIN
73	Oxytocin is secreted before birth as a bounding/attachment hormone.\r\nThe hormone induces calmness and reward resulting in her staying and focusing on the infant.	Women oxytocin secretion before birth -> Bound with child -> more investment	Carter, 2002; Fleming, O’Day, & Kraemer, 1999\r\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE
74	Mate attachment influences social relationship management: It deactivates and individual social guard and judgement.	Mate attachment -> Lower social guard	Hormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nBartels & Zeki, 2004; Fisher, 2004\r\nNeurobiology of social attachments - GA Coria-Avila, J Manzo, LI Garcia, P Carrillo\r\n
75	Experienced fathers are more willing to invest in children.	Parental care increase with experience as a father	Ziegler & Snowdon, 1997\r\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\n
76	Hormones related to mate preference and bounding:\r\nFor females: Oxytocin (OT), hormone of relaxation, released after mating.\r\nFor males: Arginine Vasopressin (AVP) and OT, hormone of sexual activation and pair bounding.	OT and AVP -> Important role in pair bounding	The effects of oxytocin and vasopressin on partner preferences in male and female prairie voles (Microtus ochrogaster) - MM Cho, AC DeVries, JR Williams\r\nHormones and the Human Family - PARENTAL CARE - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nThe neurobiology of attachment - TR Insel, LJ Young
77	Studied effects of long term stress(cortisol):\r\n\r\nImmune deficiency\r\nCognitive impairment\r\nInhibit growth\r\nDelayed sexual maturity\r\nDamages to hippocampus\r\nPsychological maladjustment\r\n\r\n(ex: divorce, death, loss of job, etc..)	Long term effects of stress -> Degrade the individual	Herbert & Cohen, 1993; Maier, Watkins, & Fleschner, 1994\r\nHormones and the Human Family - STRESS RESPONSE MECHANISMS AND THEORY - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nStress and glucocorticoids impair retrieval of long-term spatial memory - AS Clarke, DJ Wittwer, DH Abbott\r\nLong-term effects of social stress on brain and behavior: a focus on hippocampal functioning - B Buwalda, MHP Kole, AH Veenema\r\nEffects of stress throughout the lifespan on the brain, behaviour and cognition - SJ Lupien, BS McEwen, MR Gunnar
78	If a children respond aggressively to a "challenge" and "wins", he's more likely to respond aggressively in the future.n	Conflict -> Child use violence and win -> Will use violence in the future	Patterson, Littman, & Bricker, 1967\r\nAggression - PSYCHOLOGICAL MODELS OF ECOLOGICAL ADJUSTMENT - ANNE CAMPBELL
79	The pregnancy syndrome: A man prolactin level goes higher and his testosterone goes lower.\r\n\r\nIt makes him focus on the child (emotional level).	Prolactin -> Father's emotional response to infant	Storey, Walsh, Quinton, & Wynne-Edwards, 2000\r\nTestosterone and prolactin are associated with emotional responses to infant cries in new fathers - AS Fleming, C Corter, J Stallings, M Steiner
80	Low resource & risky environments are correlated with:\r\nLess attentive and conflicted parenting\r\nChildren that have a tendency to form unstable relationship later in life.\r\n\r\nThe opposite is also true:\r\nSecure and positive individuals have less conflicts, have a more satisfying relationship that lasts longer.\r\n\r\nThose world view are passed down to children. (Through stress)	The environment shapes future behaviour	MacDonald, 1992\r\nEvolution of Paternal Investment - FACULTATIVE EXPRESSION OF HUMAN PATERNAL INVESTMENT - DAVID C. GEARY
81	As parents grow older they invest more in their children.\r\nThe infanticide rates goes down drastically.\r\n\r\nMenopause plays a role in this. It is a reminder that rearing children is costly. There is a higher risk of reproduction on older women. It's also a mechanism to invest in grand-children.	Parents older -> Invest more in children and grand-children -> Menopause is a reminder	Bugos & McCarthy, 1984; Daly & Wilson, 1995\r\nParental Investment and Parent-Offspring Conflict - CATHERINE SALMON\r\nHypothesis: menopause discourages infanticide and encourages continued investment by agnates - PW Turke
82	Infants recognize the mother's voice 24h after birth, the odour of their breast 6 days after, her face 2 weeks after.\r\n\r\nThe mother recognizes her infant's face 5h after birth, the infant's voice 2 days after birth.	Mother and child soon after birth bound with each other	Altruism and Genetic Relatedness - SINGLE LOCUS KIN RECOGNITION SYSTEMS - EUGENE BURNSTEIN\r\nRecognition of maternal axillary odors by infants - JM Cernoch, RH Porter\r\nMother-stranger face discrimination by the newborn - TM Field, D Cohen, R Garcia, R Greenberg\r\nMother‐infant skin‐to‐skin contact after delivery results in early recognition of own mother's milk odour - K Mizuno, N Mizuno, T Shinohara, M Noda
83	In suspicious situations people tend to automatically consider the opposite of what is asserted.\r\n\r\nThis also depends on the familiarity between the individuals.	Suspicious situation -> Consider the opposite	Schul, Mayo, & Burnstein, in press
84	In high risk situations individuals are nepotistic, they favour kin more than anyone else.\r\n\r\nThe cost can be calculated as follow:\r\n\r\n(Genetic cost of helping) < ( (Benefits) / (Degree of relatedness) )	Individuals are inherently nepotistic	Altruism and Genetic Relatedness - COMPUTING THE COSTS AND BENEFITS OF ALTRUISM - EUGENE BURNSTEIN\r\nKin-recognition abilities and nepotism as a function of sociality - JM Mateo
85	Sperms are plentiful and low cost, it relates with more risk of abandonment.\r\nEggs are costly and scarce, it relates with high commitment.\r\n\r\nThose aspects poor down into all of our lives.	Sperms -> Low cost, Eggs -> Costly	The cost of sex: quantifying energetic investment in gamete production by males and females - A Hayward, JF Gillooly
115	Social fear: Coalitions or ethnies that threaten physical safety.\r\nSocial disgust: Something/someone that threatens health or morals.\r\nSocial anger: Free riders, someone that takes what is not rightfully theirs.	Defence of social circle -> Strong emotions	Mackie et al. (2000)\r\nAltruistic punishment in humans - E Fehr, S Gächter\r\nBody, psyche, and culture: The relationship between disgust and morality - J Haidt, P Rozin, C McCauley
86	The risks for the female being left alone makes them refuse to copulate, use "coyness" and "domestic-bliss", to spot signs of infidelity and recognize the qualities of her mate.\r\n\r\nFor example, a female want to be sure of certain quality before rearing a child: Nest, food, security. After copulation males are tempted to leave and this mechanism will prevent that.\r\n\r\nOn a side note, liars can use this method to get sex from females.\r\n\r\nMales use long "engagement" period to make sure the female won't sway or is already pregnant from another man's children.\r\n\r\nMoreover, the more time and energy a couple spend together, the less the probability of them breaking up.	Couples spend a preliminary time together to access each others	The selfish gene - Richard Dawkins\r\nModeling mate choice in monogamous mating systems with courtship - J Simão, PM Todd
87	There is an equilibrium of infidelity depending on the average population rates.\r\nUsually is it 5/6 of coy females vs 1/6 of fast females,\r\n5/8 of faithful males vs 3/8 of philanderer males.\r\n\r\nThe more "fast" women are available the more men will cheat.\r\nConsequently there is less investment in children.	Game theory of "sexual openness"	The selfish gene - Richard Dawkins\r\nCoyness, philandering and stable strategies - P Schuster, K Sigmund
88	Orphans have low reproductive value in many societies.	Orphans -> Low reproduction	Alexander, 1974; Hawkes, 2003; Williams, 1957
89	Factors promoting monogamy:\r\n\r\nExtensive biparental care\r\nSocial education of children (linguistic amongst others)\r\nLengthy adolescence\r\nConcealed ovulation\r\nMenopause	Monogamy -> Has social factors promoting it	Flinn, Geary, & Ward, 2005\r\nHormones and the Human Family - EVOLUTION OF THE HUMAN FAMILY - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE 
90	Social bounds (cooperation) are created through attachment.\r\n\r\nAttachment provides security and relief but also creates pressure on individuals about who they care about (stress.)	Social bound -> Attachment -> Pressure	Hormones and the Human Family - THE CHEMISTRY OF AFFECTION - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nAttachment, stress, and psychopathology: A developmental pathways model - COFC RISK\r\n
91	In game theory there is always an equilibrium point reached and this point depends on the current environment:\r\nGenerous individuals might replace selfish ones depending on the group criteria, on policing of defectors and the maintenance of equity.	Equilibrium of defectors and cooperators	Strong reciprocity, human cooperation, and the enforcement of social norms - E Fehr, U Fischbacher, S Gächter
92	Infant develop social skills before physical ones, this is due to:\r\nAn elastic brain\r\nA need to adapt to the local community (language, facial recognition, eye contact, smiling, etc..)\r\n\r\nThus there is a need for long parental investment. It takes a long time for infants to be physically able.	Infant -> Develop social before physical -> Need for investment	de Haan, Johnson, & Halit, 2003\r\nFarroni, Mansfield, Lai, & Johnson, 2003\r\nBornstein & Arterberry, 2003\r\nAlexander, 1990a; Bjorklund Pellegrini, 2002; Bloom, 2000; Geary & Bjorklund, 2000; Geary & Huffman,2002; Small, 1998, 2001
93	Male give in-group benefits to other males that participate in "warfares", the warrior status. They also gain a reproductive success.\r\n\r\nNot participating can lead to ostracism, being tagged as coward.	War -> Male status -> Reproductive advantage	Boyd, Gintis, Bowles, & Richerson, 2003; Boyd & Richerson, 1992\r\nAggression - ANNE CAMPBELL
94	Groups are always stronger than single individuals. (Flock of bird example)	Groups -> Stronger than individual	https://en.wikipedia.org/wiki/Flocking_(behavior)
95	Emotions are an evolutionary device to focus attention on immediate problems, evaluating the best outcome in an array of pieces of information.\r\nIt would be too costly to compute them all.\r\nThus emotions are a mean to maximize positive outcomes.	Emotions -> Bias to maximize positive outcomes	Ketelaar & Todd, 2001\r\nAggression - ANNE CAMPBELL
96	Behavioural impulsivity is related to violent offences and antisocial behaviour.\r\nCognitive impulsivity is not.	Behavioural impulsivity -> Agressivity	Aggression - ANNE CAMPBELL\r\nEvaluation of behavioral impulsivity and aggression tasks as endophenotypes for borderline personality disorder - MS McCloskey, AS New, LJ Siever, M Goodman\r\nThe influence of serotonin-and other genes on impulsive behavioral aggression and cognitive impulsivity in children with attention-deficit/hyperactivity - RD Oades, J Lasky-Su\r\nImpulsiveness and aggression - ES Barratt, J Monahan
97	Testosterone makes males impatient (impulsive) and ferocious.\r\nIt leads to hasty and non-lasting relationships. Males investing in other things.\r\nRisky and unstable environments correlates with high testosterone society.	Testosterone -> Impulsivity -> Aggression	Testosterone and aggression - J Archer\r\nTestosterone and human aggression: an evaluation of the challenge hypothesis - J Archer\r\nEffects of testosterone on breeding density, breeding success and survival of red grouse - R Moss, R Parr, X Lambin
98	The "love hormone", oxytocin, acts on the brain reward system. It enables long lasting relationships due to its drug-like effect and addiction.\r\n\r\nIt also increases stress in situations related to partners and loved ones.	Oxytocin -> Addiction effect	Neuroendocrine perspectives on social attachment and love - CS Carter\r\nIs love passion an addictive disorder? - M Reynaud, L Karila, L Blecha\r\nStress, sex, and addiction: potential roles of corticotropin-releasing factor, oxytocin, and arginine-vasopressin - V Bisagno, JL Cadet
99	Stress (cortisol) in unpredictable event of short period enhances mental activities to respond to challenges. Other mental processes are inhibited to help focus and reduce "noise".	Stress -> Short term -> Help face challenges	Hormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nEndocrine responses to unpredictable environmental events: stress or anti-stress hormones? - JC Wingfield, AS Kitaysky
100	There is a higher level of cortisol in children living with step-parents compared to children living with other relatives.\r\n\r\nEven in the case of a children living with a remarried mother.	Children living with anyone other than parents -> More stress	Childhood Stress: Endocrine and Immune Responses to Psychosocial Events - M. V. Flinn and B. G. England
101	Some household factors to raise of cortisol (stress):\r\n\r\nChildren living in houses with quarrelling and fight have abnormal peaks and fluctuation in cortisol.\r\n\r\nWhen the father leaves the house and returns the cortisol level of the children raises and falls back upon return.\r\n\r\nTraumatic events increase cortisol by 100% to 2K% compared to normal raise, which varies between 10% to 100%.\r\n\r\nChronic stress has long lasting risks on children:\r\nIt blunts the responses to normal and useful stress.\r\nThe chronically stressed children have a bellow average cortisol level during "normal" situation and appear socially "tougher".	Unstable household in childhood -> Chronic stress -> Blunt Adults	cf. Long, Ungpakorn, & Harrison, 1993\r\nHormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE\r\nChild abuse and stress disorders - MF Olive\r\n
102	Behaviours that reduce stress in children:\r\n\r\nAffectionate interactions\r\nSupport from parents\r\nAvailability of parents\r\nMaternal care: affects the most the child. A mother living in a stable and supportive household makes the child more relaxed.\r\nPaternal care: indirectly provides benefits to the child by supporting the mother.	Father supports mother -> Mother calm -> Children less stressed	Belsky, Steinberg, & Draper, 1991; Flinn, 1992; Hurtado & Hill, 1992; Lamb, Pleck, Charnov, & Levine, 1987;Scheper-Hughes, 1988\r\nHormones and the Human Family - MARK V. FLINN, CAROL V. WARD, and ROBERT J. NOONE
103	Daily contacts makes individuals know when someone needs help, it makes them reciprocate or not.\r\n\r\nThere's an understanding of obligations and entitlement.\r\n\r\nThe more distant the contacts the more direct trades are made and the less reciprocity. It's an explicit and instant trade of goods.	Close contacts -> long term obligations & status VS Distant -> explicit and direct trade	Neurocognitive Adaptations Designed for Social Exchange - LEDA COSMIDES and JOHN TOOBY\r\nReciprocity and social distance: A reconsideration - S Price
104	Detecting is innate to humans, it is even present at an early age in children; even in schizophrenic people.\n\nIf there is a violation in a non-intentional or natural way people tend to be more willing to accept it.\n\nHowever, individuals always notice the "injustice" even in the case of the non-intentional acts.	Detect cheaters -> Willing to accept non-intentional acts	Maljkovic (1987)\nNeurocognitive Adaptations Designed for Social Exchange - LEDA COSMIDES and JOHN TOOBY\nCheater detection is modified by social rank: The impact of dominance on the evolution of cognitive functions - DD Cummins
105	Fitness is enhanced by resources and commodities such as food, shelter, territories, and mates.\r\n\r\nAggression is one of the response to competition for resources.\r\nResources might become scarce and individuals might want to leave. Such choice carries costs: The new location might not have enough resources of might be inhabited by strangers (fight).\r\n\r\nThere are costs to leaving, there are costs to fighting for resources.	Resources -> The main source of conflict	Aggression - AGGRESSION CONCEPTUALIZED - ANNE CAMPBELL
106	Aggression has costs.\r\nIn zero sum games or competitions an individual has to chose the best option: fight or flight, reward or cost.\r\n\r\nReward * (Probability - Cost * Probability)\r\n\r\nThere are two types of aggressions: Proactive and responsive.\r\nProactive: Absence of anger and arousal, it's a mean to an end.\r\nResponsive: It's a response with anger and emotions.	Aggression is costly -> Individuals developed a mechanism to choose what to do (emotions)	Aggression - ANNE CAMPBELL
107	Individuals like to associate themselves with others that can push them forward. For example they can be good partners for cooperative activities. They can benefit from them in their current social circle and environment.\r\n\r\nIn small groups if some individuals act selfishly the selfish behaviour is more likely to spread.	Cooperation -> Like individuals that help / nasty behaviours spread in small groups	Hamilton, 1964; Trivers, 1971; Boyd & Richerson, 1985\r\nManaging Ingroup and Outgroup Relationships - CHOOSING SOCIAL PARTNERS - ROBERT KURZBAN and STEVEN NEUBERG
108	Why do men rape:\r\n\r\nMen have a bias over sex. (over sees it everywhere).\r\n\r\n* Disadvantaged Men (no other mean of reproduction)\r\n* Specialized Rapists (Aroused by violent acts, fast ejaculation to not get caught)\r\n* Opportunistic Rapists (Seek receptive women but rape when they don't consent)\r\n* High Mating Effort Rapists (Psychopaths)\r\n* Partner Rapists (In the case of sperm competition)	Rape -> Main cause is bias over sex	Why Do Men Rape? An Evolutionary Psychological Perspective - William F. McKibbin, Todd K. Shackelford, Aaron T. Goetz, and Valerie G. Starratt
109	The thought of future interactions makes people more aware of their reputation, especially when future cooperation will take place.\r\n\r\nThe opposite is also true, anonymity creates selfishness and antisocial behaviours.\r\n\r\nThe commitment to future interactions and behaviours give rise to group commitment. Individuals do public performances to show their attachment to the group.\r\n\r\nSocial familiarity gives rise to long future commitment and an increase in the likelihood of pro social behaviours. 	Future interaction -> More cooperation	Prentice-Dunn & Rogers, 1980; Zimbardo, 1970\r\nManaging Ingroup and Outgroup Relationships - AVAILABILITY FOR FUTURE INTERACTION - ROBERT KURZBAN and STEVEN NEUBERG\r\nDrunk, powerful, and in the dark how general processes of disinhibition produce both prosocial and antisocial behavior - JB Hirsh, AD Galinsky, CB Zhong\r\nThe effects of commitment to future interaction in single plays of three games - E. Allen Slusher, Kenneth J. Roering, and Gerald L. Rose
110	Humans have an inner desire to punish those who enjoy benefits without paying costs (it triggers anger). This doesn't apply to children and disabled persons.\r\n\r\nThe fitness of a "punisher" depends on the number of "free loaders" in the current population. If there are only a small number of "free loaders" it is advantageous to be a punisher, otherwise it is too costly.	Angers at individuals who enjoy benefits without cost -> recalibrate society with "police" only if small number of "free loaders"	Fehr and Gächter (2002)\r\nWilbur, Shapiro, Neuberg, Goldstein, & Hofer, 2003\r\nCottrell & Neuberg, in press; Neuberg & Cottrell, 2002\r\nManaging Ingroup and Outgroup Relationships - ROBERT KURZBAN and STEVEN NEUBERG 
111	Individuals have adapted themselves to automatically protect themselves from attack or threats by focusing and noticing more angry facial expressions, the rapid approach of an object or person, the sight of a weapon, etc.. They trigger strong responses.\r\n\r\nThis plays a role in in-group preferences and out-group avoidance.\r\nGroup membership itself might trigger the anti-threat mechanism	Adaptation to danger -> Directly notice threats -> Avoid threats	Schaller & Neuberg, 2003\r\nManaging Ingroup and Outgroup Relationships - PHYSICAL ATTACK - ROBERT KURZBAN and STEVEN NEUBERG
112	People instinctively avoid people that appear to have parasites or infections, it triggers disgust.\r\n\r\nIt's a mechanism to protect individuals from contagions.	Individual appear contagious -> Protection mechanism -> Triggers disgust in others	Ginsburg & Link, 1993; Kurzban & Leary, 2001; Park, Faulkner, &Schaller,2003;   Rozin,   Markwith,   &   Nemeroff,   1992;   Schaller, Park, & Faulkner,2003
113	The more and individual depends on the group, the more the in-group/out-group preferences are increased.\r\n\r\nEven in the absence of threat or competition with out-groups, the in-group morals weight so much that if out-groups have different morals it entails conflict. They become target simply by following their norms.	Individual depends on the group -> In-group bias -> Individual wants conflict with out-groups with different moral values	Gil-White (2001)\r\nManaging Ingroup and Outgroup Relationships - PHYSICAL ATTACK - ROBERT KURZBAN and STEVEN NEUBERG
114	Conflict might rise when males want the reproductive benefits of other groups, even at the cost of risks.\r\n\r\nInter-group conflict is a male phenomenon.	Male want females from other groups -> Inter-group conflicts	Tooby and Cosmides (1988)
116	Status is tied with the ability to survive, reproduce, take care of yourself, and to take care of your offspring.	Status -> Related to the basic survival	Altmann et al., 1996\r\nDawkins, 1982
117	Because of the importance of status, changes in it directly affect the individual's physiology by the medium of hormones.\r\n\r\nStatus means the difference between life and death, thus, the body responds with stress (cortisol + adrenaline).\r\n\r\nThe short term effect is to mobilize energy from fat storage, make the heart beat fast to pump blood through the body.\r\n\r\nThe long term effect is to alter the fat storage mechanism, create an hormonal imbalance, sleep disturbance, and altered mood.	Status -> Difference between life and death -> Responds with stress	McEwen & Wingfield, 2002\r\nDominance, Status, and Social Hierarchies - SOCIAL STATUS AND NEUROENDOCRINE RESPONSES - DENISE CUMMINS\r\n
118	Games and competitive games or contests psychologically feel like real contests between rivals: They include the fight for status in the hierarchy.\r\n\r\nPoverty is highly correlated with stress because of its effect on status. Higher cortisol levels are found in persons "relatively deprived".\r\n\r\nA change in status might induce stress or it might not in some cases. The opposite is also true: Stress can lower someone's status, and no stress can rise someone's status.\r\n\r\nHow an individual reacts in particular situations reflects their social status and their quality of life.	Status <-> Stress	Kapuku, Treibner, & Davis, 2002; Lupien, King, Meaney, & McEwen, 2001\r\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
119	Norms are shared information between the group individuals.\r\nThey are transferred between members so they can copy and adhere to them.\r\n\r\nThis facilitates cooperation and coordination.\r\n\r\nAnyone not following the norms is subject to rejection, disgust, and prejudice.\r\nThere's even an urge to separate the individual from other group members.	Norms -> Spread in group -> Better cooperation and homogeneity	Boyd & Richerson, 1985\r\nBiernat, Vescio,Theno, & Crandall, 1996; Katz & Hass, 1988; Rokeach, 1972\r\nRozin, Haidt, & McCauley, 2000; Rozin, Lowery, Imada, & Haidt, 1999
120	Social dominance is the first social organisation a child learns.\r\nIt also affects the child's personality throughout life.\r\n\r\nThe child also learns very soon the distinction between facial expressions.	Children -> Learn social hierarchy from a young age	Frankel & Arbel, 1980; Strayer & Trudel, 1984
121	Social power or dominance can come from:\r\nLearning others behaviour\r\nMonitoring others\r\nInfluencing and predicting others\r\nBeing good at persuading and deceiving	Social dominance -> Good at handling others	Hall, Halberstadt, & O’Brien, 1997; Keating & Heltman, 1994
122	Societies with rigid rules are more stable; they are characterized by rigid social hierarchies.\r\n\r\nThe draw back is the loss of individuality and individual freedom. People have to learn and follow rules.\r\n\r\nThere are more typical stereotype persons, everyone falls into a category.	Rigid society -> More stability and followers of norms -> Less freedom -> Less individuality and free thoughts	CoatesMarkel, 1997; de Waal, 1982\r\nCummins, 1996a, 1998, 2000\r\nThe differences between “tight” and “loose” societies - Pertii J. Pelto
123	The point of view on how resources are shared depends on the individual's status:\r\nIf someone is socially dominant they will have a preference for hierarchical relationships and distribution based on merit.\r\nIf someone is low on social dominance they will tend to favour social qualities and distribution based on needs.	Sharing resources -> Depends on the person's status	Pratto, Tartar, & Conway-Lanz, 1999\r\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
124	To go against the norm and hierarchy people have to use deception; they hide their behaviour from others and avoid attracting attention.\r\nThe norms usually make such behaviours forbidden and punishable.	Go against the norm -> Creation of secret	Cummins, 1996a, 1998, 2000
125	The status of an individual raises by maintaining alliances with others, mainly through reciprocal obligations.\r\n\r\nYour status might also raise when you challenge a high ranking individual and win.	Status raise -> Keep alliances -> Win over others with higher status	Chapais, 1988, 1992; Harcourt & de Waal, 1992; Riss & Goodall, 1977; Uehara, Hiraiwa-Hasegawa, Hosaka, & Hamai, 1994\r\nDawkins, 1976\r\nDominance, Status, and Social Hierarchies - DENISE CUMMINS
126	Social reasoning emerges early in development.\r\nChildren have a firm grasp of the implications of socially prescriptive rules, like adults do.\r\n\r\nThey also learn early how to bent/manipulate the rules.	Children -> Learn early about social rules	Sodian, 1991\r\nDominance, Status, and Social Hierarchies - HOW DEVELOPMENT INFORMS EVOLUTIONARY EXPLANATIONS OF SOCIAL DOMINANCE EFFECTS - DENISE CUMMINS
127	A loss of status or facing someone with better status induces many different feelings:\r\nA deep sense of shame; characterized by the avoidance of eye contact, lower chin, avoiding social encounter, etc..\r\nRage and depression, or submissive behaviour to appease others and avoid future humiliation.\r\nEnvy (due to a loss or inequality in status). This emotion can trigger destructive behaviour, especially if the field of success is one that the individual is deeply linked with.\r\n\r\nThe degree of satisfaction with one-self has also an effect on status (self-esteem).\r\n\r\n\r\nPeople tend to like others that make them feel good about themselves. Targets of envy make others feel bad, the discomfort they entice triggers actions to attack their status.\r\nFor example: gossip, malicious acts, etc..	Loss or difference in status -> Strong conflicted feelings between individuals	Wicker, Payne, & Morgan, 1983\r\nGilbert, 1990\r\nForrest & Hokanson, 1975\r\nRamson, 1988\r\nFeather (1994)
128	Memes: Units of imitation which can replicate themselves in culture the same way genes do in nature.\r\n\r\nThis concept explains cultures, languages, and norms.	Memes -> Social genes	Dawkins, 1976\r\nBlackmore, 1999\r\nDonald (2001)
129	Attractive females focus more on men with masculine faces.	Attractive women -> Prefer Masculine men	Little, Burt, Penton-Voak, & Perrett, 2001\r\n
130	Biases are design features.\r\nThey arise when no evidence of logic is found.\r\nThey work as a shortcut, valid in many cases.\r\nThey are useful in situations where there are processing limitation or the processing of choices is costly.\r\nThey are also created for tasks that the mind has not been designed to conceive.\r\n\r\nIf processing isn't costly than the bias is removed.	Biases -> Shortcut to processing information	Tversky and Kahneman 1974, p. 1124\r\nFehr & Gächter, 2000; Fehr, Gächter, & Kirchsteiger, 1997; see also Güth & van Damme, 1998\r\nTversky & Kahneman, 1974; see Gilovich, Griffin, & Kahneman, 2002, for a recent review; see Kahneman, 2003, for a recent theoretical treatment\r\nArkes (1991)
131	At an early age children learn to respect authority figures.\r\nThe same is present in adults, they also respect authority figures.\r\n\r\nThey are influenced and intimidated by them.	Children -> Influenced and intimidated by authority figures	Milgram’s (1974)\r\nOsherow, 1995\r\nThe Evolution of Morality - DENNIS KREBS
162	First born have in average 1 IQ point higher than other siblings.\r\nThis might be due to the fact that first born have/had to take care of other siblings.	First born -> Take care of future siblings -> Higher IQ	Sibling constellation, creativity, IQ, and academic achievement - VG Cicirelli\r\nBirth order and intelligence - LL Thurstone, RL Jenkins\r\nThe relation of measured intelligence to birth order and maternal age - RG Record, T McKEOWN
132	social/game theory:\r\nTit for tat is a big winner in most populations.\r\nIt consists in acting "kindly" on first encounter and "roughly" if the partner doesn't cooperate.\r\n\r\nThis type of strategy is called an altruistic strategy.\r\n\r\nAltruistic strategies open the door for selfish ones to flourish.\r\nIn a population where tit for tat won over the equilibrium, totally altruistic strategies (no reprehension) spread and cannot be distinguished from tit-for-tat.\r\n\r\nWhich leave an advantage to abusers.\r\n\r\nPeople can access if another person will cooperate by checking their status or reputation or by using their social biases.	Altruistic strategies -> Leave room for selfish ones if no policing	Tit for tat in sticklebacks and the evolution of cooperation - M Milinski\r\nThe selfish gene - Dawkins\r\nTrivers (1971)\r\nAxelrod and Hamilton (1981)
133	Positive illusion: The inner bias to overstate oneself.\r\n\r\nIt might be used to gain trust from others or to appease the mind.	Positive illusion -> People see themselves better than they are	Taylor & Brown, 1988\r\nAlicke, 1985\r\nWeinstein, & Abramson, 1979; Rudski, 2000\r\nSedikides, Gaertner, & Toguchi, 2003
134	Depending on the situation, the way we think of something differs.\r\nUnder pressure we cannot think of all the complex alternatives and thus use shortcuts or simple rules based on past scenarios (bias).\r\n\r\nMany rules defined for many situations.\r\n\r\nIt's better to have a false positive than a false negative.\r\n\r\nFor example: People avoid eating the same food if they get sick right after eating it. Even in the case where it wasn't related with the food. The opposite might be fatal.	Bias -> Set of generic rules -> Better false positive than false negative	Guthrie, 1993; Haselton & Buss, 2000; Öhman & Mineka, 2001\r\n
135	Low status individuals allocate more time and energy to social judgements than do more powerful individuals.	Low status -> Focus more on social judgement	Keltner, Gruenfeld, & Anderson, 2003
136	Out-groups are seen as more dangerous, mean, and less generous.	Bias towards out-group -> Dangerous and Selfish	Brewer, 1979\r\nQuillian & Pager, 2001\r\nThe Evolution of Cognitive Bias - MARTIE G. HASELTON, DANIEL NETTLE, and PAUL W. ANDREWS
137	The role of morality is to fight against defectors in the social equilibrium and to keep cooperation ongoing.\r\n\r\nWe discern 5 stages of morality:\r\n\r\nStage1:\r\nAvoid punishment\r\nRespect authority\r\nAvoid Damage\r\n\r\nStage2:\r\nExchange\r\nMaking deals\r\n\r\nStage3:\r\nUpholding mutual relationship\r\nHaving roles (trust, respect)\r\nBeing viewed as good\r\nShowing concern\r\n\r\nStage4:\r\nMaintaining a social system\r\nObeying rules and laws\r\n\r\nStage5:\r\nContributing to society\r\nFulfilling social obligations freely agreed upon; stands on the greatest good for the greatest number\r\nEquality	Morality -> Social equilibrium	Colby & Kohlberg, 1987, pp. 18-19
138	Women tend to make more stage3 moral judgements.\r\n\r\nWhich refers to:\r\n\r\nUpholding mutual relationship\r\nHaving roles (trust, respect)\r\nBeing viewed as good\r\nShowing concern\r\n\r\nThis is explained by their role in nurturing.	Female -> Moral judgements based on role and concerns	Gilligan (1982)\r\nCare-oriented moral reasoning and prosocial behavior: A question of gender or sex role orientation - I Söchting, EE Skoe, JE Marcia
139	Social learning and reason are overrated in the inculcation of morality.\r\nConditioning, vicarious learning, and identification with others play a bigger role.\r\n\r\nSocieties are supported by reward and punishment. If there are no punishment people will always break rules, behave immorally, and cheat.	Morality -> Based on conditioning	Aronfreed, 1968; Freud, 1926; Higgins, 1987; Kohlberg, 1984; Mead, 1934\r\nThe Evolution of Morality - DENNIS KREBS\r\n
140	In dangerous situations people prefer to stay in group or crowd. It makes them feel secure.	Danger -> Crowd/Group makes people feel better	Wisman and Koole (2003)\r\nTaylor (2000)
141	Women prefer to tend and befriend rather than fight or flight.\r\nFor men it's the opposite.	Women/Men -> Friends/Fight	Taylor and colleagues (2000)
142	The role of female orgasm is still unclear, however:\r\nIf it happens 1 min before or 45 min after ejaculation there is a higher chance of retaining sperm.\r\nIt is hypothetical that this will result in more likelihood of conception. Retaining the sperm doesn't mean more chance of conception.\r\n\r\nThe concern men show about whether their partner achieve orgasm or not might signify that female orgasm has an evolutionary role.	Female orgasm -> Retain sperm	Pound & Daly, 2000\r\nBaker and Bellis (1995)\r\nPound, 1999; Zavos, 1988\r\nThornhill et al., 1995
143	Parents invest in children that have the most profitable reproductive return.\r\nBoys: In the future they can have many offspring with multiple partners. To achieve this they have to compete against other males for mates.\r\nGirls: In the future they are assured offspring but are limited to having children.\r\n\r\nThere is a tendency for couples with abundant resources to invest more in boys and for resource-poor couples to invest in girls.	Parental investment -> Choose according to reproductive success	Alexander, 1979; Fairbanks, 1993\r\nDaly & Wilson, 1988; Trivers & Willard, 1973
144	Humans spend more time as "prereproductives" than any other mammal.\r\nThis is so that children focus on learning social rules instead, and on human interaction.	Long time to become reproductive -> Learn social rules	Tomasello, 1999\r\nEvolutionary Developmental Psychology - DAVID F. BJORKLUND and CARLOS HERNÁNDEZ BLASI
145	Apart from the in-group favouritism and out-group fear and hostility there is a feeling of reciprocity with the in-group and status seeking within it.	In-group -> Reciprocate with them -> Want to raise status compared to them	Harris (1995)
146	Children learn more through games than through normal learning.	Chidlren -> learn more from games	Steen & Owens, 2001\r\nHyson, Hirsh-Pasek,& Rescorla, 1990). Geary (2005)
147	In a group with a high number of assertive and dominant extrovert, there is a benefit for individuals of low extroversion (game theory).	Equilibrium in group depending on personality types	Figuredo and King (2001)\r\nEvolutionary Personality Psychology - AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS
160	Men have problems with premature ejaculation which might have been favoured because of the limited time for conception in stressful or dangerous situations. This problem arises in young, fearful, and stressed men more frequently.\r\n\r\nWomen have the opposite problem, they take a longer time to reach orgasm, which might have been favoured so they have fewer children.	Premature ejaculation and lack of women orgasm -> Stress and investment	Troisi, 2003\r\nSymons, 1979\r\nEvolutionary Psychology and Mental Health - RANDOLPH M. NESSE
148	Personality is a mix of the following:\r\n\r\nA range of heritable alternatives mechanism to deal with the world.\r\nTraits created by situation dependant mechanism.\r\nA momentarily calibration.\r\n\r\nNot all strategies (personalities) are viable in a population. Some populations restrict them because of the environment.\r\n\r\nFitness traits are favoured if passed genetically and show a high genotypic variance and variability (we can clearly make a difference between individuals having it and those who don't).\r\n\r\nMen tend to have personality traits that go along with dominance, extroversion, risk taking.\r\nWomen tend to have personality traits that go along with nurturance and love.\r\n\r\n\r\nOn the opposite of what was mentioned earlier: The more a society let people have free interaction between them, the more there are different personality types.\r\n\r\nLet's also not that if there is an optimal personality trait in the current environment, no new trait will appear different from it.	Personality -> A mix of traits viable in the environment -> Traits are chosen according to and equilibrium	Buss, 1991\r\nBuss, 1997\r\nMiller (2000)\r\nWeiss, King, and Enns (2002)\r\nMacDonald (1998, p. 142)\r\nWilson (1994) and Figueredo and King (2001)\r\nEvolutionary Personality Psychology - AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS
149	When a mate is chosen a mechanism is put in place to prevent wandering.\r\n\r\nThere's a positive bias toward partner when committed and negative for potential mates.\r\n	Committed to relationship -> Positive bias towards partner	Simpson, Gangestad, & Lerma, 1990\r\nR. S. Miller, 1997\r\nEvolutionary Social Psychology - DOUGLAS T. KENRICK, JON K. MANER, and NORMAN P. L
150	Ideas around memory:\r\n\r\nMaintaining an item once it has been added to long term memory.\r\nKeeping it in a flexible form.\r\nSilencing irrelevant information.\r\n\r\nWe selectively remember information; It is too costly to remember everything.\r\n\r\nChildhood amnesia from abuse has a role in protecting children from the knowledge that a key caregiver may be a perpetrator. Which is a prerequisite for maintaining a crucial relationship/survival.\r\n\r\nWhen missing clues from the past people go back and create steps that could possibly lead to the same judgement, reinforcing the biases and prejudices. (confirmation bias)\r\n\r\nIn a world where the environment constantly changes, literally recalling information is unimportant.\r\n\r\nSmall samples of memory act like biases, together they form correlations and shortcuts of thoughts.\r\n\r\nDecision making is about weighting the choices against each others.\r\n\r\nProcessing information that is a consequence of longer evolutionary time, for example the ones we already have biases on at birth, is easier than processing information that has recently been introduced in the human species (car, computers, etc..).	Memory -> Remember what is important -> Shortcut for future choices	Kareev, 1995a, 1995b, 2000; Kareev, Lieberman, & Lev, 1997\r\nAtkinson & Shiffrin, 1968\r\nBartlett (1932/1995)\r\nHertwig, and Gigerenzer (2000)\r\nEvolutionary Cognitive Psychology - PETER M. TODD, RALPH HERTWIG, and ULRICH HOFFRAGE
1	Happiness is highly correlated with fitness.\nFitness is usually defined as surviving abilities and fecundity.\n\nDepression and anxiety are correlated with heart diseases, asthma, peptic ulcers, and headaches.	happiness -> fitness	Evolutionary Personality Psychology\n(AURELIO JOSÉ FIGUEREDO, JON A. SEFCEK, GENEVA VASQUEZ, BARBARA H. BRUMBACH, JAMES E. KING, and W. JAKE JACOBS)\nhttp://www.u.arizona.edu/~ajf/pdf/Figueredo,%20Sefcek,%20Vasquez,%20Brumbach,%20King%20&%20Jacobs%202005.pdf\nThe influence of anxiety and depression on outcomes of patients with coronary artery disease - JL Januzzi, TA Stern\nAnxiety and depression are associated with unhealthy lifestyle in patients at risk of cardiovascular disease - F Bonnet, K Irving, JL Terra, P Nony, F Berthezène
151	Women have a reproductive advantage when their personality joins: high neuroticism (emotional disorder/obsession) and low extroversion (extrovert) or low neuroticism and high extroversion.	Female reproductive advantage in personality -> High neuroticism + low extroversion or low neuroticism + high extroversion	Personality and reproductive fitness\r\nLJ Eaves, NG Martin, AC Heath, JK Hewitt, MC Neale 
152	The difficulty for a woman to recognize and share emotions is inversely correlated with the frequency of penile-vaginal intercourse.\r\n\r\nMore intercourse is also correlated with better physical and mental health.	Women -> More sex -> More open with emotions	Alexithymia is inversely associated with women's frequency of vaginal intercourse - S Brody 
153	For men, extroversion and social assertion are inversely correlated with fertility.\r\nIn contrast, men from infertile coupled showed score low on critique anxiety, showing guilt, norm orientation, and an inability to resist demands.	Men -> Extrovert -> Low fertility	Hellhammer, Hubert, Phil, Frieschem, and Nieschlag (1985)
154	Extroversion is correlated with promiscuity and inversely correlated with nervousness and prudishness.	Extrovert -> Promiscuous	Eysenck (1976) and Wilson (1997)
155	The most desired traits in a partners are: Kindness, understanding, and intelligence.\r\n\r\nOther desired traits: Considerate, honest, affectionate, dependable, interesting to talk to, loyal.\r\n\r\nSpecific traits for women: Physical attractiveness, good cook, frugal.\r\nSpecific traits for men: Good earning, dependable, ambitious, good family background, altruism, tall.\r\n\r\n\r\nIt's also important to note that individuals prefer similarity mating (same traits in both partner) more than complementary mating.\r\nThe theory behind similarity mating, genetic similarity theory:\r\nTheir phenotype matches and so they are more close linked genetically (Identity by State) thus preserving the coherence of their genome.\r\nIt consequentially increases the relatedness of parents to children.\r\n\r\nOn a side note, older couples then to choose partners that are less similar to them.		Buss (1984)\r\nRushton, 1989\r\nvan den Berghe, 1983\r\nGlazer, 1975\r\nAltruism and Genetic Relatedness - EUGENE BURNSTEIN
156	Men prefer tender-minded partners.\nWomen prefer tough-minded partners.\n\nMarital satisfaction is lower when men have high libido.\nThis fact is unrelated to the woman's libido in the couple.\n\nDissimilarities (difference in personality between partners), is correlated with divorce.	Men/Women preference -> Tough/Tender, Men high libido -> Marital unsatisfaction	Buss (1984)\nNovgorodoff (1974)\nEysenck and Wakefield (1981)\nLum & Curran, 1975\nKeller, Thiessen, and Young (1996)
157	Natural selection aims for reproduction success, not health nor cooperation.\r\nA gene that raises reproductive success but lower longevity will spread.\r\n\r\nThis is an indirect explanation to bitter competition, envy, greed, sexual desire, and jealousy.	Genes spread only for reproductive success and nothing else	Buss, 2000\r\nCronin, 1991; Daly & Wilson, 1983; Geary, 1998; Kruger & Nesse, 2004
158	Stress in early development is related to mental disorder and foetal brain development.\r\n\r\n	Stress early in life -> Mental disorders	The potential influence of maternal stress hormones on development and mental health of the offspring - M Weinstock
159	Seeing another person express fear to something creates a bias for future fear and avoidance.\r\n\r\nPost traumatic stress disorder: A constant stress and fear from cues or recurrence of the dangerous situation that arises from a traumatic past event.	See on person fear -> Build bias for own fears	Mineka, Keir, & Price, 1980\r\nBreslau, Davis, & Andreski, 1995
163	r strategy:\r\nExcessive resources, quantity over quality\r\nAversion to competition\r\nPromiscuity\r\nLow investment\r\nSingle parenting and little care for offspring\r\nFather absence\r\nEarly sexual maturity\r\nLow ingroup loyalty\r\nHigh level of sex hormones and fertility\r\nAggressive and risk takers\r\nAttracted to short term but long term detrimental strategies\r\nCorrelated with criminality and violence\r\nMore envy and willingness to break rules (See status)\r\nLess optimism and diminished reward incentives this correlates with anxiety, depression, and neuroticism\r\n\r\nMore frequent in dangerous environment but always has an opportunity for expansion.\r\nChildhood stress is linked to an r-strategy.\r\n\r\n\r\nK strategy:\r\n\r\nScarce resources, quality over quantity\r\nEmbrace competition\r\nDelayed, monogamous sexuality\r\nHigh investment and dual parenting\r\nSmall number of offspring\r\nCare for offspring\r\nLate sexual maturity and activity\r\nHigh ingroup loyalty\r\nHigh level of empathy\r\nTendencies toward feeling of disgust (see Morals)\r\nDesire to win ingroup status\r\n\r\nMore frequent in safe environments.\r\n\r\nThere should be an equilibrium between the number of K and r individuals in a global population. Otherwise the system looses its stability.	Social strategies explained with r/K theory	From Quantity to Quality of Life: rK selection and human development - F Heylighen, J Bernheim\r\nSexuality, delinquency and r/K reproductive strategies: Data from a Canadian University sample\r\nAuthor links open the overlay panel. Numbers correspond to the affiliation list which can be exposed by using the show more link - Anthony F. Bogaert, J. Philippe Rushton\r\nThe r - K Continuum and the Relative Effectiveness of Sexual Selection - Denson Kelly McLain\r\nPlacing intelligence into an evolutionary framework or how g fits into the r–K matrix of life-history traits including longevity - JP Rushton\r\nr-and K-selection revisited: the role of population regulation in life-history evolution - D Reznick, MJ Bryant, F Bashey\r\nThe K-factor, covitality, and personality - AJ Figueredo, G Vásquez, BH Brumbach\r\nAn evolutionary perspective on human fertility - K MacDonald\r\nDo rK strategies underlie human race differences? A reply to Weizmann et al - JP Rushton\r\n
164	Stress is correlated to insecure attachment to mother and lack of support or to inability to explore the world. (neglect or over-concern)\r\n\r\nStress affects the development of the consolidation of memories, thus the build up of experiences.	Childhood stress -> Neglect or over-concern from mother	The influence of mothers on their children's health attitudes and behavior - D Mechanic\r\nChild-mother attachment and the self in six-year-olds - J Cassidy\r\nhttps://en.wikipedia.org/wiki/Maternal_deprivation
\.


--
-- Name: note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('note_id_seq', 164, true);


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
\.


--
-- Name: categories_category_key; Type: CONSTRAINT; Schema: public; Owner: raptor; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_category_key UNIQUE (category);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: note_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor; Tablespace: 
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

