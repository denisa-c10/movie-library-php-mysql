-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 04, 2026 at 10:14 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siteweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `movie_id`) VALUES
(2, 1, 3),
(5, 2, 2),
(6, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `plot` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4529 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `year`, `genre`, `runtime`, `plot`) VALUES
(3, 'Beetlejuice', 1988, 'Comedy, Fantasy', 92, 'A couple of recently deceased ghosts contract the services of a \"bio-exorcist\" in order to remove the obnoxious new owners of their house.'),
(4, 'The Cotton Club', 1984, 'Crime, Drama, Music', 127, 'The Cotton Club was a famous night club in Harlem. The story follows the people that visited the club, those that ran it, and is peppered with the Jazz music that made it so famous.'),
(5, 'The Shawshank Redemption', 1994, 'Crime, Drama', 142, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'),
(6, 'Crocodile Dundee', 1986, 'Adventure, Comedy', 97, 'An American reporter goes to the Australian outback to meet an eccentric crocodile poacher and invites him to New York City.'),
(7, 'Valkyrie', 2008, 'Drama, History, Thriller', 121, 'A dramatization of the 20 July assassination and political coup plot by desperate renegade German Army officers against Hitler during World War II.'),
(8, 'Ratatouille', 2007, 'Animation, Comedy, Family', 111, 'A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.'),
(9, 'City of God', 2002, 'Crime, Drama', 130, 'Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer.'),
(10, 'Memento', 2000, 'Mystery, Thriller', 113, 'A man juggles searching for his wife\'s murderer and keeping his short-term memory loss from being an obstacle.'),
(11, 'The Intouchables', 2011, 'Biography, Comedy, Drama', 112, 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.'),
(12, 'Stardust', 2007, 'Adventure, Family, Fantasy', 127, 'In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he\'ll retrieve a fallen star by venturing into the magical realm.'),
(13, 'Apocalypto', 2006, 'Action, Adventure, Drama', 139, 'As the Mayan kingdom faces its decline, the rulers insist the key to prosperity is to build more temples and offer human sacrifices. Jaguar Paw, a young man captured for sacrifice, flees to avoid his fate.'),
(14, 'Taxi Driver', 1976, 'Crime, Drama', 113, 'A mentally unstable Vietnam War veteran works as a night-time taxi driver in New York City where the perceived decadence and sleaze feeds his urge for violent action, attempting to save a preadolescent prostitute in the process.'),
(15, 'No Country for Old Men', 2007, 'Crime, Drama, Thriller', 122, 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.'),
(16, 'Planet 51', 2009, 'Animation, Adventure, Comedy', 91, 'An alien civilization is invaded by Astronaut Chuck Baker, who believes that the planet was uninhabited. Wanted by the military, Baker must get back to his ship before it goes into orbit without him.'),
(17, 'Looper', 2012, 'Action, Crime, Drama', 119, 'In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to \'close the loop\' by sending back Joe\'s future self for assassination.'),
(18, 'Corpse Bride', 2005, 'Animation, Drama, Family', 77, 'When a shy groom practices his wedding vows in the inadvertent presence of a deceased young woman, she rises from the grave assuming he has married her.'),
(19, 'The Third Man', 1949, 'Film-Noir, Mystery, Thriller', 93, 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.'),
(20, 'The Beach', 2000, 'Adventure, Drama, Romance', 119, 'Twenty-something Richard travels to Thailand and finds himself in possession of a strange map. Rumours state that it leads to a solitary beach paradise, a tropical bliss - excited and intrigued, he sets out to find it.'),
(21, 'Scarface', 1983, 'Crime, Drama', 170, 'In Miami in 1980, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.'),
(22, 'Sid and Nancy', 1986, 'Biography, Drama, Music', 112, 'Morbid biographical story of Sid Vicious, bassist with British punk group the Sex Pistols, and his girlfriend Nancy Spungen. When the Sex Pistols break up after their fateful US tour, ...'),
(23, 'Black Swan', 2010, 'Drama, Thriller', 108, 'A committed dancer wins the lead role in a production of Tchaikovsky\'s \"Swan Lake\" only to find herself struggling to maintain her sanity.'),
(24, 'Inception', 2010, 'Action, Adventure, Sci-Fi', 148, 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.'),
(25, 'The Deer Hunter', 1978, 'Drama, War', 183, 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.'),
(26, 'Chasing Amy', 1997, 'Comedy, Drama, Romance', 113, 'Holden and Banky are comic book artists. Everything\'s going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out she\'s gay.'),
(27, 'Django Unchained', 2012, 'Drama, Western', 165, 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.'),
(28, 'The Silence of the Lambs', 1991, 'Crime, Drama, Thriller', 118, 'A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.'),
(29, 'American Beauty', 1999, 'Drama, Romance', 122, 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.'),
(30, 'Snatch', 2000, 'Comedy, Crime', 102, 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers, and supposedly Jewish jewelers fight to track down a priceless stolen diamond.'),
(31, 'Midnight Express', 1978, 'Crime, Drama, Thriller', 121, 'Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.'),
(32, 'Pulp Fiction', 1994, 'Crime, Drama', 154, 'The lives of two mob hit men, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
(33, 'Lock, Stock and Two Smoking Barrels', 1998, 'Comedy, Crime', 107, 'A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.'),
(34, 'Lucky Number Slevin', 2006, 'Crime, Drama, Mystery', 110, 'A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the city\'s most rival crime bosses: The Rabbi and The Boss. Slevin is under constant surveillance by relentless Detective Brikowski as well as the infamous assassin Goodkat and finds himself having to hatch his own ingenious plot to get them before they get him.'),
(35, 'Rear Window', 1954, 'Mystery, Thriller', 112, 'A wheelchair-bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.'),
(36, 'Pan\'s Labyrinth', 2006, 'Drama, Fantasy, War', 118, 'In the falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.'),
(37, 'Shutter Island', 2010, 'Mystery, Thriller', 138, 'In 1954, a U.S. marshal investigates the disappearance of a murderess who escaped from a hospital for the criminally insane.'),
(38, 'Reservoir Dogs', 1992, 'Crime, Drama, Thriller', 99, 'After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.'),
(39, 'The Shining', 1980, 'Drama, Horror', 146, 'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.'),
(40, 'Midnight in Paris', 2011, 'Comedy, Fantasy, Romance', 94, 'While on a trip to Paris with his fiancÃ©e\'s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s everyday at midnight.'),
(41, 'Les MisÃ©rables', 2012, 'Drama, Musical, Romance', 158, 'In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory worker\'s daughter. The decision changes their lives forever.'),
(42, 'L.A. Confidential', 1997, 'Crime, Drama, Mystery', 138, 'As corruption grows in 1950s LA, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.'),
(43, 'Moneyball', 2011, 'Biography, Drama, Sport', 133, 'Oakland A\'s general manager Billy Beane\'s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.'),
(44, 'The Hangover', 2009, 'Comedy', 100, 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.'),
(45, 'The Great Beauty', 2013, 'Drama', 141, 'Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.'),
(46, 'Gran Torino', 2008, 'Drama', 116, 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, a Hmong teenager who tried to steal Kowalski\'s prized possession: a 1972 Gran Torino.'),
(47, 'Mary and Max', 2009, 'Animation, Comedy, Drama', 92, 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.'),
(48, 'Flight', 2012, 'Drama, Thriller', 138, 'An airline pilot saves almost all his passengers on his malfunctioning airliner which eventually crashed, but an investigation into the accident reveals something troubling.'),
(49, 'One Flew Over the Cuckoo\'s Nest', 1975, 'Drama', 133, 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.'),
(50, 'Requiem for a Dream', 2000, 'Drama', 102, 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.'),
(51, 'The Truman Show', 1998, 'Comedy, Drama, Sci-Fi', 103, 'An insurance salesman/adjuster discovers his entire life is actually a television show.'),
(52, 'The Artist', 2011, 'Comedy, Drama, Romance', 100, 'A silent movie star meets a young dancer, but the arrival of talking pictures sends their careers in opposite directions.'),
(53, 'Forrest Gump', 1994, 'Comedy, Drama', 142, 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.'),
(54, 'The Hobbit: The Desolation of Smaug', 2013, 'Adventure, Fantasy', 161, 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.'),
(55, 'Vicky Cristina Barcelona', 2008, 'Drama, Romance', 96, 'Two girlfriends on a summer holiday in Spain become enamored with the same painter, unaware that his ex-wife, with whom he has a tempestuous relationship, is about to re-enter the picture.'),
(56, 'Slumdog Millionaire', 2008, 'Drama, Romance', 120, 'A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of \"Who Wants to be a Millionaire?\"'),
(57, 'Lost in Translation', 2003, 'Drama', 101, 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.'),
(58, 'Match Point', 2005, 'Drama, Romance, Thriller', 119, 'At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.'),
(59, 'Psycho', 1960, 'Horror, Mystery, Thriller', 109, 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.'),
(60, 'North by Northwest', 1959, 'Action, Adventure, Crime', 136, 'A hapless New York advertising executive is mistaken for a government agent by a group of foreign spies, and is pursued across the country while he looks for a way to survive.'),
(61, 'Madagascar: Escape 2 Africa', 2008, 'Animation, Action, Adventure', 89, 'The animals try to fly back to New York City, but crash-land on an African wildlife refuge, where Alex is reunited with his parents.'),
(62, 'Despicable Me 2', 2013, 'Animation, Adventure, Comedy', 98, 'When Gru, the world\'s most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru\'s own, He has to fight back with new gadgetry, cars, and more minion madness.'),
(63, 'Downfall', 2004, 'Biography, Drama, History', 156, 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator\'s final days in his Berlin bunker at the end of WWII.'),
(64, 'Madagascar', 2005, 'Animation, Adventure, Comedy', 86, 'Spoiled by their upbringing with no idea what wild life is really like, four animals from New York Central Zoo escape, unwittingly assisted by four absconding penguins, and find themselves in Madagascar, among a bunch of merry lemurs'),
(65, 'Madagascar 3: Europe\'s Most Wanted', 2012, 'Animation, Adventure, Comedy', 93, 'Alex, Marty, Gloria and Melman are still fighting to get home to their beloved Big Apple. Their journey takes them through Europe where they find the perfect cover: a traveling circus, which they reinvent - Madagascar style.'),
(66, 'God Bless America', 2011, 'Comedy, Crime', 105, 'On a mission to rid society of its most repellent citizens, terminally ill Frank makes an unlikely accomplice in 16-year-old Roxy.'),
(67, 'The Social Network', 2010, 'Biography, Drama', 120, 'Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.'),
(68, 'The Pianist', 2002, 'Biography, Drama, War', 150, 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.'),
(69, 'Alive', 1993, 'Adventure, Biography, Drama', 120, 'Uruguayan rugby team stranded in the snow swept Andes are forced to use desperate measures to survive after a plane crash.'),
(70, 'Casablanca', 1942, 'Drama, Romance, War', 102, 'In Casablanca, Morocco in December 1941, a cynical American expatriate meets a former lover, with unforeseen complications.'),
(71, 'American Gangster', 2007, 'Biography, Crime, Drama', 157, 'In 1970s America, a detective works to bring down the drug empire of Frank Lucas, a heroin kingpin from Manhattan, who is smuggling the drug into the country from the Far East.'),
(72, 'Catch Me If You Can', 2002, 'Biography, Crime, Drama', 141, 'The true story of Frank Abagnale Jr. who, before his 19th birthday, successfully conned millions of dollars\' worth of checks as a Pan Am pilot, doctor, and legal prosecutor.'),
(73, 'American History X', 1998, 'Crime, Drama', 119, 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.'),
(74, 'Casino', 1995, 'Biography, Crime, Drama', 178, 'Greed, deception, money, power, and murder occur between two best friends, a mafia underboss and a casino owner, for a trophy wife over a gambling empire.'),
(75, 'Pirates of the Caribbean: At World\'s End', 2007, 'Action, Adventure, Fantasy', 169, 'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.'),
(76, 'Pirates of the Caribbean: On Stranger Tides', 2011, 'Action, Adventure, Fantasy', 136, 'Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.'),
(77, 'Crash', 2004, 'Crime, Drama, Thriller', 112, 'Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.'),
(78, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'Action, Adventure, Fantasy', 143, 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.'),
(79, 'The Lord of the Rings: The Return of the King', 2003, 'Action, Adventure, Drama', 201, 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'),
(80, 'Oldboy', 2003, 'Drama, Mystery, Thriller', 120, 'After being kidnapped and imprisoned for 15 years, Oh Dae-Su is released, only to find that he must find his captor in 5 days.'),
(81, 'Chocolat', 2000, 'Drama, Romance', 121, 'A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community.'),
(82, 'Casino Royale', 2006, 'Action, Adventure, Thriller', 144, 'Armed with a licence to kill, Secret Agent James Bond sets out on his first mission as 007 and must defeat a weapons dealer in a high stakes game of poker at Casino Royale, but things are not what they seem.'),
(83, 'WALLÂ·E', 2008, 'Animation, Adventure, Family', 98, 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.'),
(84, 'The Wolf of Wall Street', 2013, 'Biography, Comedy, Crime', 180, 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.'),
(85, 'Hellboy II: The Golden Army', 2008, 'Action, Adventure, Fantasy', 120, 'The mythical world starts a rebellion against humanity in order to rule the Earth, so Hellboy and his team must save the world from the rebellious creatures.'),
(86, 'Sunset Boulevard', 1950, 'Drama, Film-Noir, Romance', 110, 'A hack screenwriter writes a screenplay for a former silent-film star who has faded into Hollywood obscurity.'),
(87, 'I-See-You.Com', 2006, 'Comedy', 92, 'A 17-year-old boy buys mini-cameras and displays the footage online at I-see-you.com. The cash rolls in as the site becomes a major hit. Everyone seems to have fun until it all comes crashing down....'),
(88, 'The Grand Budapest Hotel', 2014, 'Adventure, Comedy, Crime', 99, 'The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.'),
(89, 'The Hitchhiker\'s Guide to the Galaxy', 2005, 'Adventure, Comedy, Sci-Fi', 109, 'Mere seconds before the Earth is to be demolished by an alien construction crew, journeyman Arthur Dent is swept off the planet by his friend Ford Prefect, a researcher penning a new edition of \"The Hitchhiker\'s Guide to the Galaxy.\"'),
(90, 'Once Upon a Time in America', 1984, 'Crime, Drama', 229, 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.'),
(91, 'Oblivion', 2013, 'Action, Adventure, Mystery', 124, 'A veteran assigned to extract Earth\'s remaining resources begins to question what he knows about his mission and himself.'),
(92, 'V for Vendetta', 2005, 'Action, Drama, Thriller', 132, 'In a future British tyranny, a shadowy freedom fighter, known only by the alias of \"V\", plots to overthrow it with the help of a young woman.'),
(93, 'Gattaca', 1997, 'Drama, Sci-Fi, Thriller', 106, 'A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.'),
(94, 'Silver Linings Playbook', 2012, 'Comedy, Drama, Romance', 122, 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.'),
(95, 'Alice in Wonderland', 2010, 'Adventure, Family, Fantasy', 108, 'Nineteen-year-old Alice returns to the magical world from her childhood adventure, where she reunites with her old friends and learns of her true destiny: to end the Red Queen\'s reign of terror.'),
(96, 'Gandhi', 1982, 'Biography, Drama', 191, 'Gandhi\'s character is fully explained as a man of nonviolence. Through his patience, he is able to drive the British out of the subcontinent. And the stubborn nature of Jinnah and his commitment towards Pakistan is portrayed.'),
(97, 'Pacific Rim', 2013, 'Action, Adventure, Sci-Fi', 131, 'As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.'),
(98, 'Kiss Kiss Bang Bang', 2005, 'Comedy, Crime, Mystery', 103, 'A murder mystery brings together a private eye, a struggling actress, and a thief masquerading as an actor.'),
(99, 'The Quiet American', 2002, 'Drama, Mystery, Romance', 101, 'An older British reporter vies with a young U.S. doctor for the affections of a beautiful Vietnamese woman.'),
(100, 'Cloud Atlas', 2012, 'Drama, Sci-Fi', 172, 'An exploration of how the actions of individual lives impact one another in the past, present and future, as one soul is shaped from a killer into a hero, and an act of kindness ripples across centuries to inspire a revolution.'),
(101, 'The Impossible', 2012, 'Drama, Thriller', 114, 'The story of a tourist family in Thailand caught in the destruction and chaotic aftermath of the 2004 Indian Ocean tsunami.'),
(102, 'All Quiet on the Western Front', 1930, 'Drama, War', 136, 'A young soldier faces profound disillusionment in the soul-destroying horror of World War I.'),
(103, 'The English Patient', 1996, 'Drama, Romance, War', 162, 'At the close of WWII, a young nurse tends to a badly-burned plane crash victim. His past is shown in flashbacks, revealing an involvement in a fateful love affair.'),
(104, 'Dallas Buyers Club', 2013, 'Biography, Drama', 117, 'In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.'),
(105, 'Frida', 2002, 'Biography, Drama, Romance', 123, 'A biography of artist Frida Kahlo, who channeled the pain of a crippling injury and her tempestuous marriage into her work.'),
(106, 'Before Sunrise', 1995, 'Drama, Romance', 105, 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.'),
(107, 'The Rum Diary', 2011, 'Comedy, Drama', 120, 'American journalist Paul Kemp takes on a freelance job in Puerto Rico for a local newspaper during the 1960s and struggles to find a balance between island culture and the expatriates who live there.'),
(108, 'The Last Samurai', 2003, 'Action, Drama, History', 154, 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.'),
(109, 'Chinatown', 1974, 'Drama, Mystery, Thriller', 130, 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption and murder.'),
(110, 'Calvary', 2014, 'Comedy, Drama', 102, 'After he is threatened during a confession, a good-natured priest must battle the dark forces closing in around him.'),
(111, 'Before Sunset', 2004, 'Drama, Romance', 80, 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse\'s book tour.'),
(112, 'Spirited Away', 2001, 'Animation, Adventure, Family', 125, 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.'),
(113, 'Indochine', 1992, 'Drama, Romance', 159, 'This story is set in 1930, at the time when French colonial rule in Indochina is ending. A widowed French woman who works in the rubber fields, raises a Vietnamese princess as if she was ...'),
(114, 'Birdman or (The Unexpected Virtue of Ignorance)', 2014, 'Comedy, Drama, Romance', 119, 'Illustrated upon the progress of his latest Broadway play, a former popular actor\'s struggle to cope with his current life as a wasted actor is shown.'),
(115, 'Boyhood', 2014, 'Drama', 165, 'The life of Mason, from early childhood to his arrival at college.'),
(116, '12 Angry Men', 1957, 'Crime, Drama', 96, 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.'),
(117, 'The Imitation Game', 2014, 'Biography, Drama, Thriller', 114, 'During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians.'),
(118, 'Interstellar', 2014, 'Adventure, Drama, Sci-Fi', 169, 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.'),
(119, 'Big Nothing', 2006, 'Comedy, Crime, Thriller', 86, 'A frustrated, unemployed teacher joining forces with a scammer and his girlfriend in a blackmailing scheme.'),
(120, 'Das Boot', 1981, 'Adventure, Drama, Thriller', 149, 'The claustrophobic world of a WWII German U-boat; boredom, filth, and sheer terror.'),
(121, 'Shrek 2', 2004, 'Animation, Adventure, Comedy', 93, 'Princess Fiona\'s parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.'),
(122, 'Sin City', 2005, 'Crime, Thriller', 124, 'A film that explores the dark and miserable town, Basin City, and tells the story of three different people, all caught up in violent corruption.'),
(123, 'Nebraska', 2013, 'Adventure, Comedy, Drama', 115, 'An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.'),
(124, 'Shrek', 2001, 'Animation, Adventure, Comedy', 90, 'After his swamp is filled with magical creatures, an ogre agrees to rescue a princess for a villainous lord in order to get his land back.'),
(125, 'Mr. & Mrs. Smith', 2005, 'Action, Comedy, Crime', 120, 'A bored married couple is surprised to learn that they are both assassins hired by competing agencies to kill each other.'),
(126, 'Original Sin', 2001, 'Drama, Mystery, Romance', 116, 'A woman along with her lover, plan to con a rich man by marrying him and on earning his trust running away with all his money. Everything goes as planned until she actually begins to fall in love with him.'),
(127, 'Shrek Forever After', 2010, 'Animation, Adventure, Comedy', 93, 'Rumpelstiltskin tricks a mid-life crisis burdened Shrek into allowing himself to be erased from existence and cast in a dark alternate timeline where Rumpel rules supreme.'),
(128, 'Before Midnight', 2013, 'Drama, Romance', 109, 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.'),
(129, 'Despicable Me', 2010, 'Animation, Adventure, Comedy', 95, 'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.'),
(130, 'Troy', 2004, 'Adventure', 163, 'An adaptation of Homer\'s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.'),
(131, 'The Hobbit: An Unexpected Journey', 2012, 'Adventure, Fantasy', 169, 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.'),
(132, 'The Great Gatsby', 2013, 'Drama, Romance', 143, 'A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.'),
(133, 'Ice Age', 2002, 'Animation, Adventure, Comedy', 81, 'Set during the Ice Age, a sabertooth tiger, a sloth, and a wooly mammoth find a lost human infant, and they try to return him to his tribe.'),
(134, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'Action, Adventure, Drama', 178, 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle Earth from the Dark Lord Sauron.'),
(135, 'The Lord of the Rings: The Two Towers', 2002, 'Action, Adventure, Drama', 179, 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.'),
(136, 'Ex Machina', 2015, 'Drama, Mystery, Sci-Fi', 108, 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a breath-taking humanoid A.I.'),
(137, 'The Theory of Everything', 2014, 'Biography, Drama, Romance', 123, 'A look at the relationship between the famous physicist Stephen Hawking and his wife.'),
(138, 'Shogun', 1980, 'Adventure, Drama, History', 60, 'A English navigator becomes both a player and pawn in the complex political games in feudal Japan.'),
(139, 'Spotlight', 2015, 'Biography, Crime, Drama', 128, 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.'),
(140, 'Vertigo', 1958, 'Mystery, Romance, Thriller', 128, 'A San Francisco detective suffering from acrophobia investigates the strange activities of an old friend\'s wife, all the while becoming dangerously obsessed with her.'),
(141, 'Whiplash', 2014, 'Drama, Music', 107, 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.'),
(142, 'The Lives of Others', 2006, 'Drama, Thriller', 137, 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.'),
(143, 'Hotel Rwanda', 2004, 'Drama, History, War', 121, 'Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda.'),
(144, 'The Martian', 2015, 'Adventure, Drama, Sci-Fi', 144, 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.'),
(145, 'To Kill a Mockingbird', 1962, 'Crime, Drama', 129, 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his kids against prejudice.'),
(146, 'The Hateful Eight', 2015, 'Crime, Drama, Mystery', 187, 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.'),
(147, 'A Separation', 2011, 'Drama, Mystery', 123, 'A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer\'s disease.'),
(148, 'The Big Short', 2015, 'Biography, Comedy, Drama', 130, 'Four denizens in the world of high-finance predict the credit and housing bubble collapse of the mid-2000s, and decide to take on the big banks for their greed and lack of foresight.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `review` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `names`, `email`, `review`) VALUES
(1, 'avedvg', 'aedg@gmail.com', 'Old classic');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `data_inregistrare` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password_hash`, `data_inregistrare`) VALUES
(1, 'Denisa Coman', 'cmndenysa@gmail.com', '$2y$10$Xuh5tuJjwmjGd.h.zCQHguBv8AGD4wNebkwBRtvHLlpjH9rnqrVXi', '2025-12-04 16:42:51'),
(2, 'deni', 'aedg@gmail.com', '$2y$10$S6mrbqfGqR8f88vElmQA1.1/XZypfsrPiDlx.D9wfn7NYB4/CTTGe', '2026-01-05 16:01:35');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
