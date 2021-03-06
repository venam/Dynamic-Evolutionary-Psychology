--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: note id; Type: DEFAULT; Schema: public; Owner: raptor
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
30	memory	A subset of the cognitive defenses; Memory keeps what is important and filters what is not.
3	mate guarding	It's important to keep your mate for yourself, how does this happen.
29	r VS K strategies	The r vs K strategies are: \nr : like rabbits, herbivore and calm \nK : like wolves, carnivore and ferocious\nThis theory is a bit bleak, and falls into the black and white fallacy. A single individual can act in an r way for certain things and K way for others. However, it still is interesting to dig in.
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('categories_id_seq', 30, true);


--
-- Data for Name: note; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY note (id, content, smaller, research) FROM stdin;
11	Male are good at spacial orientation; finding locations and creating mental maps. They are imagining objects in different angle in space.	Male -> Good with mental maps	Bosco, Andrea, Anna M. Longoni, and Tomaso Vecchi. "Gender Effects in Spatial Orientation: Cognitive Profiles and Mental Strategies." Applied Cognitive Psychology 18.5 (2004): 519-32. Web.\n\n@NautilusMag. "Men Are Better At Maps Until Women Take This Course - Issue 32: Space." Nautilus. N.p., 28 Jan. 2016. Web. 22 Dec. 2016.\n\nSkarf, Barry, Mark J. Kupersmith, and Patricia J. McNussen. "Visual Perceptual Differences Between Men and Women." NANOS 1996: Women Symposium (1996): n. pag. Web. 22 Dec. 2016.
12	Women are better at finding landmarks; With a detailed visualization they can remember small details in their close environment. They can quickly and easily notice changes in their surrounding.	female -> good at detailed visualization	Bosco, Andrea, Anna M. Longoni, and Tomaso Vecchi. "Gender Effects in Spatial Orientation: Cognitive Profiles and Mental Strategies." Applied Cognitive Psychology 18.5 (2004): 519-32. Web.\n\n@NautilusMag. "Men Are Better At Maps Until Women Take This Course - Issue 32: Space." Nautilus. N.p., 28 Jan. 2016. Web. 22 Dec. 2016.\n\nSkarf, Barry, Mark J. Kupersmith, and Patricia J. McNussen. "Visual Perceptual Differences Between Men and Women." NANOS 1996: Women Symposium (1996): n. pag. Web. 22 Dec. 2016.\t\t
13	Girls are better at tree climbing than boys. They used to seek refuge in trees.	Women -> better tree climbers\t\t\t\t	Coss, Richard G., and Michael Moore. "Precocious Knowledge of Trees as Antipredator Refuge in Preschool Children: An Examination of Aesthetics, Attributive Judgments, and Relic Sexual Dinichism." Ecological Psychology 14.4 (2002): 181-222. Web.
14	For men reproduction is short and low cost. It only comes down to inseminating a female.	Men -> reproduction time is short	"Evolutionary Psychology." Wikipedia. Wikimedia Foundation, n.d. Web. 22 Dec. 2016.\n\nBuss, David M., and David P. Schmitt. "Sexual Strategies Theory: An Evolutionary Perspective on Human Mating." Psychological Review 100.2 (1993): 204-32. Web.
15	Male use promises of material, violence, conceal their partner, and use submission to mate guard their partner.	Male -> use force and material to keep partner	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.
16	Men socially tend to put more importance in coming out ahead. They put importance in being in front of the social row.	Men -> Come out ahead	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.
17	Sperm are plentiful compared to eggs.\n\nFemales spend more time and energy than males in the conception because the infant grows in their body.\nThere are risks accompanied by carrying a child.	Female -> reproduction time is long and high risk	Cummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
18	In their ovulation phase, women avoid risky places.\nThey also favor physically able men during this phase.\n\nGo with the most exotic and strong man you can find, get the best genes possible.\n\nIn the hunter-gatherer society, it was frequent to have women taken as hostage after wars, as war trophy. Creating a sort of Stockholm syndrome.\n\nHowever, during ovulation women prefer stable, resourceful, and men that have potential.	Women -> ovulation -> avoid risk	GuÃ©guen, Nicolas. "Risk Taking and Womenâs Menstrual Cycle: Near Ovulation, Women Avoid a Doubtful Man." Letters on Evolutionary Behavioral Science 3.1 (2012): n. pag. Web.\n\nBrownmiller, Susan. Against Our Will: Men, Women and Rape. New York: Simon and Schuster, 1975. Print.
19	Women are more focused on maintaining social harmony.\nThey like to create social networks and link people together to share goods.	Women -> Social harmony	Maccoby, Eleanor E. "Gender and Relationships: A Developmental Account." American Psychologist 45.4 (1990): 513-20. Web.\n\nPratto, David J. "Assessment Abuse by Design." Teaching Sociology 24.1 (1996): 119. Web.\n\nEdwards, C. P., and B. B. Whiting. "Women and Dependency." Politics & Society 4.3 (1974): 343-55. Web.
20	Female use their appearance, jealousy, and desirability to keep their mate.\nTheir mate guarding revolve around attention and investment.	Female -> use desirability to keep partner	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.
22	Fear is a signal of protection against pain or death.\nIt's better to be false positive than false negative.\n\nFor example: If someone gets sick after eating a certain type of food he'll avoid the food even though he might have not gotten sick directly because of it. Avoiding the food has no major drawbacks but eating it again might kill the person.	Fear -> Signal of danger\t\t\t	Becker, Gavin De. The Gift of Fear: Survival Signals That Protect Us from Violence. Boston: Little, Brown, 1997. Print.
26	Female have an "auto-abortion" mechanism to avoid the wasteful investment in offspring that would die young.\n\nThe chance of miscarriage raises because of stress, mood swing, or bad mother of child health conditions.\n\nIt is both to keep the mother from bringing and weak child into the world and to keep her from investing too much in her child when the surrounding environment is too dangerous.	Female -> Miscarriage correlated with danger\t\t\t\t	@newscientist. "Stressed Mothers May Risk Early Miscarriage." New Scientist. N.p., n.d. Web. 24 Dec. 2016.\n\nLarsen, Elisabeth Clare, Ole Bjarne Christiansen, Astrid Marie Kolte, and Nick Macklon. "New Insights into Mechanisms behind Miscarriage." BMC Medicine 11.1 (2013): n. pag. Web.\n\n"Pregnant Monkeys Miscarry to Avoid Infanticide." LiveScience. Purch, n.d. Web. 24 Dec. 2016.
24	Positive mood is correlated with risk seeking and exploration.\n\nWhen things are going smooth it is time to grow in new domains.	Positive Mood -> risk seeking\t\t	Carducci, Bernardo J. The Psychology of Personality: Viewpoints, Research, and Applications. Malden, MA: Wiley-Blackwell, 2009. Print.
29	Mate guarding strategies have been developed as ways to prevent infidelity and poaching.	Mate guarding -> Against Infidelity	Conroy-Beam, Daniel, Cari D. Goetz, and David M. Buss. "What Predicts Romantic Relationship Satisfaction and Mate Retention Intensity: Mate Preference Fulfillment or Mate Value Discrepancies?" Evolution and Human Behavior 37.6 (2016): 440-48. Web.\n\nBuss, David M. "Human Mating Patterns." PsycCRITIQUES 36.4 (1991): n. pag. Web.\n\nGoetz, Aaron T., Todd K. Shackelford, Viviana A. Weekes-Shackelford, Harald A. Euler, Sabine Hoier, David P. Schmitt, and Craig W. Lamunyon. "Mate Retention, Semen Displacement, and Human Sperm Competition: A Preliminary Investigation of Tactics to Prevent and Correct Female Infidelity." Personality and Individual Differences 38.4 (2005): 749-63. Web.
32	There are many physical factors that are taken in consideration when mate choosing:\n\n* Skin quality\n* Hair quality (especially for female)\n* Oral health\n\nIn general, those are all cues of a strong body and health.	Choose mate that has a resistant body\t\t	Sugiyama, Lawrence S. "Physical Attractiveness: An Adaptationist Perspective." The Handbook of Evolutionary Psychology (2015): 1-68. Web.
33	The more a couple spends  time apart the more the man is motivated to inseminate his partner.\nIt is directly related to the time spent apart from his partner.\n\nIt is possibly a mechanism to fight against sperm competition or to drive the male to come back home after a long trip. Strengthening the bonding and investment in the relationship.	More time spent apart -> More want to inseminate	Shackelford, Todd K., Nicholas Pound, Aaron T. Goetz, and Craig W. Lamunyon. "Female Infidelity and Sperm Competition." The Handbook of Evolutionary Psychology (2015): 372-93. Web.
36	During their ovulation period women are more attracted to the pheromones and body odors (ex: sweat) of well built men.	Ovulation -> Women more attracted to well built men\t\t\t	Sugiyama, Lawrence S. "Physical Attractiveness: An Adaptationist Perspective." The Handbook of Evolutionary Psychology (2015): 1-68. Web.\n\nKuukasjarvi, S. "Attractiveness of Women's Body Odors over the Menstrual Cycle: The Role of Oral Contraceptives and Receiver Sex." Behavioral Ecology 15.4 (2004): 579-84. Web.
34	A female fertility and fertility potential are the most important traits a man is attracted to.	Men -> Prefer fertile women\t\t	Geary, David C., Jacob Vigil, and Jennifer ByrdâCraven. "Evolution of Human Mate Choice." Journal of Sex Research 41.1 (2004): 27-42. Web.
39	Women short term mating strategy focuses on obtaining high value men.\n\nThey strive for the most exotic and high quality genes.\n\nThis strategy is taken more frequently during their ovulation period.	Women -> Short term -> Ovulation -> High value men	Buss, David M., and David P. Schmitt. "Sexual Strategies Theory: An Evolutionary Perspective on Human Mating." Psychological Review 100.2 (1993): 204-32. Web.\n\nLi, Norman P., and Douglas T. Kenrick. "Sex Similarities and Differences in Preferences for Short-Term Mates: What, Whether, and Why." Journal of Personality and Social Psychology 90.3 (2006): 468-89. Web.\n\nHaselton, Martie G., and Steven W. Gangestad. "Conditional Expression of Women's Desires and Men's Mate Guarding across the Ovulatory Cycle." Hormones and Behavior 49.4 (2006): 509-18. Web.
37	In non-ovulatory periods women prefer men that show "good father" attributes.\n\nThose attributes are related to investment, resources, dedication, passion, altruism, and potential.	Non-Ovulatory period -> Prefer good father men	Gangestad, Steven W., Randy Thornhill, and Christine E. Garver-Apgar. "Adaptations to Ovulation. Implications for Sexual and Social Behavior." Current Directions in Psychological Science 14.6 (2005): 312-16. Web.\n\nDurante, Kristina M., Vladas Griskevicius, Jeffry A. Simpson, Stephanie M. CantÃº, and Norman P. Li. "Ovulation Leads Women to Perceive Sexy Cads as Good Dads." Journal of Personality and Social Psychology 103.2 (2012): 292-305. Web.\n\nHaselton, Martie G., and Geoffrey F. Miller. "Womenâs Fertility across the Cycle Increases the Short-term Attractiveness of Creative Intelligence." Human Nature 17.1 (2006): 50-73. Web.\n\nGangestad, Steven W., Randy Thornhill, and Christine E. Garver-Apgar. "Women's Sexual Interests Across the Ovulatory Cycle." The Handbook of Evolutionary Psychology (2015): 1-24. Web.
40	Monogamy enhances male alliances.\n\nBy reducing competition and creating social bounds between monogamous nuclear families males can focus on working together.	Monogamy -> Male alliances.	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nConnor, RICHARD C., ANDREW J. Read, and R. I. C. H. A. R. D. Wrangham. "Male reproductive strategies and social bonds." Cetacean societies: Field studies of dolphins and whales (2000): 247-269.
41	Children need long term investment.\n\nA mate leaving the couple equates to a low survival rate for the offspring.\n\nThe investment put into children is inversely proportional to the fact that the persons are unmarried, polygamous, have been married more than once.\nWhich means that in those cases the person is less likely to invest in his or her young.	Children -> Long term investment -> less investment if have other options	Geary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.
42	The mechanisms put in place to build strong monogamous couples:\n\n* Pair bonding\n* Attachment\n* Strong feelings\n* Emotions	Monogamy -> Feelings of attachment\t\t\t\t	Schmitt, David P. "Fundamentals of Human Mating Strategies." The Handbook of Evolutionary Psychology (2015): 1-23. Web.\n\nGould, Eric D., Omer Moav, and Avi Simhon. "The Mystery of Monogamy." SSRN Electronic Journal (n.d.): n. pag. Web.\n\nSchorÃ¶der, Inge. "Concealed Ovulation and Clandestine Copulation: A Female Contribution to Human Evolution." Ethology and Sociobiology 14.6 (1993): 381-89. Web.\n\nBoer, A. De, E.m. Van Buel, and G.j. Ter Horst. "Love Is More than Just a Kiss: A Neurobiological Perspective on Love and Affection." Neuroscience 201 (2012): 114-24. Web.
45	Factors linked to mate value:\n\n* Agreeableness\n* Commitment (Altruism, Cooperation, Trust)\n* Physical Prowess (Strength, protection)\n* Emotional Stability (Calmness and stability)\n* Surgency (Dominance, leadership)\n* Physical attractiveness (Good genes, fertility)	Factors related to mate value -> Good genes, Long run partner, Stable and strong	Campbell, Lorne, and Bruce J. Ellis. "Commitment, Love, and Mate Retention." The Handbook of Evolutionary Psychology (2015): 419-42. Web.\n\nSimpson, Jeffry A., and Lorne Campbell. "Trait-Specific Dependence in Romantic Relationships." Journal of Personality 70.5 (2002): 611-60. Web.
120	Social dominance is the first social organization a child learns.\n\nThe way it's first perceived affects the child's personality throughout life.\n\nDistinction between facial expressions is also learned at an early age.	Children -> Learn social hierarchy from a young age	Frankel, Daniel G., and Tali Arbel. "Group formation by two-year olds." International Journal of Behavioral Development 3.3 (1980): 287-298.\n\nStrayer, Floyd F., and M. Trudel. "Developmental changes in the nature and function of social dominance among young children." Ethology and Sociobiology 5.4 (1984): 279-295.
49	When a father interacts in games with children, through physical activities or education, the children are:\n\n* More social and popular\n* More positive and have less emotionally unstable\n* Less psychologically difficult\n* Better in academic performances\n* Less aggressive\n* More motivated\n\nThis might be linked to genes for intelligence, impassivity, and personality.\nMeaning that it might not be directly related to the parent interaction but to a genetic cause.	Parental investment -> Calm and intelligent children	Geary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.\n\nHertwig, Ralph, Jennifer Nerissa Davis, and Frank J. Sulloway. "Parental Investment: How an Equity Motive Can Produce Inequality." Heuristics (2011): 670-92. Web.\n\nErmisch, John, and Marco Francesconi. "Family Matters: Impacts of Family Background on Educational Attainments." Economica 68.270 (2001): 137-56. Web.
51	Fertility, fecundity, and future value are factors in the mate choosing process.\n\nPartners want to access the future reproductive value and investment of their mate.	Mate choice -> Future value of mate is also important	Sugiyama, Lawrence S. "Physical Attractiveness: An Adaptationist Perspective." The Handbook of Evolutionary Psychology (2015): 1-68. Web.\n
52	Male have an unconscious vigilance at noticing female ovulation.\n\nIt forges cooperation between the sexes: Men protect their partner during the critical phase and other men don't steal women from other mates.\nIt's a mutual respect.\n\nThe "sperm competition" theory goes in accordance with this.\n\nMen don't want any other men around their female, they fight even at the level of the sperms.\nThis explains why men have relatively large penis/body ratio compared to other apes, the role of female orgasm to retain sperms and why men are worried about it, male vigilance at women fertility, etc...	Men -> vigilance at women ovulation\t	Gangestad, Steven W., Randy Thornhill, and Christine E. Garver-Apgar. "Adaptations to Ovulation." The Handbook of Evolutionary Psychology (2015): 344-71. Web.\n\nBaker, R. Robin, and Mark A. Bellis. "Human Sperm Competition: Ejaculate Manipulation by Females and a Function for the Female Orgasm." Sperm Competition in Humans (n.d.): 177-210. Web.
53	Women have a higher chance of becoming pregnant from men they have previously copulated with.\n\nThis is a defense against having children from a man that doesn't want to invest.	Copulation -> More chance of pregnancy if had previous intercourse	Shackelford, Todd K., Nicholas Pound, Aaron T. Goetz, and Craig W. Lamunyon. "Female Infidelity and Sperm Competition." The Handbook of Evolutionary Psychology (2015): 372-93. Web.
54	Parental care is needed for infants growth and survival.\n\nThey demand time, food, and protection until mature.\n\nA child without parents nor any relative has almost no chance of survival.	Children -> Need investment until mature\t\t	Barber, Nigel. Why parents matter: Parental investment and child outcomes. Greenwood Publishing Group, 2000.\n\nBarber, N. "Does Parental Investment Increase Wealth, or Does Wealth Increase Parental Investment?" Cross-Cultural Research 36.4 (2002): 362-78. Web.
56	There is a correlation between a good and stable relationship and the perception of ideal mate and the number of disagreements the persons in the couple have.	Happy relationship -> Less disagreements\t\t	Campbell, Lorne, and Bruce J. Ellis. "Commitment, Love, and Mate Retention." The Handbook of Evolutionary Psychology (2015): 419-42. Web.\n\nAcitelli, Linda K., David A. Kenny, and Debra Weiner. "The Importance of Similarity and Understanding of Partners' Marital Ideals to Relationship Satisfaction." Personal Relationships 8.2 (2001): 167-85. Web.
57	Time is a costly asset.\n\nThe more time a couple spends time together the less likely they are to breakup.	More time together -> Less chance of breakup	Campbell, Lorne, and Bruce J. Ellis. "Commitment, Love, and Mate Retention." The Handbook of Evolutionary Psychology (2015): 419-42. Web.
58	Factors influencing the choice of a mate:\n* Provisioning\n* Protection\n* Parental nurturance\n* Sexual access\n* Commitment	Mate choice -> All aspect based on avoidance of risk	Campbell, Lorne, and Bruce J. Ellis. "Commitment, Love, and Mate Retention." The Handbook of Evolutionary Psychology (2015): 419-42. Web.
59	Aggression is a mean to acquire or defend resources.	Aggression -> defend/gain resources	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
62	Infanticide rates are correlated with the absence of father and paternity uncertainty.	Less parental investment -> More infanticide	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nSeyfarth, Robert M., and Dorothy L. Cheney. "Empirical tests of reciprocity theory: problems in assessment." Ethology and Sociobiology 9.2 (1988): 181-187.\n\nHill, Elizabeth M., and Bobbi S. Low. "Contemporary abortion patterns: a life history approach." Ethology and Sociobiology 13.1 (1992): 35-48.
64	Women's dependence on men has been increased by patrilocality, the loss of female kin bonds, and the evolution of male alliances.\n\nThe chance of divorce raises by 187% when the man is economically deficient.\n\nThe chance of divorce when it's the woman spending too much money are only raised by 77%.\n\nThis all relates to how male support is being perceived and how important it is.	Low level of male support -> High level of divorce	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nGoode, William J. "Economic Factors and Marital Stability." American Sociological Review 16.6 (1951): 802. Web.
65	99% of same sex homicides are male on male.\n\nThe main cause is that there are more male alliances than female alliances and groups fight against each others for resources.	Conflicts are a male thing	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nMaccoby, Eleanor E., and Carol Nagy Jacklin. "Sex Differences in Aggression: A Rejoinder and Reprise." Child Development 51.4 (1980): 964. Web.
161	Children fight and are greedy for their parents' resources.	Children -> fight over parents resources	Dawkins, Richard. The Selfish Gene: Richard Dawkins. Oxford: Oxford UP, 1989. Print.
68	Men emphasis on fertility to choose their partner.\n\nMen of 60 years or older prefer to women that are 15 years younger or more.\nYoung teenagers prefer women that are 5 years older.\n\nBoth prefer women that are close to their most fertile years.\n	Men -> Focus on fecundity	Helle, S., V. Lummaa, and J. Jokela. "Marrying Women 15 Years Younger Maximized Men's Evolutionary Fitness in Historical Sami." Biology Letters 4.1 (2008): 75-78. Web.\n\nKenrick, Douglas T., and Richard C. Keefe. "Age preferences in mates reflect sex differences in human reproductive strategies." Behavioral and Brain Sciences 15.01 (1992): 75-91.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
73	Before birth, oxytocin, the "love hormone", is secreted in the mother as a mean of attachment and bounding between her and her child.\n\nThis hormone calms and nudges the brain reward system resulting in her staying and focusing on the infant after birth.\n\nIt acts like an addictive drug.	Women oxytocin secretion before birth -> Bound with child -> more investment	Carter, C. Sue, et al. "Oxytocin, vasopressin and sociality." Progress in brain research 170 (2008): 331-336.\n\nFleming, Alison S., Danton H. O’Day, and G. W. Kraemer. "Neurobiology of mother–infant interactions: experience and central nervous system plasticity across development and generations." Neuroscience & Biobehavioral Reviews 23.5 (1999): 673-685.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.
70	A woman's reputation is directly linked to her sexual restraint.\n\nMen avoid women that have a wide range of past sexual behavior because they are concerned with paternity uncertainty.\n\nStatus such as "whore" are important judgment in a woman's world.\n\n	Women -> Status related to sexual behaviour	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nStewart, Fiona. "“Once you get a reputation, your life's like…‘wrecked’”: The implications of reputation for young women's sexual health and well-being." Women's Studies International Forum. Vol. 22. No. 3. Pergamon, 1999.
71	Males inside a group cooperate with other males in the group as a mean to gain resources from other groups - the outgroups.\n\nThe resources can range from territories, to mates, and food, etc..\n\nWhen the material resources in an area/group are running low there is raise in violence.\nThe reason is that individuals start to fight between themselves for resources.\n\nFor instance, 71% (or more) of the violent crimes in cities are from the poor neighborhoods. 	Less materials -> More violence, attack for resources	Coulton, Claudia J., et al. "Community level factors and child maltreatment rates." Child development 66.5 (1995): 1262-1276.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nPickett, K. E. "Multilevel Analyses of Neighbourhood Socioeconomic Context and Health Outcomes: A Critical Review." Journal of Epidemiology & Community Health 55.2 (2001): 111-22. Web.
75	Experienced fathers are more willing to invest in children than non-experienced fathers.	Parental care increase with experience as a father	Ziegler, Toni E., and Charles T. Snowdon. "Role of prolactin in paternal care in a monogamous New World primate, Saguinus oedipus." Annals of the New York Academy of Sciences 807.1 (1997): 599-601.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.
78	If a children respond aggressively to a "challenge" and "wins", he is more likely to respond aggressively in the future.\n\nIt's an instinct to find an easy way out of a problem.	Conflict -> Child use violence and win -> Will use violence in the future	Patterson, Gerald R., Richard A. Littman, and William Bricker. "Assertive behavior in children: A step toward a theory of aggression." Monographs of the society for research in child development 32.5 (1967): iii-43.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
79	A man prolactin level goes higher and his testosterone goes lower when his wife is pregnant.\n\nIt makes him focus on the child on an emotional level, instead of focusing on finding more mates.\n\nWe refer to this as the pregnancy syndrome.	Prolactin -> Father's emotional response to infant	Storey, Anne E., et al. "Hormonal correlates of paternal responsiveness in new and expectant fathers." Evolution and Human Behavior 21.2 (2000): 79-95.\n\nFleming, Alison S., et al. "Testosterone and prolactin are associated with emotional responses to infant cries in new fathers." Hormones and behavior 42.4 (2002): 399-413.
80	Low resource & risky environments are correlated with:\n\n* Less attentive and conflicted parenting.\n* Children that have a tendency to form unstable relationship later in life.\n\nThe opposite applies as well:\n\n* Secure and positive individuals have less conflicts, more satisfying and longer relationships.\n\n\nThose two world views are passed down to children through stress, environment, and knowledge (interaction with the world).	The environment shapes future behaviour	MacDonald, Kevin. "Warmth as a developmental construct: An evolutionary analysis." Child Development 63.4 (1992): 753-773.\n\nGeary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.
81	The older the parents the more they invest in children.\n\nThe infanticide rates goes in accordance with this, it goes down drastically in an aging population.\n\nMenopause plays its role as a reminder that rearing children is costly. There is a higher risk in rearing children for older women.\n\nIt is also a mechanism to stop investing in reproduction and to start investing in grand-children instead.	Parents older -> Invest more in children and grand-children -> Menopause is a reminder	Bugos, Paul E., and Lorraine M. McCarthy. "Ayoreo infanticide: A case study." Infanticide: Comparative and evolutionary perspectives (1984): 503-520.\n\nWilson, Margo, Martin Daly, and Antonletta Daniele. "Familicide: The killing of spouse and children." Aggressive Behavior 21.4 (1995): 275-291.\n\nSalmon, Catherine. "Parental Investment and Parent-Offspring Conflict." The Handbook of Evolutionary Psychology (2015): 1-19. Web.\n\nTurke, Paul W. "Hypothesis: Menopause Discourages Infanticide and Encourages Continued Investment by Agnates." Evolution and Human Behavior 18.1 (1997): 3-13. Web.
83	In suspicious situations people tend to automatically consider the opposite of what is asserted.\n\nThis also depends on how familiar they are with the individual.	Suspicious situation -> Consider the opposite	Schul, Yaacov, Ruth Mayo, and Eugene Burnstein. "Encoding under trust and distrust: the spontaneous activation of incongruent cognitions." Journal of personality and social psychology 86.5 (2004): 668.
85	Sperms are plentiful and low cost.\nFecundation for a male isn't costly, this explains the risk of abandonment.\n\nEggs are costly and scarce.\nFecundation for a female is costly, this explains the high commitment.\n\nThose aspects poor down into all of our daily lives, from risk to investment, nurturing, and social issues.	Sperms -> Low cost, Eggs -> Costly	Hayward, April, and James F. Gillooly. "The Cost of Sex: Quantifying Energetic Investment in Gamete Production by Males and Females." PLoS ONE 6.1 (2011): n. pag. Web.
87	There is a state of equilibrium between infidelity and fidelity in a society.\n\nUsually it is a rate of 5/6 coy women for 1/6 "fast" women and\n5/8 faithful men for 3/8 "philanderer" men.\n\nThis isn't fixed, the balance always move to an equilibrium, and evolutionary stable strategy (ESS).\n\nThe more "fast" women are available the more men will cheat.\nAnd the more they cheat the less investment there will be in children.	Game theory of "sexual openness"	Dawkins, Richard. The Selfish Gene: Richard Dawkins. Oxford: Oxford UP, 1989. Print.\n\nSchuster, Peter, and Karl Sigmund. "Coyness, Philandering and Stable Strategies." Animal Behaviour 29.1 (1981): 186-92. Web.
88	Orphans have low reproductive value in many societies.\n\nWhich lead to think that relationships and connections are important factors in mate/reproduction choice.	Orphans -> Low reproduction	Alexander, Richard D. "The evolution of social behavior." Annual review of ecology and systematics (1974): 325-383.\n\nHamilton, William D. "The genetical evolution of social behaviour. II." Journal of theoretical biology 7.1 (1964): 17-52.
90	Social bounds and cooperation are created through attachment.\n\nAttachment provides security and relief.\n\nParadoxically it also creates pressure on their subjects, stress directed towards the loved ones, the ones they care about.	Social bound -> Attachment -> Pressure	Flinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nKobak, Roger, Jude Cassidy, Karlen Lyons-Ruth, and Yair Ziv. "Attachment, Stress, and Psychopathology: A Developmental Pathways Model." Developmental Psychopathology (2015): 333-69. Web.
91	In game theory there is always an equilibrium pointand this point depends on the current environment.\n\nDepending on group criteria, policing, and maintenance of equity, it's possible for "generous" individuals to replace "selfish" ones.\n\nThe society rules makes it less advantageous for defectors.	Equilibrium of defectors and cooperators	Fehr, Ernst, Urs Fischbacher, and Simon GÃ¤chter. "Strong Reciprocity, Human Cooperation, and the Enforcement of Social Norms." Human Nature 13.1 (2002): 1-25. Web.
93	Participating in "warfares", getting the "warrior status" for males gives them an in-group benefit and reproductive advantage/success.\n\nThey gain the respect from their peers and the trust from the group.\n\nNot participating in crucial group activities such as "warfares" can lead to the opposite, loss of status, ostracism, and being tagged as coward.	War -> Male status -> Reproductive advantage	Boyd, Robert, et al. "The evolution of altruistic punishment." Proceedings of the National Academy of Sciences 100.6 (2003): 3531-3535.\n\nBoyd, Robert, and Peter J. Richerson. "Group beneficial norms can spread rapidly in a structured population." Journal of theoretical biology 215.3 (2002): 287-296.\n\nBoyd, Robert, and Peter J. Richerson. "Punishment allows the evolution of cooperation (or anything else) in sizable groups." Ethology and sociobiology 13.3 (1992): 171-195.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
94	Groups are always stronger than single individuals.\n(Flock of bird example)	Groups -> Stronger than individual	"Flocking (behavior)." Wikipedia. Wikimedia Foundation, n.d. Web. 25 Dec. 2016.
98	The "love hormone", oxytocin, acts on the brain reward system.\nIt enables long lasting relationships due to its drug-like effect and addiction.\n\nIt also increases stress in situations related to partners and loved ones.	Oxytocin -> Addiction effect	Carter, C. Sue. "Neuroendocrine Perspectives On Social Attachment And Love." Psychoneuroendocrinology 23.8 (1998): 779-818. Web.\n\nReynaud, Michel, Laurent Karila, Lisa Blecha, and Amine Benyamina. "Is Love Passion an Addictive Disorder?" The American Journal of Drug and Alcohol Abuse 36.5 (2010): 261-67. Web.\n\nBisagno, VerÃ³nica, and Jean Lud Cadet. "Stress, Sex, and Addiction." Behavioural Pharmacology (2014): 1. Web.
95	Emotions are an evolutionary device to focus attention on immediate problems.\nThey are used to evaluate the best outcome in an array made of pieces of information that aren't always coherent.\n\nIt would be too costly to compute (think about) them all.\n\nEmotions are a mean to maximize positive outcomes, they are a fast shortcut to good generic rules.	Emotions -> Bias to maximize positive outcomes	Ketelaar, Timothy, and Peter M. Todd. "Framing our thoughts: Ecological rationality as evolutionary psychology’s answer to the frame problem." Conceptual challenges in evolutionary psychology. Springer Netherlands, 2001. 179-211.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
99	In short unpredictable events, stress (cortisol) enhances mental activities.\nThis helps cope with challenges.\n\nMeanwhile, other mental processes are inhibited to favor focusing on the current situation and reducing "noise".	Stress -> Short term -> Help face challenges	Flinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nWingfield, J. C. "Endocrine Responses to Unpredictable Environmental Events: Stress or Anti-Stress Hormones?" Integrative and Comparative Biology 42.3 (2002): 600-09. Web.
100	Children living with step-parents have a higher level of cortisol than \nchildren living with any other kind of relatives\n\n\nThis is interesting, this happens even in the case of a children living with a remarried mother.\n\nConsequently, living with the grandparents is less stressful than living with a remarried mother.	Children living with anyone other than parents -> More stress	Flinn, Mark V., and Barry G. England. "Childhood stress: endocrine and immune responses to psychosocial events." Social & cultural lives of immune systems (2003): 107-147.
105	Fitness is enhanced by resources and commodities such as food, shelter, territories, and mates.\n\nResources might become scarce and individuals might want to leave. Such choice carries costs: The new location might not have enough resources of might be inhabited by strangers which will lead to fights.\n\nAggression is one of the responses to competition for resources.\n\nThere are costs to leaving and costs for fighting for resources.	Resources -> The main source of conflict	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
106	Aggression has costs.\n\nIn zero sum games, competitions were there are only one conclusion, an individual has to chose the best option: fight or flight, reward or cost.\n\nIf we wanted to calculate it, it would be similar to:\n\nReward * (Probability - Cost * Probability)\n\nThere are two types of aggression: Proactive and responsive.\n\n* Proactive:\nAbsence of anger and arousal, it's a mean to an end.\n\n* Responsive:\nIt's a response with anger and emotions.	Aggression is costly -> Individuals developed a mechanism to choose what to do (emotions)	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.
108	Why do men rape:\n\nMen have a bias over sex (They see it everywhere and over emphasize it).\n\n* Disadvantaged Men (no other mean of reproduction)\n\n* Specialized Rapists (Aroused by violent acts, fast ejaculation to not get caught)\n\n* Opportunistic Rapists (Seek receptive women but rape when they don't consent)\n\n* High Mating Effort Rapists (Psychopaths)\n\n* Partner Rapists (In the case of sperm competition)	Rape -> Main cause is bias over sex	Mckibbin, William F., Todd K. Shackelford, Aaron T. Goetz, and Valerie G. Starratt. "Why Do Men Rape? An Evolutionary Psychological Perspective." Review of General Psychology 12.1 (2008): 86-97. Web.
110	Humans have an inner desire to punish those who enjoy benefits without paying costs, it triggers the emotion of anger.\n\nThis desire doesn't apply when it's children and disabled persons enjoying benefits without paying costs.\n\nThe fitness of a "punisher", someone who puts a cheater back on track, depends on the number of "free loaders" in the current population.\n\nIf there is only a small number of "free loaders" it is advantageous to be a punisher, otherwise it is too costly.	Angers at individuals who enjoy benefits without cost -> recalibrate society with "police" only if small number of "free loaders"	Fehr, Ernst, and Simon Gächter. "Altruistic punishment in humans." Nature 415.6868 (2002): 137-140.\n\nAckerman, Joshua M., et al. "They all look the same to me (unless they're angry) from out-group homogeneity to out-group heterogeneity." Psychological Science 17.10 (2006): 836-840.\n\nNeuberg, Steven L., and Catherine A. Cottrell. "Intergroup emotions: A biocultural approach." From prejudice to intergroup emotions: Differentiated reactions to social groups (2002): 265-283.\n\nKurzban, Robert, and Steven Neuberg. "Managing Ingroup and Outgroup Relationships." The Handbook of Evolutionary Psychology (2015): 653-75. Web.
111	Protecting and defending oneself from threats and attacks is an automatic adapted behavior.\n\nFor instance, we focus and notice directly angry facial expressions, the rapid approach of an object or person, and the sight of weapons.\n\nThose threats trigger strong responses.\n\nIndividuals also consider out-groups as threats, which plays a role in in-group preferences and out-group avoidance.\n\nThe group membership of another person, itself, might trigger the anti-threat mechanism.	Adaptation to danger -> Directly notice threats -> Avoid threats	Ackerman, Joshua M., et al. "They all look the same to me (unless they're angry) from out-group homogeneity to out-group heterogeneity." Psychological Science 17.10 (2006): 836-840.\n\nKurzban, Robert, and Steven Neuberg. "Managing Ingroup and Outgroup Relationships." The Handbook of Evolutionary Psychology (2015): 653-75. Web.
112	It is instinctive to avoid a person that appears to has contracted a parasite or that is infectious.\n\nIt triggers a feeling of disgust, which is a mechanism to protect individuals in a group from contagion, to avoid the spreading of the disease.	Individual appear contagious -> Protection mechanism -> Triggers disgust in others	Ginsburg, Iona H., and BRUCE G. LINK. "Psychosocial consequences of rejection and stigma feelings in psoriasis patients." International journal of dermatology 32.8 (1993): 587-591.\n\nKurzban, Robert, and Mark R. Leary. "Evolutionary origins of stigmatization: the functions of social exclusion." Psychological bulletin 127.2 (2001): 187.\n\nSchaller, Mark, Justin Park, and Jason Faulkner. "Prehistoric dangers and contemporary prejudices." European review of social psychology 14.1 (2003): 105-137.\n\nRozin, Paul, Maureen Markwith, and Carol Nemeroff. "Magical Contagion Beliefs and Fear of AIDS1." Journal of Applied Social Psychology 22.14 (1992): 1081-1092.\n\nPark, Justin H., Jason Faulkner, and Mark Schaller. "Evolved disease-avoidance processes and contemporary anti-social behavior: Prejudicial attitudes and avoidance of people with physical disabilities." Journal of Nonverbal Behavior 27.2 (2003): 65-87.
113	The in-group/out-group preferences increase as much as the individual dependency on the group.\n\nThe in-group morals weight so much that even un-threatful out-groups can be seen as dangerous if they have different morals.\n\nIt entails conflict in the absence of threats and competition.\nThey become target simply by following their norms.	Individual depends on the group -> In-group bias -> Individual wants conflict with out-groups with different moral values	Henrich, Joseph, and Francisco J. Gil-White. "The evolution of prestige: Freely conferred deference as a mechanism for enhancing the benefits of cultural transmission." Evolution and human behavior 22.3 (2001): 165-196.\n\nKurzban, Robert, and Steven Neuberg. "Managing Ingroup and Outgroup Relationships." The Handbook of Evolutionary Psychology (2015): 653-75. Web.
114	Inter-group conflict is a male phenomenon.\n\nIT rises when males want the reproductive benefits of other groups.\nReproductive benefits that are closely related to resources.\n\nThey put the risks aside and fight.	Male want females from other groups -> Inter-group conflicts	Tooby, John, and Leda Cosmides. "The evolution of war and its cognitive foundations." Institute for evolutionary studies technical report 88.1 (1988): 1-15.
116	Status is tied with the ability to survive, reproduce, take care of yourself, and to take care of your offspring.	Status -> Related to the basic survival	Altman, Jon C. "The economic status of Indigenous Australians." (2000).\n\nDawkins, Richard. "Replicators and vehicles." Current problems in sociobiology 45 (1982): 64.
121	Behaviors related to social power and dominance:\n\n* Learning others behavior\n* Monitoring others\n* Influencing and predicting others\n* Being good at persuading and deceiving others	Social dominance -> Good at handling others	Hall, Judith A., Amy G. Halberstadt, and Christopher E. O'Brien. "“Subordination” and nonverbal sensitivity: A study and synthesis of findings based on trait measures." Sex Roles 37.5-6 (1997): 295-317.\n\nKeating, Caroline F., and Karen R. Heltman. "Dominance and deception in children and adults: Are leaders the best misleaders?." Personality and Social Psychology Bulletin 20.3 (1994): 312-321.
123	The view on how resources are shared depends on the person's own status:\n\n* If someone is socially dominant they will prefer hierarchical relationships and distributions based on merit.\n\n* If someone is low on social dominance they will favor social qualities and distributions based on needs.	Sharing resources -> Depends on the person's status	Pratto, Felicia, Deborah G. Tatar, and Sahr Conway‐Lanz. "Who gets what and why: Determinants of social allocations." Political Psychology 20.1 (1999): 127-150.\n\nCummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
124	To go against the norm and hierarchy people have to use deception.\n\nThe norms usually make such behaviors forbidden and punishable.\nThus, they hide their behavior from others and avoid attracting attention.\n	Go against the norm -> Creation of secret	Cummins, Denise Dellarosa. "How the social environment shaped the evolution of mind." Synthese 122.1-2 (2000): 3-28.\n\nCummins, Denise. "Dominance, status, and social hierarchies." The handbook of evolutionary psychology (2005): 676-697.
126	Social reasoning emerges early in development.\n\nLike adults, children also have a firm grasp of the implications of socially prescriptive rules.\n\nThey also learn early how to bent and manipulate those rules.	Children -> Learn early about social rules	Sodian, Beate, Deborah Zaitchik, and Susan Carey. "Young children's differentiation of hypothetical beliefs from evidence." Child Development 62.4 (1991): 753-766.\n\nSodian, Beate. "The development of deception in young children." British Journal of Developmental Psychology 9.1 (1991): 173-188.\n\nCummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
128	The concept of memes.\n\nDefinition: A meme is a units of imitation which can replicate itself in cultures the same way genes do in nature.\n\nThis concept explains cultures, languages, and norms.	Memes -> Social genes	Dawkins, Richard. "Memes: the new replicators." The selfish gene (1976): 203-15.\n\nSusan, Blackmore. "The meme machine." Interview of by Denis Failly (1999) Journal of Memetics (1999).
129	Attractive females focus more on men with masculine faces.	Attractive women -> Prefer Masculine men	Little, A. C., et al. "Self-perceived attractiveness influences human female preferences for sexual dimorphism and symmetry in male faces." Proceedings of the Royal Society of London B: Biological Sciences 268.1462 (2001): 39-44.
131	Respecting authority figures is learned at an early age.\n\nIt stays true throughout life: adults also respect authority figures.\n\nThey influence and intimidate people.	Children -> Influenced and intimidated by authority figures	Milgram, Stanley, and L. van Gasteren. Das Milgram-Experiment. Reinbek: Rowohlt, 1974.\n\nSvendsen, Ann Kristin. "White Nights In Guyana: Leadership, conformity and persuasion in Jonestown and Peoples Temple."\n\nKrebs, Dennis. "The Evolution of Morality." The Handbook of Evolutionary Psychology (2015): 747-71. Web.
133	Positive illusion: The inner bias to overstate oneself.\n\nIt can be used to appease one own mind or to gain trust from others.	Positive illusion -> People see themselves better than they are	Taylor, Shelley E., and Jonathon D. Brown. "Illusion and well-being: a social psychological perspective on mental health." Psychological bulletin 103.2 (1988): 193.\n\nAlicke, Mark D. "Global self-evaluation as determined by the desirability and controllability of trait adjectives." Journal of Personality and social Psychology 49.6 (1985): 1621.\n\nWeinstein, Neil D. "Why it won't happen to me: perceptions of risk factors and susceptibility." Health psychology 3.5 (1984): 431.\n\nRudski, J. M. "Illusion of control relative to chance outcomes." Psychological reports 87.1 (2000): 85-92.\n\nSedikides, Constantine, Lowell Gaertner, and Yoshiyasu Toguchi. "Pancultural self-enhancement." Journal of personality and social psychology 84.1 (2003): 60.
135	Low status individuals allocate more time and energy to social judgments than do more powerful individuals.	Low status -> Focus more on social judgement	Keltner, Dacher, Deborah H. Gruenfeld, and Cameron Anderson. "Power, approach, and inhibition." Psychological review 110.2 (2003): 265.\n\nGruenfeld, Deborah H., Dacher J. Keltner, and Cameron Anderson. "The effects of power on those who possess it: How social structure can affect social cognition." (2003).
162	First born have in average 1 IQ point higher than other siblings.\nThis might be due to the fact that first born have/had to take care of other siblings.	First born -> Take care of future siblings -> Higher IQ	Cicirelli, Victor G. "Sibling Constellation, Creativity, IQ, and Academic Achievement." Child Development 38.2 (1967): 481. Web.\n\nThurstone, L. L., and R. L. Jenkins. "Birth Order and Intelligence." Journal of Educational Psychology 20.9 (1929): 641-51. Web.\n\nRecord, R. G., Thomas Mckeown, and J. H. Edwards. "The Relation of Measured Intelligence to Birth Order and Maternal Age." Annals of Human Genetics 33.1 (1969): 61-69. Web.
136	Out-groups are seen as more dangerous, mean, and less generous than the group one belongs to.	Bias towards out-group -> Dangerous and Selfish	Brewer, Marilynn B. "In-group bias in the minimal intergroup situation: A cognitive-motivational analysis." Psychological bulletin 86.2 (1979): 307.\n\nQuillian, Lincoln, and Devah Pager. "Black Neighbors, Higher Crime? The Role of Racial Stereotypes in Evaluations of Neighborhood Crime1." American journal of sociology 107.3 (2001): 717-767.\n\nHaselton, Martie G., Daniel Nettle, and Paul W. Andrews. "The Evolution of Cognitive Bias." The Handbook of Evolutionary Psychology (2015): 724-46. Web.
137	Morality is a mean to keep the social equilibrium and cooperation by fighting against defectors.\n\nWe discern 5 stages of morality:\n\nStage1:\n* Avoid punishment\n* Respect authority\n* Avoid Damage\n\nStage2:\n* Exchange\n* Making deals\n\nStage3:\n* Upholding mutual relationship\n* Having roles (trust, respect)\n* Being viewed as good\n* Showing concern\n\nStage4:\n* Maintaining a social system\n* Obeying rules and laws\n\nStage5:\n* Contributing to society\n* Fulfilling social obligations freely agreed upon; stands on the greatest * good for the greatest number\n* Equality	Morality -> Social equilibrium	Colby, Ann, and Lawrence Kohlberg. The Measurement of Moral Judgement: Volume 2, Standard Issue Scoring Manual. Vol. 2. Cambridge university press, 1987.
138	Women tend to make more stage 3 moral judgments.\n\nThis means:\n\n* Upholding mutual relationship\n* Having roles (trust, respect)\n* Being viewed as good\n* Showing concern\n\nThis is explained by their role in nurturing and keeping a good social circles around them.	Female -> Moral judgements based on role and concerns	Gilligan, Carol. In a different voice. Harvard University Press, 1982.\n\nSï¿½Chting, Ingrid, Eva E. Skoe, and James E. Marcia. "Care-oriented Moral Reasoning and Prosocial Behavior: A Question of Gender or Sex Role Orientation." Sex Roles 31.3-4 (1994): 131-47. Web.
140	In dangerous situations people prefer to stay in groups or crowds.\nIt makes them feel secure because of the loss of individuality it produces.	Danger -> Crowd/Group makes people feel better	Wisman, Arnaud, and Sander L. Koole. "Hiding in the crowd: can mortality salience promote affiliation with others who oppose one's worldviews?." Journal of personality and social psychology 84.3 (2003): 511.\n\nWilson-Doenges, Georjeanna. "An exploration of sense of community and fear of crime in gated communities." Environment and behavior 32.5 (2000): 597-611.
141	Women prefer to tend and befriend rather than fight or flight.\nFor men it's the opposite.	Women/Men -> Friends/Fight	Taylor, Shelley E. "Tend and befriend biobehavioral bases of affiliation under stress." Current directions in psychological science 15.6 (2006): 273-277.
144	Humans spend more time "pre-reproductive" than any other mammal.\n\nThis is an indication of how important it is for children to learn fast and focus on learning social rules and interactions rather than building their body.	Long time to become reproductive -> Learn social rules	Tomasello, Michael. "The human adaptation for culture." Annual review of anthropology (1999): 509-529.\n\nBjorklund, David F., Carlos HernÃ¡ndez Blasi, and Bruce J. Ellis. "Evolutionary Developmental Psychology." The Handbook of Evolutionary Psychology (2015): 1-21. Web.
145	When being part of a group there is always an in-group favoritism and out-group fear and hostility.\nApart from that there is also a feeling of reciprocity with the group and a will to seek status within it.	In-group -> Reciprocate with them -> Want to raise status compared to them	Harris, Judith Rich. "Where is the child's environment? A group socialization theory of development." Psychological review 102.3 (1995): 458.
146	Children learn more through games than through normal educative methods.	Chidlren -> learn more from games	Steen, Francis F., and Stephanie A. Owens. "Evolution's pedagogy: An adaptationist model of pretense and entertainment." Journal of Cognition and Culture 1.4 (2001): 289-321.\n\nHyson, Marion C., Kathy Hirsh-Pasek, and Leslie Rescorla. "The classroom practices inventory: An observation instrument based on NAEYC's guidelines for developmentally appropriate practices for 4-and 5-year-old children." Early Childhood Research Quarterly 5.4 (1990): 475-494.\n\nBerch, Daniel B. "Making sense of number sense implications for children with mathematical disabilities." Journal of learning disabilities 38.4 (2005): 333-339.
147	In a group with a high number of assertive and dominant extrovert, there is a benefit for individuals of low extroversion (See game theory).\n\nThe opposite is also true.	Equilibrium in group depending on personality types	Figueredo, Aurelio JosÃ©, Jon A. Sefcek, Geneva Vasquez, Barbara H. Brumbach, James E. King, and W. Jake Jacobs. "Evolutionary Personality Psychology." The Handbook of Evolutionary Psychology (2015): 851-77. Web.
159	Seeing another person express fear in face of a situation creates a bias in the individual. The next time there's an encounter it's more probably that it'll induce fear and/or avoidance.\n\nPost traumatic stress disorder: A constant stress and fear that emerges from any cue or recurrent events that resemble a past traumatic event.	See on person fear -> Build bias for own fears	"The Malicious Serpent: Snakes as a Prototypical Stimulus for an Evolved Module of Fear." The Malicious Serpent: Evolved Adaptations for Responding to Snakes. N.p., n.d. Web. 25 Dec. 2016.\n\nHope, Debra A., and Carroll E. Izard. Perspectives on Anxiety, Panic, and Fear. Lincoln, Neb.: U of Nebraska, 1996. Print.
21	Children absorb what their parents say and do.\n\nOne of the important part of the learning phase is to take part in predator/prey games. They mentally prepare for real life scenarios.	Children -> predator/prey games as preparation	Sellen, Daniel W. "Hunter-Gatherer Childhoods: Evolutionary, Developmental, and Cultural Perspectives. Barry S. Hewlett , Michael E. Lamb." Journal of Anthropological Research 63.1 (2007): 158-59. Web. 23 Dec. 2016.\n\nBarrett, H. Clark. "Adaptations to Predators and Prey." The Handbook of Evolutionary Psychology (2015): 1-18. Web.\n\n"Modeling Behavior for Children Has Long-Lasting Effects." Psych Central News. N.p., 06 Oct. 2015. Web. 23 Dec. 2016.
23	In fearful or dangerous situations people seek security and refuge.\n\nThey want certainty because the outcomes frightens them.\n\nIn those cases, they prefer to take decisions based on statistics and more health-promoting: They want to avoid risks.\n\nThey are more conscientious.\nConscientiousness correlates with longevity.	Fear -> Conscientiousness -> Refuge&Security	Carducci, Bernardo J. The Psychology of Personality: Viewpoints, Research, and Applications. Malden, MA: Wiley-Blackwell, 2009. Print.
157	Natural selection aims for reproduction success, not health nor cooperation.\n\nA gene that raises reproductive success but lower longevity will spread.\n\nThis is an indirect explanation to bitter competition, envy, greed, sexual desire, and jealousy.	Genes spread only for reproductive success and nothing else	Buss, David M. "The Evolution of Happiness." American Psychologist 55.1 (2000): 15-23. Web.\n\nNielsen, Joyce Mccarl, Martin Daly, and Margo Wilson. "Sex, Evolution and Behavior." Contemporary Sociology 9.3 (1980): 440. Web.\n\nKruger, D. J., and R. M. Nesse. "Sexual Selection and the Male:Female Mortality Ratio." Evolutionary Psychology 2.1 (2004): n. pag. Web.
25	Individuals are motivated to keep what is valuable under protection.\n\n* Their status\n* Their material resources\n* Their mating resources\n\nHow much something is worth depends on the society. It is referred to as relative deprivation.	Material -> Protect valuables\t\t\t	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.
35	Women prefer men that have a combination of high testosterone and beauty.\n\nA high testosterone level is correlated with physical imperfections and deficits in the immune system.\n\nHowever, if a man is "beautiful", as in he has a high degree of symmetry, and masculine he is perceived as more attractive. He has the advantage of high testosterone without the drawbacks.	Women -> Prefer High testosterone + beauty	Sugiyama, Lawrence S. "Physical Attractiveness: An Adaptationist Perspective." The Handbook of Evolutionary Psychology (2015): 1-68. Web.
151	It has been shown that women have a reproductive advantage when their personality is constituted from one of those:\n\n* High neuroticism (emotional disorder/obsession) and low extroversion (introvert)\n* Low neuroticism (less emotional and more calm) and high extroversion (extrovert)	Female reproductive advantage in personality -> High neuroticism + low extroversion or low neuroticism + high extroversion	Eaves, L. J., et al. "Personality and reproductive fitness." Behavior genetics 20.5 (1990): 563-568.
152	The difficulty of a woman recognizing and sharing emotions is inversely correlated with the frequency of penile-vaginal intercourse.\n\nThe more a woman has sex the more keen to emotions she is.\n\nMore intercourse is also correlated with better physical and mental health in both sexes.	Women -> More sex -> More open with emotions	Brody, Stuart. "Alexithymia is inversely associated with women's frequency of vaginal intercourse." Archives of Sexual Behavior 32.1 (2003): 73-77.\n\nCosta, Rui Miguel, and Stuart Brody. "Sexual Satisfaction, Relationship Satisfaction, and Health Are Associated with Greater Frequency of PenileâVaginal Intercourse." Archives of Sexual Behavior 41.1 (2011): 9-10. Web.
153	It has been shown that men have a less of a reproductive advantage when they show extroversion and social assertion.\nThose factors are inversely correlated with fertility.\n\nMoreover, men from infertile coupled scored low on critique anxiety, low on showing guilt, low on norm orientation, and an inability to resist demands.	Men -> Extrovert -> Low fertility	Hellhammer, D. H., et al. "Male infertility: relationships among gonadotropins, sex steroids, seminal parameters, and personality attitudes." Psychosomatic medicine 47.1 (1985): 58-66.
154	Extroversion is correlated with promiscuity and inversely correlated with nervousness and prudishness.	Extrovert -> Promiscuous	Eysenck, Michael W. "Extraversion, verbal learning, and memory." Psychological Bulletin 83.1 (1976): 75.\n\nSchmitt, David P. "The Big Five related to risky sexual behaviour across 10 world regions: Differential personality associations of sexual promiscuity and relationship infidelity." European Journal of personality 18.4 (2004): 301-319.\n\nWilson, M. Claire, et al. "Cortisol reactivity to psychosocial stress mediates the relationship between extraversion and unrestricted sociosexuality." Personality and Individual Differences 86 (2015): 427-431.
158	Stress in early development is related to mental disorder and reduction of fetal brain development.\n	Stress early in life -> Mental disorders	Weinstock, Marta. "The Potential Influence of Maternal Stress Hormones on Development and Mental Health of the Offspring." Brain, Behavior, and Immunity 19.4 (2005): 296-308. Web.
166	Women have redder lips during ovulation.\nMen are more attracted to the color red on women.	Ovulation -> Redder lips -> Men attracted	Elliot, Andrew J., and Daniela Niesta. "Romantic Red: Red Enhances Men's Attraction to Women." Journal of Personality and Social Psychology 95.5 (2008): 1150-164. Web. \n\nGuÃ©guen, Nicolas. "Color and Women Attractiveness: When Red Clothed Women Are Perceived to Have More Intense Sexual Intent." The Journal of Social Psychology 152.3 (2012): 261-65. Web
164	When a child lack support from his mother or is restricted and unable to explore the world he becomes more stressful.(neglect or over-concern)\n\nStress affects the development of consolidated memories, and thus affects how experiences are built in the brain.	Childhood stress -> Neglect or over-concern from mother	Cassidy, Jude. "Child-Mother Attachment and the Self in Six-Year-Olds." Child Development 59.1 (1988): 121. Web. \n\n"Maternal Deprivation." Wikipedia. Wikimedia Foundation, n.d. Web. 23 Dec. 2016.
55	A cognitive process we use to choose a mate is called the "comparison level":\n\nWe compare standards and expectations, what we think we "deserve", with our perception of the current relationship.\n\nMoreover, we mix this with the comparison between all of the available choices of partners. This is referred as "comparison level alternatives".	Mate choice -> Compare on expectations	Campbell, Lorne, and Bruce J. Ellis. "Commitment, Love, and Mate Retention." The Handbook of Evolutionary Psychology (2015): 419-42. Web.
60	In the eye of step parents children are seen as a cost rather than benefit.\n\nThey are 70 times more likely to abuse them and 100 times more likely to fatally abuse them.	Step parents -> See non blood related as burden -> More likely to abuse children	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.\n\nWilson, Margo, and Martin Daly. "Risk of maltreatment of children living with stepparents." Child abuse and neglect: Biosocial dimensions (1987): 215-232.
63	The advantages of monogamy:\n\nFor males:\nIt enhances male alliances.\nIt assures a modest reproductive success.\nIt gives sexual intercourse ad-libitum.\nIt increase the certainty of paternity.\nIt gives the monopoly of one woman reproductive career.\nIt enhances the survival of offspring.\n\nDisadvantage:\n\nThere's a price to pay with mate guarding against cuckoldry and possibly wasted parental efforts.\n\nFor females:\n\nIt let her invest more time and energy on her young.\nIt gives her extra calories and protection from aggression.\nIt increases her offspring survival rate.\n\nDisadvantage:\nA lower diversity of children genetics.\nShe expose herself to the danger of jealousy (jealousy motivated violence): which has a high risk of involving violence from her male partner.\nShe has to guard her partner from younger and more fertile women.	Monogamy -> Creates a stability	Daly, Martin, and Margo Wilson. Homicide. Transaction Publishers, 1988.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nConnor, RICHARD C., ANDREW J. Read, and R. I. C. H. A. R. D. Wrangham. "Male reproductive strategies and social bonds." Cetacean societies: Field studies of dolphins and whales (2000): 247-269.\n\nLancaster, Jane B. "The Evolutionary History of Human Parental Investment in Relation to Population Growth and Social Stratification." Feminism and Evolutionary Biology (1997): 466-88. Web.
72	In a life or death situation kin altruism is curvilinear (U-shaped) depending on age.\nMeaning that we help more the younger and older aged people than the rest.\n\nWomen are also favored over males in the case where they are younger than 45yo. If not they receive the same treatment.\n\nAltruism with others is also possible if the cost and risks of investment are low (see Hamilton's rule).\n\nThe overall rule is that help is directed at advantaging the vulnerable.\n\nHelping others is also a sign of abundance and power.\nMales that are altruist show those features.\n\nDoing the opposite, not helping at all, can hurts someone's status. Showing the signs of selfishness.	Altruism -> Help fecundity then help vulnerable people -> Sign of abundance	Buss, David M. The evolution of desire: Strategies of human mating. Basic books, 2003.\n\nBurnstein, Eugene. "Altruism and Genetic Relatedness." The Handbook of Evolutionary Psychology (2015): 528-51. Web.
82	Mother and child learn very soon to recognize each others.\n\nAn infants recognizes his mother's voice 24h after birth, the odor of her breasts after 6 days, and her face after 2 weeks.\n\nA mother recognizes her infant's face 5h after birth, and the infant's voice 2 days after birth.	Mother and child soon after birth bound with each other	Burnstein, Eugene. "Altruism and Genetic Relatedness." The Handbook of Evolutionary Psychology (2015): 528-51. Web.\n\nCernoch, Jennifer M., and Richard H. Porter. "Recognition of Maternal Axillary Odors by Infants." Child Development 56.6 (1985): 1593. Web.\n\nField, Tiffany M., Debra Cohen, Robert Garcia, and Reena Greenberg. "Mother-stranger Face Discrimination by the Newborn." Infant Behavior and Development 7.1 (1984): 19-25. Web.\n\nK, Mizuno, Shinohara T, Noda M, and Mizuno N. "Mother-infant Skin-to-skin Contact after Delivery Results in Early Recognition of Own Mother's Milk Odour." Acta Paediatrica 93.12 (2004): 1640-645. Web.
165	Pregnancy symptoms such as nausea that happen during the first developmental phase of pregnancy are mechanisms to keep women from eating food that have a high amount of bacteria.\n\nThey usually avoid smelly food and prefer the food that removes pathogens.\nFor instance: pickles.	Pregnancy symptoms -> Protect children during development	Sherman, Paul W., and Samuel M. Flaxman. "Nausea and Vomiting of Pregnancy in an Evolutionary Perspective." American Journal of Obstetrics and Gynecology 186.5 (2002): n. pag. Web. 
96	There are two type of impulsivity: behavioral and cognitive.\n \nBehavioral impulsivity is related to violent offenses and antisocial behavior while the cognitive one is not.	Behavioural impulsivity -> Agressivity	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nMccloskey, Michael S., Antonia S. New, Larry J. Siever, Marianne Goodman, Harold W. Koenigsberg, Janine D. Flory, and Emil F. Coccaro. "Evaluation of Behavioral Impulsivity and Aggression Tasks as Endophenotypes for Borderline Personality Disorder." Journal of Psychiatric Research 43.12 (2009): 1036-048. Web.\n\nOades, Robert D., Jessica Lasky-Su, Hanna Christiansen, Stephen V. Faraone, Edmund J.s. Sonuga-Barke, Tobias Banaschewski, Wai Chen, Richard J.l. Anney, Jan K. Buitelaar, Richard P. Ebstein, Barbara Franke, Michael Gill, Ana Miranda, Herbert Roeyers, Aribert Rothenberger, Joseph A. Sergeant, Hans-Christoph Steinhausen, Eric A. Taylor, Margaret Thompson, and Philip Asherson. "The Influence of Serotonin- and Other Genes on Impulsive Behavioral Aggression and Cognitive Impulsivity in Children with Attention-deficit/hyperactivity Disorder (ADHD): Findings from a Family-based Association Test (FBAT) Analysis." Behavioral and Brain Functions 4.1 (2008): 48. Web.\n\nBarratt, Ernest S. "Impulsiveness and aggression." Violence and mental disorder: Developments in risk assessment 10 (1994): 61-79.
102	Factors that reduce stress in children:\n\n* Affectionate interactions\n\n* Support from parents\n\n* Availability of parents\n\n* Maternal care: it affects the child the most - A mother living in a stable and supportive household makes the child more relaxed.\n\n* Paternal care: indirectly provides benefits to the child by supporting the mother.	Father supports mother -> Mother calm -> Children less stressed	Belsky, Jay, Laurence Steinberg, and Patricia Draper. "Childhood experience, interpersonal development, and reproductive strategy: An evolutionary theory of socialization." Child development 62.4 (1991): 647-670.\n\nFlinn, Mark V., and Barry G. England. "Social economics of childhood glucocorticoid stress response and health." American Journal of Physical Anthropology 102.1 (1997): 33-53.\n\nLamb, Michael E., et al. "A biosocial perspective on paternal behavior and involvement." Parenting across the life span: Biosocial dimensions (1987): 111-142.\n\nScheper-Hughes, Nancy. "The madness of hunger: sickness, delirium, and human needs." Culture, medicine and psychiatry 12.4 (1988): 429-458.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.
117	Because of the importance of status, changes in it directly affect the individual's physiology by the medium of hormones.\n\nChanges in status can mean the difference between life or death.\nThe body responds to it with stress: cortisol and adrenaline.\n\nThe short term effects are to mobilize energy taken from the fat storage and to make the heart beat fast, pumping blood throughout the body.\n\nThe long term effects are to alter the fat storage mechanism, create an hormonal imbalance, sleep disturbance, and altered mood.	Status -> Difference between life and death -> Responds with stress	McEwen, Bruce S., and John C. Wingfield. "What’s in a name? Integrating homeostasis, allostasis and stress." Hormones and behavior 57.2 (2010): 105.\n\nGoymann, Wolfgang, and John C. Wingfield. "Allostatic load, social status and stress hormones: the costs of social status matter." Animal Behaviour 67.3 (2004): 591-602.\n\nCummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
132	Social/Game theory is an important field related to evolutionary psychology.\n\nIt involves studying the evolution of social behaviors in game like environments. Because game scenarios are like real social conflicts it can be applied to group dynamics.\n\nOne of the best strategy is the "Tit for tat" which is a winner in most populations.\nIt consists in acting "kindly" on first encounter and "roughly" if the partner doesn't cooperate.\n\nThis type of strategy is called an altruistic strategy.\n\nAltruistic strategies open the door for selfish ones to flourish.\nIn a population where tit for tat won over the equilibrium, totally altruistic strategies (no reprehension at all) can spread and in theory would not be distinguishable from tit-for-tat.\n\nIn this case it would leave an advantage to abusers to abuse the totally altruistic strategists.\n\nPeople can assess if another person will cooperate by checking their status, norms, and reputation or by using their social biases.\n\nAll in all the composition of a population affect the dynamics and strategies the people can take.	Altruistic strategies -> Leave room for selfish ones if no policing	Milinski, Manfred. "TIT FOR TAT in Sticklebacks and the Evolution of Cooperation." Nature 325.6103 (1987): 433-35. Web.\n\nDawkins, Richard. The Selfish Gene. Oxford: Oxford UP, 1989. Print.\n\nTrivers, Robert L. "The evolution of reciprocal altruism." Quarterly review of biology (1971): 35-57.\n\nHamilton, William D., and Robert Axelrod. "The evolution of cooperation." Science 211.27 (1981): 1390-1396.
142	The role of female orgasm is still unclear.\nHowever studies have shown that if it happens 1 min before or 45 min after ejaculation there is a higher chance of retaining sperm.\n\nIt is hypothetical that this will result in a bigger likelihood of conception.\nRetaining sperms doesn't mean a higher chance of conception.\n\nThe concern men show about whether their partner achieves orgasm or not might signify that female orgasm has an evolutionary role.	Female orgasm -> Retain sperm	Pound, Nicholas, and Martin Daly. "Functional significance of human female orgasm still hypothetical." Behavioral and Brain Sciences 23.04 (2000): 620-621.\n\nBaker, R., and M. Bellis. "Human sperm competition: Copulation, competition and infidelity." (1995).\n\nPound, Nicholas. "Effects of morphine on electrically evoked contractions of the vas deferens in two congeneric rodent species differing in sperm competition intensity." Proceedings of the Royal Society of London B: Biological Sciences 266.1430 (1999): 1755-1758.\n\nThornhill, Randy, Steven W. Gangestad, and Randall Comer. "Human female orgasm and mate fluctuating asymmetry." Animal Behaviour 50.6 (1995): 1601-1615.
77	A list of the long term effects of stress (cortisol):\n\n* Immune deficiency\n* Cognitive impairment\n* Inhibition of growth\n* Delayed sexual maturity\n* Damages to hippocampus\n* Psychological maladjustment\n* Depression\n* High blood pressure\n* Abnormal heartbeat (arrhythmia)\n* Hardening of the arteries (atherosclerosis)\n* Heart disease\n* Heart attack\n* Heartburn, ulcers, irritable bowel syndrome\n* Upset stomach -- cramps, constipation, and diarrhea\n* Weight gain or loss\n* Changes in sex drive\n* Fertility problems\n* Flare-ups of asthma or arthritis\n* Skin problems such as acne, eczema, and psoriasis\n\nLet's name a few example of long term stress: a divorce, the death of a loved one, the loss of job, etc..	Long term effects of stress -> Degrade the individual	Herbert, Tracy Bennett, and Sheldon Cohen. "Stress and immunity in humans: a meta-analytic review." Psychosomatic medicine 55.4 (1993): 364-379.\n\nMaier, Steven F., Linda R. Watkins, and Monika Fleshner. "Psychoneuroimmunology: The interface between behavior, brain, and immunity." American Psychologist 49.12 (1994): 1004.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nMcGaugh, Quervain de DJ Roozendaal B. "Stress and glucocorticoids impair retrieval of long-term spatial memory." (1998).\n\nBuwalda, Bauke, Maarten H.p. Kole, Alexa H. Veenema, Mark Huininga, Sietse F. De Boer, S. Mechiel Korte, and Jaap M. Koolhaas. "Long-term Effects of Social Stress on Brain and Behavior: A Focus on Hippocampal Functioning." Neuroscience & Biobehavioral Reviews 29.1 (2005): 83-97. Web.\n\nLupien, Sonia J., Bruce S. Mcewen, Megan R. Gunnar, and Christine Heim. "Effects of Stress throughout the Lifespan on the Brain, Behaviour and Cognition." Nature Reviews Neuroscience 10.6 (2009): 434-45. Web.\n\nTurner, R. Jay, and Donald A. Lloyd. "Stress Burden and the Lifetime Incidence of Psychiatric Disorder inYoung Adults: Racial and Ethnic Contrasts." Archives of general psychiatry 61.5 (2004): 481-488.\nOrth-Gomer, K. The Journal of the American Medical Association; 2000.\n\nOrth-Gomér, Kristina, et al. "Stress reduction prolongs life in women with coronary disease the Stockholm Women’s Intervention Trial for Coronary Heart Disease (SWITCHD)." Circulation: Cardiovascular Quality and Outcomes 2.1 (2009): 25-32.\n\nPeterson, Michael, and John F. Wilson. "Work Stress in America." (2004): 91.
50	The way a father interacts with his children directly influences their later reproductive strategies:\n\nIf absent from home it correlates for boys with a higher chance of criminality, stress, "Macho" behavior, criminality, and delinquency.\n\nFor girls it correlates with them seeking quantity over quality.\n\nThat is also related to father willful absence.\nHaving a step-father doesn't change this behavior.\n\nOn the opposite, if the absence wasn't willful, for instance the death of the father, it doesn't correlate with similar behavior.\n\nThis is an example of genetic behavioral influence.\n	Father behaviour -> mirror of children behaviour\t\t	Geary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.\n\nHertwig, Ralph, Jennifer Nerissa Davis, and Frank J. Sulloway. "Parental Investment: How an Equity Motive Can Produce Inequality." Heuristics (2011): 670-92. Web.\n\nErmisch, John, and Marco Francesconi. "Family Matters: Impacts of Family Background on Educational Attainments." Economica 68.270 (2001): 137-56. Web.
148	Personality is a mix of the following:\n\n* A range of heritable alternatives mechanism to deal with the world.\n\n* Traits created by situation dependent mechanism.\n\n* A momentarily calibration to the events or environment.\n\nNot all strategies/personalities are viable in a population.\nSome populations restrict thoughts because of its environment and norms.\n\nOn the opposite, the more a society allow free interaction between its members, the more there will be different personality types.\n\nLet's also note that if an optimal personality trait emerges in the current environment, no new trait will appear different from it.\n\nFitness traits and personality traits are favored if passed genetically and show a high genotypic variance and variability.\nThis means the traits are clearly discernible, making a difference between individuals that have it and those who don't.\n\nMen tend to have personality traits that go along with dominance, extroversion, and risk taking.\nWomen tend to have personality traits that go along with nurturance and love.\nThose are all clearly discernible traits.	Personality -> A mix of traits viable in the environment -> Traits are chosen according to and equilibrium	Buss, David M. "Evolutionary personality psychology." Annual review of psychology 42.1 (1991): 459-491.\n\nBotwin, Michael D., David M. Buss, and Todd K. Shackelford. "Personality and mate preferences: Five factors in mate selection and marital satisfaction." Journal of personality 65.1 (1997): 107-136.\n\nHoyle, Rick H., Michele C. Fejfar, and Joshua D. Miller. "Personality and sexual risk taking: A quantitative review." Journal of personality 68.6 (2000): 1203-1231.\n\nWeiss, Alexander, James E. King, and R. Mark Enns. "Subjective well-being is heritable and genetically correlated with dominance in chimpanzees (Pan troglodytes)." Journal of personality and social psychology 83.5 (2002): 1141.\n\nSegal, Nancy L., and Kevin B. MacDonald. "Behavioral genetics and evolutionary psychology: unified perspective on personality research." Human Biology (1998): 159-184.\n\nBrookings, Jeffrey B., and Josephine F. Wilson. "Personality and family-environment predictors of self-reported eating attitudes and behaviors." Journal of personality assessment 63.2 (1994): 313-326.\n\nFigueredo, Aurelio José, et al. "The K-factor: Individual differences in life history strategy." Personality and individual differences 39.8 (2005): 1349-1360.\n\nFigueredo, Aurelio JosÃ©, Jon A. Sefcek, Geneva Vasquez, Barbara H. Brumbach, James E. King, and W. Jake Jacobs. "Evolutionary Personality Psychology." The Handbook of Evolutionary Psychology (2015): 851-77. Web.
167	Relative deprivation, their sense of well-being comes from an assessment of social status. If people perceive themselves lower on the social hierarchy they are more likely to die younger and are less healthy. This may be due to stress in environment where there are great differences in wealth leading people to fight more for status.	relative deprivation -> differences in wealth -> highly affects health	"How Economic Inequality Harms Societies." Richard Wilkinson: How Economic Inequality Harms Societies | TED Talk | TED.com. N.p., n.d. Web. 23 Dec. 2016.\n\n
168	The lumbar curvature at the lower of the back of female correlates with how attractive they are to males.\nMen prefer an angle close to 45 degrees (not above or under), which would facilitate bearing children.\n\nThis is irrelevant to how protruded the ass is (the mass), men can make the difference between a curve that is the result of the lumbar and one that isn't.	Female Lumbar Curve around 45 degrees -> Easier to bear children -> More attractive	Lewis, David M.g., Eric M. Russell, Laith Al-Shawaf, and David M. Buss. "Lumbar Curvature: A Previously Undiscovered Standard of Attractiveness." Evolution and Human Behavior 36.5 (2015): 345-50. Web. 
48	Men that invest a lot are seeking more competent, intelligent, and better educated partner.\n\nTogether they have a more effective parenting.\n\nThe opposite also applies, less investing men tend to have less effective parenting.	Men more invested -> Women more invested -> Educated and intelligent children	Geary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.\n\nHertwig, Ralph, Jennifer Nerissa Davis, and Frank J. Sulloway. "Parental Investment: How an Equity Motive Can Produce Inequality." Heuristics (2011): 670-92. Web.\n\nErmisch, John, and Marco Francesconi. "Family Matters: Impacts of Family Background on Educational Attainments." Economica 68.270 (2001): 137-56. Web.
1	Happiness is correlated with fitness.\nFitness is usually defined as the surviving abilities and fecundity.\n\nOn the opposite, depression and anxiety are correlated with heart diseases, asthma, peptic ulcers, and headaches.\n\nIt works in both ways, the happier you are the more fit you are likely to be and the more fit you are the happier you are.	happiness -> fitness	Figueredo, Aurelio JosÃ©, Jon A. Sefcek, Geneva Vasquez, Barbara H. Brumbach, James E. King, and W. Jake Jacobs. "Evolutionary Personality Psychology." The Handbook of Evolutionary Psychology (2015): 851-77. Web. 18 Dec. 2016.\n\nJanuzzi, James L., Theodore A. Stern, Richard C. Pasternak, and Roman W. Desanctis. "The Influence of Anxiety and Depression on Outcomes of Patients With Coronary Artery Disease." Archives of Internal Medicine 160.13 (2000): 1913. Web. 18 Dec. 2016.\n\nBonnet, Fabrice, Kate Irving, Jean-Louis Terra, Patrice Nony, FranÃ§ois BerthezÃ¨ne, and Philippe Moulin. "Anxiety and Depression Are Associated with Unhealthy Lifestyle in Patients at Risk of Cardiovascular Disease." Atherosclerosis 178.2 (2005): 339-44. Web. 18 Dec. 2016.
7	First born are more likely to stay in long term relationships and defer gratification; they prefer stability but are overall more anxious.\n\nLater born are more likely to strive for variety and excitement; they also have a more relaxed life.\n\nThis is related to anxiety felt from the parents' expectations, which highly affects self-esteem.\n\nHowever, those studies have been conducted erroneously by being done by assessments within the same family. Outside the family individual personalities traits may vary. Those differences may only be looked at as adaptations to the family environment.	first born -> prefer stability but stressed\nlater born -> prefer variety but relaxed	Weiss, Jonathan H. "Birth Order and Physiological Stress Response." Child Development 41.2 (1970): 461. Web. 18 Dec. 2016.\n\nJefferson, Tyrone, Jeffrey H. Herbst, and Robert R. Mccrae. "Associations between Birth Order and Personality Traits: Evidence from Self-Reports and Observer Ratings." Journal of Research in Personality 32.4 (1998): 498-509. Web. 18 Dec. 2016.\n\nBy {"isAjaxInProgress_B000APGAUE":"0" "No Two Alike: Human Nature and Human Individuality Paperback – June 17, 2007." No Two Alike: Human Nature and Human Individuality: Judith Rich Harris: 9780393329711: Amazon.com: Books. N.p., n.d. Web. 18 Dec. 2016.\n\n"Judith Rich Harris: Why Do People Believe That Birth Order Has Important Effects on Personality?" Judith Rich Harris: Why Do People Believe That Birth Order Has Important Effects on Personality? N.p., n.d. Web. 18 Dec. 2016.
8	Maternal nagging/depression/unhappiness, is correlated to child aggressiveness.\nIt is a sign of low resources and investment, the child grows learning that the resources are scarce and that the world is a dangerous place.\nThe child wants attention and bounding.	Mother nags -> Child aggressive	Shay, Nicole Lynn. "The connection between maternal depression, parenting, and child externalizing disorders." PhD (Doctor of Philosophy) thesis, University of Iowa, 2009.\nhttp://ir.uiowa.edu/etd/433.\n\nStormshak, Elizabeth A. et al. “Parenting Practices and Child Disruptive Behavior Problems in Early Elementary School.” Journal of clinical child psychology 29.1 (2000): 17–29. Print.\n\nNew South Wales. Department of Community Services.  Development of aggressive behaviour in children and young people [electronic resource]: implications for social policy, service provision, and further research  [Dept. of Community Services] Sydney, N.S.W  2004\n\nSheehan, M. J. and Watson, M. W. (2008), Reciprocal influences between maternal discipline techniques and aggression in children and adolescents. Aggr. Behav., 34: 245–255. doi:10.1002/ab.20241
9	r-selected people (see definition) tend to have a more developed neural alarm system, the red button (anterior cingulate cortex (ACC)) pushed by\nthe amygdala (part of brain) in case of danger.\n\nIt triggers significant physical pain, in case of danger.\n\nStudies have also correlated that people which have a more developed "alarm system" also have issues with:\nSocial ostracism and exclusion.\nA perception of unfairness in society.\n\nIt is also linked to the experience of envy.\nMoreover, envy is also associated with a willingness to break rules.\n\nThis all leads to anti-social tendencies.	r-selected -> more envy + willingness to break rules (over perception of unfairness)	Hecht, David. “Cerebral Lateralization of Pro- and Anti-Social Tendencies.” Experimental Neurobiology 23.1 (2014): 1–27. PMC. Web. 18 Dec. 2016.\n
10	Affection, and bonding between parents and children is the root of future violence and dis-functions as adults.\n\nThe more a society experiences pleasure the less it inflicts pain and\nvice-versa.\n\nSocieties with a strong denial of body contact and shaming of natural\ninstincts have the highest rate of violence.\n\nIn those societies products enhancing violence are approved but not the ones who are pro-pleasure.\n\nFor instance, alcohol is allowed but not marijuana.\n\n\nThere’s a correlation between marital non-sexual\nsatisfaction, somatosensory deprivation (denial of body contact) and\nnon-affectionate parents, and extramarital affairs.\n\nPeople have extramarital affairs because they have lost the ability to bond with their partner. They jump from one person to another in\nthe hope it’ll be better.\n\nLike with alcohol, anything acts as a suppressor of\nthe pain inflicted in childhood.	Missing Affection & pleasure as children -> future violence & dis-functions	Prescott, James W. "Body Pleasure and the Origins of Violence." Bulletin of the Atomic Scientists 31.9 (1975): 10-20. Web.
170	Three laws of behavioral genetic:\n* All human behavioral traits are heritable\n* The effect of being raised in the same family is smaller than the effect of the genes\n* A substantial portion of the variation in complex human behavioral traits are not accounted for by the effect of genes or family	Effect of genes greater than effect of environment on behavioral traits	Turkheimer, Eric. "Three Laws of Behavior Genetics and What They Mean." Current Directions in Psychological Science 9.5 (2000): 160-64. Web. 
171	Theory about the different parts of the environment shaping personality:\n\n* A relationship system allows us to distinguish family from strangers and tell individuals apart.\n* A socialization system helps us to become members of a group and absorb the group's culture.\n* A status system enables us to acquire self-knowledge by measuring ourselves against others.	Culture + Norms + Status -> Change in Personality	Rebollo, Irene. "No Two Alike: Human Nature and Human Individuality Judith Rich Harris (2006). W.W. Norton & Company, 322 Pp, $US26.95, ISBN 0393059480." Twin Research and Human Genetics 9.05 (2006): 703-04. Web. 
27	A stepparent is a risk factor for a child.\nStatistics show that there are 4 to 10 times more infanticides in home where children live with stepparents.\n\nChildren have a set of specific behaviour they show with stepparents:\n* They keep a low profile\n* They help the stepparents to gain their trust\n* They try to attract attention from their genetic parent, particularly with the mean of dangerous and self-harming behaviours.	Children -> More danger from stepparents	Temrin, H., S. Buchmayer, and M. Enquist. "Step-parents and Infanticide: New Data Contradict Evolutionary Predictions." Proceedings of the Royal Society B: Biological Sciences 267.1446 (2000): 943-45. Web.\n\nDaly, Martin, and Margo Wilson. "Child Abuse and Other Risks of Not Living with Both Parents." Ethology and Sociobiology 6.4 (1985): 197-210. Web.\n\nHarris, G., N. Hilton, M. Rice, and A. Eke. "Children Killed by Genetic Parents versus Stepparentsâ." Evolution and Human Behavior 28.2 (2007): 85-95. Web.\n\nRohwer, S. "Stepparental Behavior as Mating Effort in Birds and Other Animals." Evolution and Human Behavior 20.6 (1999): 367-90. Web.
28	Women are better at hiding infidelity.\n\nThis might be due to the high risk of her being killed by her romantic partner.\nMen emphasis on the matters of cuckoldry and loss of status, their paternal uncertainty and sexual jealousy.\nIn fact, most family homicides are directly related to this: The most dangerous person in a woman's life is her romantic partner.	Women -> Better hide infidelity	Duntley, Joshua D. "Adaptations to Dangers From Humans." The Handbook of Evolutionary Psychology (2015): 1-23. Web.\n\nBrand, Rebecca J., Charlotte M. Markey, Ana Mills, and Sara D. Hodges. "Sex Differences in Self-reported Infidelity and Its Correlates." Sex Roles 57.1-2 (2007): 101-09. Web.\n\nCamilleri, J. A., and V. L. Quinsey. "Testing the Cuckoldry Risk Hypothesis of Partner Sexual Coercion in Community and Forensic Samples." Evolutionary Psychology 7.2 (2009): n. pag. Web.\n\nGoetz, Aaron T. "Violence and Abuse in Families: The Consequences of Paternal Uncertainty." Family Relationships (2007): 259-74. Web.
30	For women, their partner leaving means risking being left alone to take care of children.\nTheir men investing in someone else children instead of their own.\n\nThus women have an innate bias to focus on how much investment and attention they are getting:\nAlways seeing less than reality.\n\nIt's an emotional betrayal.	Women -> Loss of investment -> Left alone -> Bias over attention	Schmitt, David P. "Fundamentals of Human Mating Strategies." The Handbook of Evolutionary Psychology (2015): 1-23. Web.\n\nBoekhout, Brock A., Susan S. Hendrick, and Clyde Hendrick. "Relationship Infidelity: A Loss Perspective." Journal of Personal and Interpersonal Loss 4.2 (1999): 97-123. Web.
31	For men, partner's infidelity is a risk of cuckoldry, raising another man's child - wasting all his resources on someone else genetic material.\n\nThus men have an innate bias to focus on sex.\nAlways seeing more than reality.\n\nTheir woman having a sexual relationship with another man triggers a wide range of violent emotions, especially in monogamous couples where there is a higher degree of investment.	Men -> Sexual betrayal -> Cuckoldry -> \tBias over sex	Starratt, Valerie G., and Todd K. Shackelford. "Mate Guarding and Poaching." Encyclopedia of Human Relationships (n.d.): n. pag. Web.\n\nMiller, Saul L., and Jon K. Maner. "Sex Differences in Response to Sexual versus Emotional Infidelity: The Moderating Role of Individual Differences." Personality and Individual Differences 46.3 (2009): 287-91. Web.
38	Men short-term mating strategy focuses on having a large number of partners.\n\nThis implies having more children.\n\nWhen men are constantly looking for new partners it creates a world of competition and conflict: For mates and resources.\n\nMen that have "high value" and live riskier lives are more frequently following this strategy.	Men -> Short Term Mating -> Many Partners -> More competition	Schmitt, David P. "Fundamentals of Human Mating Strategies." The Handbook of Evolutionary Psychology (2015): 1-23. Web.\n\nBuss, David M., and David P. Schmitt. "Sexual Strategies Theory: An Evolutionary Perspective on Human Mating." Psychological Review 100.2 (1993): 204-32. Web.
43	In a society where there is a lot of female infidelity men invest more in their sisters' children than in their own.\n\nThey have more proofs that they share genes with their sisters than their children.\nWhen women cheat there is low proof of paternity.\n\nThis mechanism redirects the resources unto someone sharing at least 1/8th of his genes (Hamilton Investment Theory).	Female infidelity in society -> Male invest in sister's children\t\t	Kurland, Jeffrey A., and Steven J. C. Gaulin. "Cooperation and Conflict among Kin." The Handbook of Evolutionary Psychology (2015): 447-82. Web.\n\nHolden, C. "Matriliny as Daughter-biased Investment." Evolution and Human Behavior 24.2 (2003): 99-112. Web.\n\nSalmon, Catherine A. "On the Impact of Sex and Birth Order on Contact with Kin." Human Nature 10.2 (1999): 183-97. Web.\n
44	The offspring survival rate and quality depends directly on parental investment.\n\nIn a society where the cost of investment in children is high and the cost of having other mates is low there is more male abandonment.\nThe men are more likely to leave the couples.\n\nOn an opposite side the notion of concealed ovulation, dispersed mates, and low investment cost are correlated with high paternal investment.\nIn this case it is favorable for the men to invest in the children.	Parental investment -> Survival of children\t\t\t\t	Kurland, Jeffrey A., and Steven J. C. Gaulin. "Cooperation and Conflict among Kin." The Handbook of Evolutionary Psychology (2015): 447-82. Web.\n\nBenshoof, L., and R. Thornhill. "The Evolution of Monogamy and Concealed Ovulation in Humans." Journal of Social and Biological Systems 2.2 (1979): 95-106. Web.\n\nStrassmann, Beverly I. "Sexual Selection, Paternal Care, and Concealed Ovulation in Humans." Ethology and Sociobiology 2.1 (1981): 31-40. Web.
46	Facial similarities affect investment in others.\n\nThe more similar the faces, the more trust, and resource investment there is.\nIf they are close in their features it is an: Identity By State (IBS)\n\nThe closer they are linked, in their relationship genetically, the lesser they are sexually attracted.\n\nThis coefficient or relatedness is the: Identity By Descendant (IBD)\n\nMen are more able to discern facial similarities than women.\nThis device is used as defense against cuckoldry; they can directly notice if the child is rightfully theirs.	Facial & physical similarities -> More trust -> Men device against cuckoldry	Daly, Martin, and Margo Wilson. "Parenting and Kinship." The Handbook of Evolutionary Psychology (2015): 443-46. Web.\n\nDebruine, L. M. "Facial Resemblance Enhances Trust." Proceedings of the Royal Society B: Biological Sciences 269.1498 (2002): 1307-312. Web.
47	There is a higher child mortality rate in high risk societies.\nIt correlates with low investment in children and with adults seeking more mates.\n\nIn the cases where parental investment is present, children have better social competitiveness and by consequence have a reproductive advantage over their peers which have no parental investment.	Parental investment -> High quality offsprings	Geary, David C. "Evolution of Paternal Investment." The Handbook of Evolutionary Psychology (2015): 1-18. Web.\n\nHertwig, Ralph, Jennifer Nerissa Davis, and Frank J. Sulloway. "Parental Investment: How an Equity Motive Can Produce Inequality." Heuristics (2011): 670-92. Web.
61	Women from the moment of conception invest highly in their children.\nBecause of this they can differentiate between healthy fetus and non-healthy ones.\n\nOnly 60% of fertilized eggs implants in the uterus, 20% of those are miscarried. Furthermore, if a fetus doesn't secrete enough HCG (hormone) it won't survive the development phase.\n\nThe environment also plays a role in early miscarriage. For instance, danger and stress are correlated with an increase in miscarriage.\n\nThose are natural "abortion" and investment redirection mechanism. There are priorities and the body knows it.	Women -> Developed an auto-abortion mechanism to choose healthy children	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nGiudice, Marco Del. "Fetal Programming by Maternal Stress: Insights from a Conflict Perspective." Psychoneuroendocrinology 37.10 (2012): 1614-629. Web.\n\nHaig, David. "Genetic Conflicts in Human Pregnancy." The Quarterly Review of Biology 68.4 (1993): 495-532. Web.
66	Most conflicts may seem trivial from an outsider's perspective.\nHowever for the belligerents perspectives, it is a fight for status and honor, both parties do not want to loose face.\n\nThis specially applies to men and their extreme sensitivity to status loss.\n\nStatus being associated with dominance and reproductive success.\nIn sum, they are indirectly fighting for mates.	Conflict -> Benign but stay to not loose face -> Fight for mate	Daly, Martin, and Margo Wilson. Homicide. Transaction Publishers, 1988.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nRodgers, R., and C. Hendrie. "Social Conflict Activates Status-dependent Endogenous Analgesic or Hyperalgesic Mechanisms in Male Mice: Effects of Naloxone on Nociception and Behaviour." Physiology & Behavior 30.5 (1983): 775-80. Web.\n\nBosson, J. K., and J. A. Vandello. "Precarious Manhood and Its Links to Action and Aggression." Current Directions in Psychological Science 20.2 (2011): 82-86. Web.
67	At 13 months boys become more assertive than girls.\n\nThey prefer to destroy, attack things and to compete.\nThey want to know who is better and tougher.\n\nThose types of activities consume 65% of their time. \n\nOn the opposite, girls prefer to cooperate, and to nurture.	From young age -> Sex differences in conflicts	Goldberg, Susan, and Michael Lewis. "Play behavior in the year-old infant: Early sex differences." Child development (1969): 21-31.\n\nCampbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nLever, Janet. "Sex Differences in the Games Children Play." Social Problems 23.4 (1976): 478-87. Web.
69	Men and women have different ways of competing withing the same sex.\n\nMen compete with each others by using their superiority, promiscuity, and popularity.\n\nWhile women compete with each others with the currency of appearance.\nAn example of that is that 88% of women older than 18 use makeup.	Same sex conflict -> Men, superiority / Women, appearance	Campbell, Anne. "Aggression." The Handbook of Evolutionary Psychology (2015): 628-52. Web.\n\nRudd, N. A., and S. J. Lennon. "Body Image and Appearance-Management Behaviors in College Women." Clothing and Textiles Research Journal 18.3 (2000): 152-62. Web.\n\nBarber, Nigel. "The Evolutionary Psychology of Physical Attractiveness: Sexual Selection and Human Morphology." Ethology and Sociobiology 16.5 (1995): 395-424. Web.\n\nCampbell, Anne. "Female Competition: Causes, Constraints, Content, and Contexts." Journal of Sex Research 41.1 (2004): 16-26. Web.
74	Getting attached to a mate influences the person's social relationship management.\nIt deactivates an individual social guard and judgment, making him or her more likely to get along or accept people they wouldn't usually get along with.	Mate attachment -> Lower social guard	Flinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nBartels, Andreas, and Semir Zeki. "The neural correlates of maternal and romantic love." Neuroimage 21.3 (2004): 1155-1166.\n\nFisher, Helen, Arthur Aron, and Lucy L. Brown. "Romantic love: an fMRI study of a neural mechanism for mate choice." Journal of Comparative Neurology 493.1 (2005): 58-62.\n\nCoria-Avila, Genaro A., Jorge Manzo, Luis I. Garcia, Porfirio Carrillo, Marta Miquel, and James G. Pfaus. "Neurobiology of Social Attachments." Neuroscience & Biobehavioral Reviews 43 (2014): 173-82. Web.
76	Hormones related to mate preference and bounding:\n\nFor females:\nOxytocin (OT), the hormone of relaxation which is released after mating.\n\nFor males:\nArginine Vasopressin (AVP) and OT, the hormones of sexual activation and pair bounding.	OT and AVP -> Important role in pair bounding	Cho, Mary M., A. Courtney Devries, Jessie R. Williams, and C. Sue Carter. "The Effects of Oxytocin and Vasopressin on Partner Preferences in Male and Female Prairie Voles (Microtus Ochrogaster)." Behavioral Neuroscience 113.5 (1999): 1071-079. Web.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nInsel, Thomas R., and James T. Winslow. "The Neurobiology of Social Attachment." Neurobiology of Mental Illness (2011): 1337-348. Web.
84	In high risk situations individuals are nepotistic, they favour kin more than anyone else.\n\nThe cost can be calculated as follow:\n\n(Genetic cost of helping) < ( (Benefits) / (Degree of relatedness) )\n\nThis is called the Hamilton's rule.	Individuals are inherently nepotistic	Burnstein, Eugene. "Altruism and Genetic Relatedness." The Handbook of Evolutionary Psychology (2015): 528-51. Web.\n\nMateo, J. M. "Kin-recognition Abilities and Nepotism as a Function of Sociality." Proceedings of the Royal Society B: Biological Sciences 269.1492 (2002): 721-27. Web.
86	It is risky for a women to copulate, get pregnant and be left alone to take care of the child.\nConsequently they refuse to copulate, use "coyness" and "domestic-bliss", to spot signs of infidelity and recognize the qualities of her mate before opening her bed.\n\nFor example, women want to be sure of certain qualities, assess them before rearing a child: Nest, food, security.\n\nMales are more tempted to leave after copulation and this sort of mechanism prevents that. It makes sure they invest enough and are less likely to depart.\n\nOn a side note, liars use this method to get "free" sex from women.\n\nOn the men part, they can also use "long engagement periods" to make sure the women won't sway or they are already pregnant from another man's children.\n\nMoreover, the more time and energy a couple spends together, the less likely they are to break up. The cost of leaving is higher than the cost of staying.	Couples spend a preliminary time together to access each others	Dawkins, Richard. The Selfish Gene: Richard Dawkins. Oxford: Oxford UP, 1989. Print.\n\nSimÃ£o, Jorge, and Peter M. Todd. "Modeling Mate Choice in Monogamous Mating Systems with Courtship." Adaptive Behavior 10.2 (2002): 113-36. Web.
89	Factors promoting monogamy:\n\n* Extensive biparental care\n* Social education of children (linguistic amongst others)\n* Lengthy adolescence\n* Concealed ovulation\n* Menopause	Monogamy -> Has social factors promoting it	Flinn, Mark V., David C. Geary, and Carol V. Ward. "Ecological dominance, social competition, and coalitionary arms races: Why humans evolved extraordinary intelligence." Evolution and Human Behavior 26.1 (2005): 10-46.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.
92	Infants develop social skills before physical ones.\nThey have an elastic brain that quickly learns social rules.\n\nIt makes us realize the important of adaptation to the local community: language, facial recognition, eye contact, facial expression, etc..\n\nBecause it takes a long time for infants to be physically able there is a need for long parental investment, for caretakers.	Infant -> Develop social before physical -> Need for investment	de Haan, Michelle, Mark H. Johnson, and Hanife Halit. "Development of face-sensitive event-related potentials during infancy: a review." International Journal of Psychophysiology 51.1 (2003): 45-58.\n\nFarroni, Teresa, et al. "Infants perceiving and acting on the eyes: Tests of an evolutionary hypothesis." Journal of experimental child psychology 85.3 (2003): 199-212.\n\nBornstein, Marc H., and Martha E. Arterberry. "Recognition, discrimination and categorization of smiling by 5‐month‐old infants." Developmental Science 6.5 (2003): 585-599.\n\nSimon, Herbert Alexander. "A mechanism for social selection and successful altruism." Science(Washington) 250.4988 (1990): 1665-1668.\n\nBjorklund, David F., and Anthony D. Pellegrini. The origins of human nature: Evolutionary developmental psychology. American Psychological Association, 2002.\n\nBloom, Paul. How children learn the meanings of words. No. Sirsi) i9780262523295. Cambridge, MA: MIT press, 2000.\n\nGeary, David C., and David F. Bjorklund. "Evolutionary developmental psychology." Child development 71.1 (2000): 57-65.\n\nGeary, David C., and Kelly J. Huffman. "Brain and cognitive evolution: forms of modularity and functions of mind." Psychological bulletin 128.5 (2002): 667.
97	Testosterone makes males impatient, impulsive, and ferocious.\n\n\nIt leads to hasty, non-lasting relationships.\nThey prefer to invest in other things.\n\nRisky and unstable societies have a bigger portion of males with high testosterone.	Testosterone -> Impulsivity -> Aggression	Archer, John. "Testosterone and Human Aggression: An Evaluation of the Challenge Hypothesis." PsycEXTRA Dataset (n.d.): n. pag. Web.\n\nMoss, R., R. Parr, and X. Lambin. "Effects of Testosterone on Breeding Density, Breeding Success and Survival of Red Grouse." Proceedings of the Royal Society B: Biological Sciences 258.1352 (1994): 175-80. Web.
101	Household factors to raise stress (cortisol):\n\n* Children living in houses with quarreling and fight have abnormal peaks and fluctuations of cortisol.\n\n* When the father leaves the house and returns the cortisol level of the children raises and falls back upon return.\n\n* Traumatic events increase cortisol by 100% to 2K% compared to normal raise, which varies between 10% to 100%.\n\nChronic stress has long lasting risks on children:\n\n* It blunts the responses to normal and useful stress.\n\n* The chronically stressed children have a bellow average cortisol level during "normal" situation and appear socially "tougher".	Unstable household in childhood -> Chronic stress -> Blunt Adults	Long, B. L., G. Ungpakorn, and G. A. Harrison. "Home–school differences in stress hormone levels in a group of Oxford primary schoolchildren." Journal of biosocial science 25.01 (1993): 73-78.\n\nFlinn, Mark V., Carol V. Ward, and Robert J. Noone. "Hormones and the Human Family." The Handbook of Evolutionary Psychology (2015): 552-80. Web.\n\nOlive, M. Foster. Child abuse and stress disorders. Infobase Publishing, 2007.
103	Daily contact makes individuals more aware of their peers needs.\nThey learn to reciprocate and help in times of needs\n\nThere's an understanding of obligations and entitlement.\n\nThe more distant the contacts the more direct trades are made - The less reciprocity.\n\nIt's an explicit and instant trade of goods.	Close contacts -> long term obligations & status VS Distant -> explicit and direct trade	Cosmides, Leda, and John Tooby. "Neurocognitive Adaptations Designed for Social Exchange." The Handbook of Evolutionary Psychology (2015): 584-627. Web.\n\nPrice, Sally. "Reciprocity and Social Distance: A Reconsideration." Ethnology 17.3 (1978): 339. Web.
104	Detecting cheaters is innate to humans.\nIt is present at an early age in children and is even present in schizophrenics.\n\nWe mean by cheaters, anyone that violates a rule.\n\nIf it is in a non-intentional or natural way, people tend to be more willing to accept it.\n\nHowever, individuals still notice the "injustice" even in the case of the non-intentional acts.	Detect cheaters -> Willing to accept non-intentional acts	Tooby, John, and Leda Cosmides. "Friendship and the banker's paradox: Other pathways to the evolution of adaptations for altruism." PROCEEDINGS-BRITISH ACADEMY. Vol. 88. OXFORD UNIVERSITY PRESS INC., 1996.\n\nCosmides, Leda, and John Tooby. "Neurocognitive Adaptations Designed for Social Exchange." (2005).\n\nCummins, Denise Dellarosa. "Cheater detection is modified by social rank: The impact of dominance on the evolution of cognitive functions." Evolution and Human Behavior 20.4 (1999): 229-248.\n\n"Toddlers Object When People Break the Rules." Association for Psychological Science. N.p., n.d. Web. 25 Dec. 2016.\n\nSchmidt, Marco FH, and Michael Tomasello. "Young children enforce social norms." Current Directions in Psychological Science 21.4 (2012): 232-236.
107	People like to associate themselves with others that push them forward.\n\nFor example, good partners in cooperative activities, which they can benefit from in their current social circle and environment.\n\nIn small groups if someone acts selfishly, the selfish behavior is more likely to spread than if it was in a bigger group.	Cooperation -> Like individuals that help / nasty behaviours spread in small groups	Hamilton, William D. "The genetical evolution of social behaviour. II." Journal of theoretical biology 7.1 (1964): 17-52.\n\nTrivers, Robert L. "The evolution of reciprocal altruism." Quarterly review of biology (1971): 35-57.\n\nRindos, David, et al. "Darwinian selection, symbolic variation, and the evolution of culture [and Comments and Reply]." Current anthropology (1985): 65-88.\n\nKurzban, Robert, and Steven Neuberg. "Managing Ingroup and Outgroup Relationships." The Handbook of Evolutionary Psychology (2015): 653-75. Web.
150	Important facts about memory:\n\n* It maintains items once added to long term memory.\n* It keeps them in a flexible form.\n* It silences irrelevant information.\n\nWe selectively remember information because it is too costly to remember everything.\n\nAn example of this is the childhood amnesia from abuse. It's role is to protect the child from the knowledge that a key caregiver may be a perpetrator. Which is a prerequisite for maintaining a crucial relationship/survival.\n\nWhen missing clues from the past people go back and create steps that could possibly lead to the same judgment, reinforcing the biases and prejudices. This is called the "confirmation bias".\n\nSmall samples of memory act like biases, together they form correlations and shortcuts of thoughts.\n\nIn a world where the environment constantly changes, literally recalling information is unimportant.\n\nWhen making decisions people simply weights the choices against each others.\n\nIt is easier to process and make decisions about information related to ideas that come from a longer evolutionary time than the ones that just recently appeared in the human world.\n\nIt's easier to deal with the fear of fire than the fear of walking on the highway.	Memory -> Remember what is important -> Shortcut for future choices	Kareev, Yaakov. "Seven (indeed, plus or minus two) and the detection of correlations." Psychological review 107.2 (2000): 397.\n\nKareev, Yaakov, Iris Lieberman, and Miri Lev. "Through a narrow window: Sample size and the perception of correlation." Journal of Experimental Psychology: General 126.3 (1997): 278.\n\nAtkinson, Richard C., and Richard M. Shiffrin. "Human memory: A proposed system and its control processes." Psychology of learning and motivation 2 (1968): 89-195.\n\nWertsch, James V., and Henry L. Roediger III. "Collective memory: Conceptual foundations and theoretical approaches." Memory 16.3 (2008): 318-326.\n\nHoffrage, Ulrich, Ralph Hertwig, and Gerd Gigerenzer. "Hindsight bias: A by-product of knowledge updating?." Journal of Experimental Psychology: Learning, Memory, and Cognition 26.3 (2000): 566.\n\nTodd, Peter M., Ralph Hertwig, and Ulrich Hoffrage. "Evolutionary Cognitive Psychology." The Handbook of Evolutionary Psychology (2015): 1-19. Web.
109	The thought of future interactions makes people more aware of their reputation, especially when it's for future cooperation.\n\nThe opposite is also true, anonymity creates selfishness and antisocial behaviors.\n\nThe commitment to future interactions gives rise to group commitment. \n\nIndividuals do public performances to show their attachment to the group.\n\nSocial familiarity gives rise to long future commitment and an increase in the likelihood of pro-social behaviors. 	Future interaction -> More cooperation	Prentice-Dunn, Steven, and Ronald W. Rogers. "Effects of deindividuating situational cues and aggressive models on subjective deindividuation and aggression." Journal of personality and social psychology 39.1 (1980): 104.\n\nZimbardo, Philip, and Ebbe B. Ebbesen. "Influencing attitudes and changing behavior: A basic introduction to relevant methodology, theory, and applications." (1970).\n\nKurzban, Robert, and Steven Neuberg. "Managing Ingroup and Outgroup Relationships." The Handbook of Evolutionary Psychology (2015): 653-75. Web.\n\nHirsh, J. B., A. D. Galinsky, and C.-B. Zhong. "Drunk, Powerful, and in the Dark: How General Processes of Disinhibition Produce Both Prosocial and Antisocial Behavior." Perspectives on Psychological Science 6.5 (2011): 415-27. Web.\n\nSlusher, E. Allen, Kenneth J. Roering, and Gerald L. Rose. "The Effects of Commitment to Future Interaction in Single Plays of Three Games." Behavioral Science 19.2 (1974): 119-32. Web.
115	List of strong social emotions:\n\nSocial fear:\nTriggered by coalitions or ethnic groups that threaten physical safety.\n\nSocial disgust:\nTriggered by something or someone threatening health or morals.\n\nSocial anger:\nTriggered by free riders, a person taking what is not rightfully theirs.	Defence of social circle -> Strong emotions	Mackie, Diane M., Thierry Devos, and Eliot R. Smith. "Intergroup emotions: explaining offensive action tendencies in an intergroup context." Journal of personality and social psychology 79.4 (2000): 602.\n\nFehr, Ernst, and Simon GÃ¤chter. "Altruistic Punishment in Humans." Nature 415.6868 (2002): 137-40. Web.\n\nHaidt, J., P. Rozin, C. Mccauley, and S. Imada. "Body, Psyche, and Culture: The Relationship between Disgust and Morality." Psychology & Developing Societies 9.1 (1997): 107-31. Web.
118	A change in status might induce stress or it might not in some cases.\nThe opposite is also true: Stress can lower someone's status, and being relaxed can rise someone's status.\n\nHow an individual reacts in a particular situation reflects their social status and their quality of life.\n\nFor example:\n\nCompetitive games and contests psychologically feel like real contests between rivals:\nThey include the fight for status in the hierarchy and thus induce stress.\n\nPoverty is highly correlated with stress because of its effect on status. Persons "relatively depreived" have a higher cortisol level.\n\n	Status <-> Stress	Kapuku, Gaston K., Frank A. Treiber, and Harry C. Davis. "Relationships among socioeconomic status, stress induced changes in cortisol, and blood pressure in African American males." Annals of Behavioral Medicine 24.4 (2002): 320-325.\n\nLupien, Sonia J., et al. "Can poverty get under your skin? Basal cortisol levels and cognitive function in children from low and high socioeconomic status." Development and psychopathology 13.03 (2001): 653-676.\n\nCummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
119	Norms are shared information inside the group.\n\nThey are transferred between the members so that they copy and adhere to them, facilitating group cooperation and coordination.\n\nStraying from the norms is subject to rejection, disgust, and prejudice.\nThere is an urge to separate this type of individual from other members.	Norms -> Spread in group -> Better cooperation and homogeneity	Rindos, David, et al. "Darwinian selection, symbolic variation, and the evolution of culture [and Comments and Reply]." Current anthropology (1985): 65-88.\n\nBiernat, Monica, et al. "Values and prejudice: Toward understanding the impact of American values on outgroup attitudes." (1996).\n\nKatz, Irwin, and R. Glen Hass. "Racial ambivalence and American value conflict: Correlational and priming studies of dual cognitive structures." Journal of personality and social psychology 55.6 (1988): 893.\n\nBall-Rokeach, Sandra J. "Values and violence: A test of the subculture of violence thesis." American Sociological Review (1973): 736-749.\n\nSchnall, Simone, et al. "Disgust as embodied moral judgment." Personality and social psychology bulletin (2008).\n\nRozin, Paul, et al. "The CAD triad hypothesis: a mapping between three moral emotions (contempt, anger, disgust) and three moral codes (community, autonomy, divinity)." Journal of personality and social psychology 76.4 (1999): 574.
122	Societies with rigid rules are more stable; they are characterized by rigid social hierarchies.\n\nThe drawbacks are the loss of individuality and individual freedom.\nPeople have an obligation to learn and follow the rules.\n\nThere are more stereotyped persons in those societies.\nEveryone is typical and falls into a category.	Rigid society -> More stability and followers of norms -> Less freedom -> Less individuality and free thoughts	Singer, F. J., et al. "F. 2000. A demographic analysis, group dynamics, and genetic effective number in the PMWH Population, 1992–1997." Managers’ Summary–Ecological Studies of the Pryor Mountain Wild Horse Range, 1992–1997: 73-89.\n\nNieuwenhuijsen, Kees, and Frans de Waal. "Effects of spatial crowding on social behavior in a chimpanzee colony." Zoo Biology 1.1 (1982): 5-28.\n\nCummins, Robert A. "The second approximation to an international standard for life satisfaction." Social Indicators Research 43.3 (1998): 307-334.\n\nPelto, Pertii J. "The differences between “tight” and “loose” societies." Society 5.5 (1968): 37-40.
125	The status of an individual raises by maintaining alliances with others.\nThose alliances are kept through reciprocal obligations.\n\nStatus might also raise when someone challenges a high ranking individual and wins.	Status raise -> Keep alliances -> Win over others with higher status	Chapais, Bernard. "The role of alliances in social inheritance of rank among female primates." Coalitions and alliances in humans and other animals (1992): 29-60.\n\nHarcourt, Alexander H., and Frans BM De Waal. Coalitions and alliances in humans and other animals. Oxford University Press, 1992.\n\nRiss, David, and Jane Goodall. "The recent rise to the alpha-rank in a population of free-living chimpanzees." Folia Primatologica 27.2 (1977): 134-151.\n\nUehara, Shigeo, et al. "The fate of defeated alpha male chimpanzees in relation to their social networks." Primates 35.1 (1994): 49-55.\n\nDawkins, Marian. "Spirit of Nature Needs Rekindling." Nature 264.5586 (1976): 586. Web.\n\nCummins, Denise. "Dominance, Status, and Social Hierarchies." The Handbook of Evolutionary Psychology (2015): 676-97. Web.
127	A loss of status or facing someone with better status induces many different feelings:\n\n* A deep sense of shame\nIt is characterized by the avoidance of eye contact, lower chin, avoiding social encounter, etc..\n\n* Rage and depression, or submissive behavior\nUsed to appease others and avoid future humiliation.\n\n* Envy\nDue to a loss or inequality in status.\nThis specific emotion can trigger destructive behavior, especially if the subject field is one that the individual is deeply involved.\n\n\nThe degree to which someone is satisfied with one-self has also an effect on status, the so called self-esteem.\n\n\nPeople prefer others that make them feel good about themselves.\n\nBy consequence, the ones that are targets of envy make others feel bad: The discomfort they entice triggers others to attack their status.\nFor example using: gossip, malicious acts, etc..	Loss or difference in status -> Strong conflicted feelings between individuals	Wicker, Frank W., Glen C. Payne, and Randall D. Morgan. "Participant descriptions of guilt and shame." Motivation and emotion 7.1 (1983): 25-39.\n\nGilbert, Paul. "Changes: Rank, status and mood." On the move: The psychology of change and transition (1990): 33-52.\n\nForrest, Marvin S., and Jack E. Hokanson. "Depression and autonomic arousal reduction accompanying self-punitive behavior." Journal of Abnormal Psychology 84.4 (1975): 346.\n\nFeather, Norman T. "Human values and their relation to justice." Journal of Social Issues 50.4 (1994): 129-151.
130	Biases are design features.\n\nThey arise when no evidence of logic is found and work as shortcuts, which are valid in many cases.\n\nThey are useful in situations where there are processing limitations or processing all available choices is too costly.\n\nThey are also created for tasks that the mind has not been designed to conceive, abstract concepts.\n\nIf processing is not costly than the bias is removed if and only if it affects the reproduction process.	Biases -> Shortcut to processing information	Kahneman, Daniel, and Amos Tversky. "On the study of statistical intuitions." Cognition 11.2 (1982): 123-141.\n\nFehr, Ernst, and Simon Gächter. "Fairness and retaliation." (2000): 153-173.\n\nFehr, Ernst, Simon Gächter, and Georg Kirchsteiger. "Reciprocity as a contract enforcement device: Experimental evidence." Econometrica: journal of the Econometric Society (1997): 833-860.\n\nGüth, Werner, and Eric Van Damme. "Information, strategic behavior, and fairness in ultimatum bargaining: An experimental study." Journal of mathematical Psychology 42.2 (1998): 227-247.\n\nTversky, Amos, and Daniel Kahneman. "The framing of decisions and the psychology of choice." Environmental Impact Assessment, Technology Assessment, and Risk Analysis. Springer Berlin Heidelberg, 1985. 107-129.\n\nGilovich, Thomas, Dale Griffin, and Daniel Kahneman. Heuristics and biases: The psychology of intuitive judgment. Cambridge university press, 2002.\n\nKahneman, Daniel. "A perspective on judgment and choice: mapping bounded rationality." American psychologist 58.9 (2003): 697.\n\nArkes, Hal R. "Costs and benefits of judgment errors: Implications for debiasing." Psychological bulletin 110.3 (1991): 486.
134	Depending on the situation, the way we think of something differs.\n\nIt is contextual.\n\nUnder pressure we cannot think of all the complex alternatives and thus use shortcuts or simple rules based on past scenarios, we use biases.\n\nBiases are multiple rules defined for multiple situations.\n\nIt has in assumption that a false positive is always better than a false negative.\n\nFor example: People avoid eating the same food if they get sick right after eating it. Even in the case where the sickness wasn't related to the food.\nThe opposite case, where it was indeed induced by the food, can be fatal.	Bias -> Set of generic rules -> Better false positive than false negative	Haselton, Martie G., and David M. Buss. "Error management theory: a new perspective on biases in cross-sex mind reading." Journal of personality and social psychology 78.1 (2000): 81.\n\nÖhman, Arne, and Susan Mineka. "Fears, phobias, and preparedness: toward an evolved module of fear and fear learning." Psychological review 108.3 (2001): 483.\n\nKorobkin, Russell, and Chris Guthrie. "Heuristics and biases at the bargaining table." Marq. L. Rev. 87 (2003): 795.
139	In the inculcation of morality conditioning, vicarious learning, and  the identification plays a bigger role than social learning and reasoning. \n\nSocial learning and reasoning are overrated, they aren't as important as it seems in the transmission of norms.\n\nLet's also note that societies are supported by reward and punishment.\nIf there are no punishment there will always be defectors breaking rules, behaving immorally, and cheating.\nIt is advantageous for them.	Morality -> Based on conditioning	Aronfreed, Justin. "Aversive control of socialization." Nebraska symposium on motivation. University of Nebraska Press, 1968.\n\nFreud, Sigmund. "Psychoanalysis: Freudian School." Encyclopedia Britannica 14 (1926): 672-674.\n\nHiggins, E. Tory. "Self-discrepancy: a theory relating self and affect." Psychological review 94.3 (1987): 319.\n\nKohlberg, Lawrence. "Essays on moral development: The psychology of moral development (Vol. 2)." New\\ brk: Harper & Row (1984).\n\nMead, George Herbert. Mind, self and society. Vol. 111. University of Chicago Press.: Chicago, 1934.\n\nKrebs, Dennis. "The Evolution of Morality." The Handbook of Evolutionary Psychology (2015): 747-71. Web.
143	Parents invest in children that have the most profitable return  reproduction wise.\n\nThere is a difference in how the sex of the children affect this investment.\n\nBoys:\nIn the future they can have many offspring with multiple partners. To achieve this they have to compete against other males for mates.\n\nGirls:\nIn the future they are assured offspring but are limited in the number of children they can have.\n\nThere is a tendency for couples with abundant resources to invest more in boys and for resource-poor couples to invest in girls.	Parental investment -> Choose according to reproductive success	Alexander, Richard D. "Darwinism and human affairs." (1979).\n\nFairbanks, Lynn A. "What is a good mother? Adaptive variation in maternal behavior of primates." Current Directions in Psychological Science 2.6 (1993): 179-183.\n\nDaly, Martin, and Margo Wilson. "The Darwinian psychology of discriminative parental solicitude." Nebraska symposium on motivation. Vol. 35. 1988.\n\nTrivers, Robert L., and Dan E. Willard. "Natural selection of parental ability to vary the sex ratio of offspring." Science 179.4068 (1973): 90-92.
149	After mate choice, a mental mechanism takes place in ones mind to prevent wandering from the current mate.\n\nWhen committed to the relationship, there's a positive bias toward the partner and a negative on towards potential mates.	Committed to relationship -> Positive bias towards partner	Simpson, Jeffry A., Steven W. Gangestad, and Margaret Lerma. "Perception of physical attractiveness: Mechanisms involved in the maintenance of romantic relationships." Journal of Personality and Social Psychology 59.6 (1990): 1192.\n\nSchachter-Shalomi, Zalman, and Ronald S. Miller. From age-ing to sage-ing: A profound new vision of growing older. 1997.\n\nKenrick, Douglas T., Jon K. Maner, and Norman P. Li. "Evolutionary Social Psychology." The Handbook of Evolutionary Psychology (2015): 1-18. Web.
155	The most desired traits in partners are:\n* Kindness\n* Understanding\n* Intelligence.\n\nOther desired traits:\n* Considerate\n* Honest\n* Affectionate\n* Dependable\n* Interesting to talk to\n* Loyal\n\nSpecific traits for women:\n* Physical attractiveness\n* Good cook\n* Frugal\n\nSpecific traits for men:\n* Good earning\n* Dependable\n* Ambitious\n* Good family background\n* Altruism\n* Tall\n\nIt's also important to note that individuals prefer similarity mating, people with the same traits, more than complementary mating.\n\nThe theory behind similarity mating or genetic similarity theory is the following:\n\nIf the phenotype matches the persons are more close genetically (Identity by State) and thus preserving the coherence of their genome.\nIt consequentially increases the relatedness of parents to children.\n\nOn a side note, older couples prefer choosing partners that are less similar to themselve.	Choose mate with positive traits that go along with their own	Buss, David M. "Marital assortment for personality dispositions: Assessment with three different data sources." Behavior genetics 14.2 (1984): 111-123.\n\nRushton, J. Philippe. "Genetic similarity, human altruism, and group selection." Behavioral and Brain sciences 12.03 (1989): 503-518.\n\nVan den Berghe, Pierre L. "Human inbreeding avoidance: Culture in nature." Behavioral and Brain Sciences 6.01 (1983): 91-102.\n\nGlazer, Nathan, and Daniel Patrick Moynihan. Ethnicity: Theory and experience. No. 109. Harvard University Press, 1975.\n\nBurnstein, Eugene. "Altruism and Genetic Relatedness." The Handbook of Evolutionary Psychology (2015): 528-51. Web.
156	As a general appreciation of personality:\n* Men prefer tender-minded partners.\n* Women prefer tough-minded partners.\n\nThe couple marital satisfaction is lower when the man in the couple has high libido.\nThis fact is unrelated to the woman's libido.\n\nDissimilarities, the differences in personality between partners, is correlated with divorce.	Men/Women preference -> Tough/Tender, Men high libido -> Marital unsatisfaction	Buss, David M. "Marital Assortment for Personality Dispositions: Assessment with Three Different Data Sources." Behavior Genetics 14.2 (1984): 111-23. Web.\n\nNovgorodoff, B. D. "Boy Meets Girl: Machiavellianism and Romantic Attraction." Personality and Social Psychology Bulletin 1.1 (1974): 307-09. Web.\n\nEysenck, H.j, and James A. Wakefield. "Psychological Factors as Predictors of Marital Satisfaction." Advances in Behaviour Research and Therapy 3.4 (1981): 151-92. Web.\n\nLum, Kenneth, and James P. Curran. "Personality Similarity and Interpersonal Attraction in the Computer Dating Situation." The Journal of Social Psychology 95.2 (1975): 233-39. Web.\n\nKeller, Matthew C., Del Thiessen, and Robert K. Young. "Mate Assortment in Dating and Married Couples." Personality and Individual Differences 21.2 (1996): 217-21. Web.
160	Sexual intercourse issues between the genders:\n\n* Men have problems with premature ejaculation.\nIt might have been favored because of the advantage it gives when the time for copulation is limited, or stressful, or dangerous.\nThis problem is more frequent in young, fearful, and stressed men.\n\n* Women have the opposite problem.\nThey have issues reaching orgasm, taking more time to achieve it.\nIt might have been favored so they have fewer children and focus on choosing only the best partners, the ones who take the time to please them.	Premature ejaculation and lack of women orgasm -> Stress and investment	Bancroft, J. "SEXUAL DISORDERS: Disorders of Sexual Potency in the Male." The British Journal of Psychiatry 115.521 (1969): 497-98. Web.\n\nSymons, Donald. "How Risky Is Risky Sex?" Journal of Sex Research 30.2 (1993): 188-90. Web.\n\nNesse, Randolph M. "Evolutionary Psychology and Mental Health." The Handbook of Evolutionary Psychology (2015): 1-20. Web.
163	r strategy:\n* Excessive resources, quantity over quality\n* Aversion to competition\n* Promiscuity\n* Low investment\n* Single parenting and little care for offspring\n* Father absence\n* Early sexual maturity\n* Low in-group loyalty\n* High level of sex hormones and fertility\n* Aggressive and risk takers\n* Attracted to short term but long term detrimental strategies\n* Correlated with criminality and violence\n* More envy and willingness to break rules (See status)\n* Less optimism and diminished reward incentives this correlates with anxiety, depression, and neuroticism\n\nMore frequent in dangerous environment but always has an opportunity for expansion.\nChildhood stress is linked to an r-strategy.\n\n\nK strategy:\n\n* Scarce resources, quality over quantity\n* Embrace competition\n* Delayed, monogamous sexuality\n* High investment and dual parenting\n* Small number of offspring\n* Care for offspring\n* Late sexual maturity and activity\n* High in-group loyalty\n* High level of empathy\n* Tendencies toward feeling of disgust (see Morals)\n* Desire to win in-group status\n\nMore frequent in safe environments.\n\nThere should be an equilibrium between the number of K and r individuals in a population. Otherwise the system looses its stability.	Social strategies explained with r/K theory	"From Quantity to Quality of Life: R-K Selection and Human Development (PDF Download Available)." ResearchGate. N.p., n.d. Web. 25 Dec. 2016.\n\nBogaert, Anthony F., and J. Philippe Rushton. "Sexuality, Delinquency and R/K Reproductive Strategies: Data from a Canadian University Sample." Personality and Individual Differences 10.10 (1989): 1071-077. Web.\n\nMclain, Denson Kelly. "The R - K Continuum and the Relative Effectiveness of Sexual Selection." Oikos 60.2 (1991): 263. Web.\n\nRushton, J. "Placing Intelligence into an Evolutionary Framework or How Fits into the ? Matrix of Life-history Traits including Longevity." Intelligence 32.4 (2004): 321-28. Web.\n\nReznick, David, Michael J. Bryant, and Farrah Bashey. "R- and K-Selection Revisited: The Role of Population Regulation in Life-History Evolution." Ecology 83.6 (2002): 1509. Web.\n\n"The K-factor, Covitality, and Personality : A Psychometric Test of Life History Theory." Human Nature (Hawthorne, N.Y.). U.S. National Library of Medicine, n.d. Web. 25 Dec. 2016.\n\nMacdonald, Kevin. "An Evolutionary Perspective on Human Fertility." Population and Environment 21.2 (1999): 223-46. Web.\n\nRushton, J. Philippe. "Do R-K Strategies Underlie Human Race Differences? A Reply to Weizmann Et Al." Canadian Psychology/Psychologie Canadienne 32.1 (1991): 29-42. Web.\n
169	The big five personality traits, OCEAN are heritable at around 50%.\n\n* Openness to experience\n* Conscientiousness\n* Extraversion\n* Agreeableness\n* Neuroticism\n\nThe other 50% are due to social norms and environmental factors.\n\nThose traits gets more stable as time goes on. Agreeableness and conscientiousness typically increase with time, whereas extraversion, neuroticism, and openness tend to decrease	Big Personality Traits are Heritable at ~50%	Bouchard, Thomas J., and Matt Mcgue. "Genetic and Environmental Influences on Human Psychological Differences." Journal of Neurobiology 54.1 (2002): 4-45. Web. \n\n"Big Five Personality Traits." Wikipedia. Wikimedia Foundation, n.d. Web. 23 Dec. 2016. 
172	Top 10 Replicated Findings From Behavioral Genetics:\r\n\r\n* All psychological traits show significant and substantial genetic influence\r\n* No traits are 100% heritable\r\n* Heritability is caused by many genes of small effect\r\n* Phenotypic correlations between psychological traits show significant and substantial genetic mediation\r\n* The heritability of intelligence increases throughout development\r\n* Age-to-age stability is mainly due to genetics\r\n* Most measures of the "environment" show significant genetic influence\r\n* Most associations between environmental measures and psychological traits are significantly mediated genetically\r\n* Most environmental effects are not shared by children growing up in the same family\r\n* Abnormal is normal	Traits are not 100% inherited but genes have a great influence	Plomin, Robert, John C. Defries, Valerie S. Knopik, and Jenae M. Neiderhiser. "Top 10 Replicated Findings From Behavioral Genetics." Perspectives on Psychological Science 11.1 (2016): 3-23. Web.
173	Political affiliations can be heritable. It is an extended phenotype, an indirect consequence of the five big genetically heritable behavioral traits.\r\n\r\nSo as with any other behavioral traits it's half heritable.\r\n\r\nThis is especially true for:\r\n* Openness to experience\r\n* Agreeableness\r\n* Neuroticism\r\n\r\nRelated to sharing resources, males wich are more dominant or physically able support distribution based on merit and males which are less dominant support distribution based on needs. For females it is less clear.	Political affiliation is an after effect of behavioral traits	"Biology and Political Orientation." Wikipedia. Wikimedia Foundation, 11 Mar. 2017. Web. 19 Mar. 2017.\r\n\r\nJost, John T., and David M. Amodio. "Political Ideology as Motivated Social Cognition: Behavioral and Neuroscientific Evidence." Motivation and Emotion 36.1 (2011): 55-64. Web.\r\n\r\n"Strong men more likely to vote Conservative". The Telegraph. April 11, 2012. Retrieved September 25, 2012.\r\n\r\nPetersen, Michael Bang. "Evolutionary Political Psychology." The Handbook of Evolutionary Psychology (2015): 1-19. Web.
\.


--
-- Name: note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('note_id_seq', 173, true);


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
104	11
167	4
167	15
167	7
167	14
167	28
168	8
168	2
168	19
168	5
169	16
169	5
169	29
169	7
170	11
170	5
170	29
171	29
171	7
171	14
172	26
172	16
172	20
172	21
172	29
172	7
173	26
173	4
173	29
173	7
\.


--
-- Name: categories categories_category_key; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_category_key UNIQUE (category);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: note note_pkey; Type: CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY note
    ADD CONSTRAINT note_pkey PRIMARY KEY (id);


--
-- Name: notes_categories category_link; Type: FK CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY notes_categories
    ADD CONSTRAINT category_link FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- Name: notes_categories note_link; Type: FK CONSTRAINT; Schema: public; Owner: raptor
--

ALTER TABLE ONLY notes_categories
    ADD CONSTRAINT note_link FOREIGN KEY (note_id) REFERENCES note(id);


--
-- PostgreSQL database dump complete
--

