-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2015 at 08:38 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookshop`
--
CREATE DATABASE IF NOT EXISTS `bookshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookshop`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`id` int(11) NOT NULL,
  `name` varchar(52) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(102) NOT NULL,
  `image` text,
  `rating` text NOT NULL,
  `userid` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `author`, `image`, `rating`, `userid`) VALUES
(380, 'me', 'me', 'me', 'http://www.gettyimages.ie/gi-resources/images/Homepage/Category-Creative/UK/UK_Creative_462809583.jpg', '', ''),
(381, 'jbas;', 'kn', 'kln', 'lnk', '', ''),
(382, 'jbas;', 'kn', 'kln', 'lnk', '', ''),
(383, 'kjb', 'jbk', 'kj', 'xd', '', ''),
(384, 'kjb', 'jbk', 'kj', 'xd', '', ''),
(385, 'jb', 'jkb', 'jkbk', 'kb', '', ''),
(386, 'jb', 'bd', 'lnk', 'ln', '', '14'),
(387, 'tim', 'hi', 'ih', '<h2>add a book</h2>', '', '14'),
(388, 'Slaves No More', 'The three essays in this volume present an introduction to history of the emancipation of the slaves during the Civil War. The first essay traces the destruction of slavery by discussing the shift from a war for the Union to a war against slavery. The slaves are shown to have shaped the destiny of the nation through their determination to place their liberty on the wartime agenda. The second essay examines the evolution of freedom in occupied areas of the lower and upper South. The struggle of those freed to obtain economic independence in difficult wartime circumstances indicates conflicting conceptions of freedom among former slaves and slaveholders, Northern soldiers and civilians. The third essay demonstrates how the enlistment and military service of nearly 200,000 slaves hastened the transformation of the war into a struggle for universal liberty, and how this experience shaped the lives of former slaves long after the war had ended.', 'Ira Berlin', 'http://books.google.ie/books/content?id=1WeyLWct7wMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(389, 'A Secret History of the IRA', 'For decades the British and Irish had ''got used to'' a situation without parallel in Europe: a cold, ferocious, persistent campaign of bombing and terror of extraordinary duration and inventiveness. At the heart of that campaign lies one man: GerryAdams. From the outbreak of the troubles to the present day he has been an immensely influential figure. The most compelling question about the IRA is: how did a man who condoned atrocities that resulted in huge numbers of civilian deaths also become the guiding light behind the peace process? Moloney''s book is now updated to encompass the anxious and uneasy peace that has prevailed to 2007.', 'Ed Moloney', 'http://books.google.ie/books/content?id=W2AeD_OacD4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(390, 'Ira Sleeps Over', 'A little boy is excited at the prospect of spending the night at his friend''s house but worries how he''ll get along without his teddy bear.', 'Bernard Waber', 'http://books.google.ie/books/content?id=KvKJ1nBXQdIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(391, 'The Famine Immigrants: April 1849-September 1849', '', 'Ira A. Glazier', 'http://books.google.ie/books/content?id=nU6ee4jhzygC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(392, 'Freedom: Volume 1, Series 1: The Destruction of Slav', 'This is the first of a series of documentary histories of emancipation designed to tell the story of the transit of black people from slavery to freedom in the United States. The series will provide a social history of emancipation, written in the words of the emancipated. This volume explains how black military service helped to destroy slavery, and how the experience of soldiering shaped the life of black people (in the army and out) during and after the war; it also provides a social history of black soldiers.', 'Ira Berlin', 'http://books.google.ie/books/content?id=TPg8AAAAIAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(393, 'The Santa Claus Bank Robbery', 'Master storyteller A. C. Greene re-creates one of America’s most bizarre holdups—one that began as a lark. On Christmas Eve 1927, four men set off to rob the First National Bank of Cisco, Texas. Soon the lark turned into a tragedy—and at times a comedy—of errors. The robbers did not realize the car they had stolen for their getaway was running on empty. The leader did not anticipate the attention his disguise would draw, even though it was a bright red Santa Claus suit. And they could not have known that all of Cisco would have guns at hand because the Bankers Association had offered a reward of $5,000 for any dead bank robber, no questions asked. The Santa Claus bank robbery set off a chain of events that would lead to violence and the death of six men and launch the largest manhunt Texas had ever seen. A. C. Greene’s factual account of the unusual crime reads like a novel—fast paced, full of unexpected turns, and rich with the flavor of life in Texas at the beginning of the end of the Old West. This new edition contains an Afterword with photographs, some of them never before published, and followup information on the lives of the participants, including the surviving robber, witnesses, and kidnap victims.', 'A. C. Greene', 'http://books.google.ie/books/content?id=fLGYN6qotqUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(394, 'Santa', '', 'Federico Gamboa', 'http://books.google.ie/books/content?id=_EQWRBGme_UC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(395, 'Brown Tide Rising', 'Since 1993, metaphorical language has permeated mainstream media reporting on the United States'' growing Latino population. In this book, Otto Santa Ana argues that far from being mere figures of speech, such metaphors produce and sustain negative public perceptions of the Latino community and its place in American society, precluding the view that Latinos are vested with the same rights and privileges as other citizens. Applying the insights of cognitive metaphor theory to an extensive natural language data set drawn from hundreds of articles in the Los Angeles Times and other media, Santa Ana reveals how metaphorical language portrays Latinos as invaders, outsiders, burdens, parasites, diseases, animals, and weeds. He convincingly demonstrates that three anti-Latino referenda passed in California because of such imagery, particularly the infamous anti-immigrant measure, Proposition 187.', 'Otto Santa Ana', 'http://books.google.ie/books/content?id=6zTat4lcRI0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '5', ''),
(396, 'The Leadership Secrets of Santa Claus', '"This work is based on the belief that effective leaders accomplish ''big things'' by GIVING employees clear goals, solid accountabilities, and ongoing feedback, coaching and recognition" -- p. [4].', 'David Cottrell', 'http://books.google.ie/books/content?id=2n1LVih0TREC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '3', ''),
(397, 'The Great Santa Search', 'This follow-up to Jeff Guinn''s bestselling holiday favorites The Autobiography of Santa Claus and How Mrs. Claus Saved Christmas takes readers on a sleigh ride through the history of Christmas in America that lands smack-dab in 2006, as a new reality TV show threatens to destroy the true spirit of Christmas. This third installment in Jeff Guinn''s bestselling Christmas Chronicles series finds Santa facing perhaps the biggest challenge of his career. As Santa himself relates in this delightful holiday read, the trouble began in 1841, when a Philadelphia merchant named J. W. Parkinson hired a neighbor to dress as Kris Kringle in order to lure shoppers into his dry-goods store. Much to Santa''s chagrin, it''s been pretty much downhill since. It seems everybody wants a piece of Christmas, and through the years it has gotten worse- to the point that not a Christmas can go by without phony Santas posing on street corners across the country. But when, in 2006, it''s announced that a new reality TV show called The Great Santa Search will feature a competition to find the "real" St. Nicholas, Santa knows it''s time to step in! With all the rich historical detail and glorious Christmas cheer that made The Autobiography of Santa Claus and How Mrs. Claus Saved Christmas treasured family favorites, The Great Santa Search is destined to become yet another Christmas classic from Jeff Guinn.', 'Jeff Guinn', 'http://books.google.ie/books/content?id=th7mKtk-HRUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(398, 'The History of Tom Jones, a Foundling', '', 'Henry Fielding', 'http://books.google.ie/books/content?id=XtwkAAAAMAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(399, 'The history of Tom Jones a foundling', '', 'Henry FIELDING', 'http://books.google.ie/books/content?id=kldayysf8ZEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(400, 'Tom Jones', '', 'David Rogers', 'http://books.google.ie/books/content?id=8qdLppXRUdAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(401, 'The Fellowship of the Ring', 'Frodo Baggins knew the Ringwraiths were searching for him - and the Ring of Power he bore that would enable Sauron to destroy all that was good in Middle-earth. Now it was up to Frodo and his faithful servant Sam to carry the Ring to where it could be detroyed - in the very center of Sauron''s dark kingdom.', 'J. R. R. Tolkien', 'http://books.google.ie/books/content?id=7Q7sBQAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '', ''),
(402, 'The Lord of the Rings', 'Beginning on December 19, New Line Cinema will present a grand trilogy of live-action feature films: The Fellowship of the Ring, The Two Towers, & The Return of the King. The three separately released installments of J.R.R. Tolkien''s The Lord of the Rings will mark the return of "cliffhanger cinema" for the first time since the serial adventures of decades past. Tolkien''s mythic vision will come to life through the cutting-edge cinema technology & artistry of director Peter Jackson. Houghton Mifflin, publisher of the epic masterworks of J.R.R. Tolkien for more than sixty years, is proud to offer new movie tie-in volumes, each available separately & in boxed sets. Paperback & hardcover editions & boxed sets will have different cover art.', 'J. R. R. Tolkien', 'http://books.google.ie/books/content?id=VgiBkgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '5', ''),
(403, 'Lord of the Rings', '" With New Line Cinema''s production of The Lord of the Rings film trilogy, the popularity of the works of J.R.R. Tolkien is unparalleled. Tolkien''s books continue to be bestsellers decades after their original publication. An epic in league with those of Spenser and Malory, The Lord of the Rings trilogy, begun during Hitler''s rise to power, celebrates the insignificant individual as hero in the modern world. Jane Chance''s critical appraisal of Tolkien''s heroic masterwork is the first to explore its "mythology of power"--that is, how power, politics, and language interact. Chance looks beyond the fantastic, self-contained world of Middle-earth to the twentieth-century parallels presented in the trilogy.', 'Jane Chance', 'http://books.google.ie/books/content?id=KJr9UGRh8JAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '3', ''),
(404, 'Watching the Lord of the Rings', 'How did audiences across the world respond to the films of "The Lord of the Rings"? This book presents findings from the largest film audience project ever undertaken, drawing from 25,000 questionnaire responses and a wide array of other materials. Contributors use these materials to explore a series of widely speculated questions: why is film fantasy important to different kinds of viewers? Through marketing, previews and reviews, debates and cultural chatter, how are audiences prepared for a film like this? How did fans of the book respond to its adaptation on screen? How do people choose their favorite characters? How was the films'' reception shaped by different national and cultural contexts? The answers to these questions shed fresh light on the extraordinary popularity of "The Lord of the Rings" and provide important new insights into the global reception of cinema in the twenty-first century.', 'Martin Barker', 'http://books.google.ie/books/content?id=5XOL49zCAHEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(405, 'Killer', 'Well used to elevated emotions, psychologist Alex Delaware shrugs off a joking death threat from beautiful Beverly Hills physician Constance Sykes, whose attempt to secure legal custody of her baby niece is thwarted by Alex''s forthright report to the court. Alex plays down the threat until LAPD''s Milo Sturgis rushes to his side with the shocking word on the street that a hit''s been taken out on him. But while Alex may be in grave danger, it won''t be from the Beverley Hills doctor, for Connie is soon discovered brutally slain. When her sister Cherie and the baby disappear, apparently on the run, Alex''s search for answers leads him to aged rockers, charming homeboys and even Machiavellian judges. As the darkest of secrets are peel away, and a cruel system churns through family lives, Alex seeks to stop a vicious killer and save a child from a life of nightmares . . . or worse.', 'Jonathan Kellerman', 'http://books.google.ie/books/content?id=XatRAQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(406, 'Ted Bundy', 'Drawn from more than 150 hours of exclusive tape-recorded interviews with Bundy, this collection provides shocking insights into the killer''s 11th-hour confessions before his death in a Florida electric chair. A unique, horrifying self portrait of one of the most savage sex killers in history.', 'Stephen G. Michaud', 'http://books.google.ie/books/content?id=nmgngRu7p0EC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(407, 'The Greatest Killer', 'Once known as the "great fire" or "spotted death," smallpox has been rivaled only by plague as a source of supreme terror. Although naturally occurring smallpox was eradicated in 1977, recent terrorist attacks in the United States have raised the possibility that someone might craft a deadly biological weapon from stocks of the virus that remain in known or perhaps unknown laboratories. In The Greatest Killer, Donald R. Hopkins provides a fascinating account of smallpox and its role in human history. Starting with its origins 10,000 years ago in Africa or Asia, Hopkins follows the disease through the ancient and modern worlds, showing how smallpox removed or temporarily incapacitated heads of state, halted or exacerbated wars, and devastated populations that had never been exposed to the disease. In Hopkins''s history, smallpox was one of the most dangerous-and influential-factors that shaped the course of world events.', 'Donald R. Hopkins', 'http://books.google.ie/books/content?id=z2zMKsc1Sn0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '2', ''),
(408, 'The Killer Angels', '“My favorite historical novel . . . a superb re-creation of the Battle of Gettysburg, but its real importance is its insight into what the war was about, and what it meant.”—James M. McPherson In the four most bloody and courageous days of our nation’s history, two armies fought for two conflicting dreams. One dreamed of freedom, the other of a way of life. Far more than rifles and bullets were carried into battle. There were memories. There were promises. There was love. And far more than men fell on those Pennsylvania fields. Bright futures, untested innocence, and pristine beauty were also the casualties of war. Michael Shaara’s Pulitzer Prize–winning masterpiece is unique, sweeping, unforgettable—the dramatic story of the battleground for America’s destiny. BONUS: This edition includes an excerpt from Jeff Shaara''s Blaze of Glory.', 'Michael Shaara', 'http://books.google.ie/books/content?id=MDjsZCMybiMC&printsec=frontcover&img=1&zoom=1&source=gbs_api', '4', ''),
(409, 'd blake', 'howiya', 'hi', 'lnsdkf', '', '14'),
(410, 'Eating Disorders and Marriage', 'First published in 1994. Routledge is an imprint of Taylor & Francis, an informa company.', 'D. Blake Woodside', 'http://books.google.ie/books/content?id=XHZlcr-MuWYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(411, 'A Moment to Talk', 'Yvette a reader says, "Blake''s poetry runs the gamut from a chuckle to a full-blown belly laugh. From a sniffl e to a "good cry" even when you didn''t know you needed one. After reading this wonderful collection of poetry, you are left with the feeling that you just spent a few hours with a dear friend and it was well worth it. If you enjoyed the journey through her fi rst book, then you will have the opportunity to meet up with that good friend once again in her new book A Moment to Talk".', 'Pamela D. Blake', 'http://books.google.ie/books/content?id=oIO0ZlrtoYUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(412, 'Family approaches in treatment of eating disorders', '', 'D. Blake Woodside', 'http://books.google.ie/books/content?id=VslrAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '', ''),
(413, 'The Magic Helmet', '', 'D. Blake Spry', 'http://books.google.ie/books/content?id=Uf6CAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(414, 'This Little Village', 'This Little Village, is a true story of a group of individuals working together to accomplish a common goal. Children and adults can relate to the village rescuing these little ducklings from almost utter disaster. Themes of commonality will reinforce and improve working together, demonstrating caring, critical thinking by individuals, translates into Social Action where everyone brings something to the table.', 'Joseph D. Blake', 'http://books.google.ie/books/content?id=vL2h1UKCzNkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(415, 'Hi!', 'While waiting in line with her mother at the post office, Margarita greets the patrons who come in carrying different types of mail.', 'Ann Herbert Scott', 'http://books.google.ie/books/content?id=glDhAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', '4', ''),
(416, 'Hi, I''m Adam', 'Adam Buehrens was 10 years old when he had Tourette syndrome. He wrote and illustrated this book because he wanted everyone to know how he and other children with Tourette syndrome are not crazy. If your child has been so diagnosed this book will help them realize they are not alone. Adam has written abut his frustrations, fears and embarrassments, as well as his successes. His message to other is, learn abut what you have, then teach others about Tourette syndrome.', 'Adam Buehrens', 'http://books.google.ie/books/content?id=Ufyo3URZ68wC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(417, 'Hi, Can We Be Friends?', '“Hi, can we be friends?” How have you handled this common question so far? Friendship is a journey. Strangers of yesterday can become best of friends tomorrow. However, after these strangers become casual friends, they may migrate into closer friendships. This journey for some cumulates into cordial business relationships, others into bubbling love and romance, but sadly, most of them end up in shock and regret. “I didn''t know that she was that kind of person,” the guys would often say. “He was only looking for sex,” the ladies would often conclude. How do we choose friends, especially those of the opposite sex? How can we maintain godly relationships, avoid heart breaks and handle platonic friendships? Many promising relationships are destroyed for lack of intelligent foresight, misplaced ideology about male/female sexuality, and abuse of human intimacy. Hi, Can we be friends? peels out layer by layer the complex process of defining the reason why a particular guy or girl comes into your life. It empowers you to harvest the potentials of relationships while putting your excesses in check. This book provides practical answers to a growing nagging nightmare of how to stand for purity amidst a sex-hyped generation. It''s practical, friendly and dynamic approach makes it a must-read for all.', 'Tekena Ikoko', 'http://books.google.ie/books/content?id=DHXoko-l5c8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(418, 'Hi, My Name Is Book', 'Michael Phipps has written and illustrated a book about what you can and cannot do to a book. The main character, BOOK, teaches you what books can be used for with examples of art, math, and colors. BOOKS friend, Piggie, shows the wrongdoings against books with examples of chewing, coloring and writing on pages, and many others.', 'Michael Phipps', 'http://books.google.ie/books/content?id=izq28q_ASe4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(419, 'Hi, how are You?', 'Illustrated biography of Daniel Johnston''s life and art, including extremely rare photos from his early childhood through all stages of his career, Johnston''s own artwork, interviews with the people in his life and an up-to-date discography. ''Johnston was the intense troubadour who in the 1980s distributed his own tape-cassettes and became world famous when Kurt Cobain wore a Johnston t-shirt, and his agent negotiated record deals while he was in a mental hospital.'' - Peter Bradshaw on the film The Devil and Daniel Johnston, The Guardian', 'Tarssa Yazdani', 'http://books.google.ie/books/content?id=o7ocj0Qn2IsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '4', ''),
(420, 'From Gravity to Thermal Gauge Theories: The AdS/CFT ', 'The AdS/CFT correspondence is a powerful tool in studying strongly coupled phenomena in gauge field theories, using results from a weakly coupled gravity background studied in the realm of string theory. AdS/CFT was first successfully applied to the study of phenomena such as the quark-gluon plasma produced in heavy ions collisions. Soon it was realized that its applicability can be extended, in a more phenomenological approach, to condensed matter systems and to systems described by fluid dynamics. The set of tutorial reviews in this volume is intended as an introduction to and survey of the principle of the AdS/CFT correspondence in its field/string theoretic formulation, its applicability to holographic QCD and to heavy ions collisions, and to give a first account of processes in fluid dynamics and condensed matter physics, which can be studied with the use of this principle. Written by leading researchers in the field and cast into the form of a high-level but approachable multi-author textbook, this volume will be of benefit to all postgraduate students, and newcomers from neighboring disciplines wishing to find a comprehensive guide for their future research.', 'Eleftherios Papantonopoulos', 'http://books.google.ie/books/content?id=8aGFUNL_RiEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(421, 'Ads, Fads, and Consumer Culture', 'The fifth edition of this approachable text draws on both academic and applied perspectives to offer a lively critique of contemporary advertising’s effects on American character and culture. Berger explains how advertising works by employing a psycho-cultural approach, encouraging readers to think about advertisements and commercials in more analytical and profound ways. Among the topics he addresses are the role of brands, the problem of self-alienation, and how both relate to consumption. Berger also considers the Values and Lifestyle (VALS) and Claritas typologies in marketing. Distinctive chapters examine specific advertisements and commercials from multiple perspectives, including semiotic, psychoanalytic, sociological, Marxist, mythic, and feminist analysis. Ads, Fads, and Consumer Culture provides an accessible overview of advertising in the United States, spanning issues as diverse as sexuality, politics, market research, consumer culture, and more; helping readers understand the role that advertising has played, and continues to play, in all our lives.', 'Arthur Asa Berger', 'http://books.google.ie/books/content?id=dVRnBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(422, 'AdS/CFT Correspondence', '', 'Olivier Biquard', 'http://books.google.ie/books/content?id=hxh8zE32wGUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(423, 'Making Ads Pay', 'A veteran copywriter offers advice on how to spark ideas and then capture them in copy, how to write headlines that attract attention, how to make ads believable and motivate readers to act, and how to learn from failure as well as success. Readers will discover principles, procedures, and practical suggestions for every medium and style of advertising.', 'John Caples', 'http://books.google.ie/books/content?id=2dZt5OQOLL4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(424, 'Big Book of Real Estate Ads', 'This exclusive travel guide guides the visitor through the most incredible activities to be found in Shanghai: savour the food of world-class chefs in Asia''s most romantic two-seater salon; eat at the best holes-in-the-walls and discover local street food haunts; find the best tailors and quality cashmere, satins and brocades by the yard; expert ......', 'William h. Pivar', 'http://books.google.ie/books/content?id=gQNOPLbD4rMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', ''),
(425, 'From Gravity to Thermal Gauge Theories: The AdS/CFT ', 'The AdS/CFT correspondence is a powerful tool in studying strongly coupled phenomena in gauge field theories, using results from a weakly coupled gravity background studied in the realm of string theory. AdS/CFT was first successfully applied to the study of phenomena such as the quark-gluon plasma produced in heavy ions collisions. Soon it was realized that its applicability can be extended, in a more phenomenological approach, to condensed matter systems and to systems described by fluid dynamics. The set of tutorial reviews in this volume is intended as an introduction to and survey of the principle of the AdS/CFT correspondence in its field/string theoretic formulation, its applicability to holographic QCD and to heavy ions collisions, and to give a first account of processes in fluid dynamics and condensed matter physics, which can be studied with the use of this principle. Written by leading researchers in the field and cast into the form of a high-level but approachable multi-author textbook, this volume will be of benefit to all postgraduate students, and newcomers from neighboring disciplines wishing to find a comprehensive guide for their future research.', 'Eleftherios Papantonopoulos', 'http://books.google.ie/books/content?id=8aGFUNL_RiEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderId`, `userId`, `bookId`) VALUES
(1, 0, 398),
(2, 0, 389),
(3, 0, 389),
(4, 14, 402),
(5, 14, 402),
(6, 14, 395);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_date`) VALUES
(11, 'asdasdasda', '$2y$10$9s//GoGGMySjIUTBb3fFP.kSwJBDU6ZU9uAbBVW6H7QEnd0vZv5IW', 'saadsasdad@gmail.com', NULL),
(12, 'tim', 'celtic06', 'zczdfzffzf@gmail.com', NULL),
(13, 'tim', '$2y$10$zdOz26GGSDl4aB9z4dwMzOcuhMqEqov5SUTGnGPck34.uMznFhSP.', 'ian@gmail.com', NULL),
(14, 'ryan', '$2y$10$cisMymBxs..AceBP94efGe3jT9OqGdjsIw.fS1kyTf33rzjXq5ZoO', 'ian@gail.com', NULL),
(15, 'tyan', '$2y$10$BB0z8lY/dWXKtQ5OWN.t9O1nsOHXqfw86VwpOinxQzK3StvG9C7YC', 'ian76@gail.com', NULL),
(16, 'tim', '$2y$10$iU2DQm8qLwvNyCzf06OJVe4Vrr1lG.SAjPognvVJJs7KXP8ebkSt6', 'iancostello120@gmail.com', NULL),
(17, 'ggg', '$2y$10$M5l7evvO98VJSCnmbAflM.WxMmoFVntN7of2vJMfCs4Ox7EE1pS4O', 'ggg@gmail.com', NULL),
(18, 'ttt', '$2y$10$bMnocxS7h05FSXn9vPJ/eewt68xqnkgtAZSBBtqoW.MmIUNdhXyBG', 'ttt@gmail.com', NULL),
(19, 'kasdk', '$2y$10$rcB82.czufTQuU2FWkr.Ouw3JoFoqiQPSincsD73s3b8jjjXY0viK', 'adsdsfas@asdasd.com', NULL),
(20, 'tim', '$2y$10$pfSEBr4qfZfpI5czTHPzuOT/VR8tPtkT7swhDwZK85POhMJ4ie6PS', 'tim@gmail.com', NULL),
(21, 'brian', '$2y$10$E81DHOWFXTHDvSKcXlvSiO1q.NN.D2fvtYxCVzFWbobYXdwH7wlZ6', 'brain@gmail.com', NULL),
(22, 'hi', '$2y$10$0Dxbo/PNxIYUv0gkomnwCePRjEjW.WhS5J2gUS1gBJGEYyzSqd6JW', 'hi@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=426;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
