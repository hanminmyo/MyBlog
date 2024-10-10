-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2024 at 03:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development', '2024-10-07 14:46:45'),
(2, 'AI', '2024-10-07 14:46:45'),
(3, 'data base', '2024-10-07 16:04:55'),
(4, 'Special Query Language', '2024-10-07 16:04:55'),
(5, 'HTML', '2024-10-07 16:04:55'),
(6, 'CSS', '2024-10-07 16:04:55'),
(7, 'Bootstrap', '2024-10-07 16:04:55'),
(8, 'Ruby', '2024-10-07 16:04:55'),
(9, 'Javascript', '2024-10-07 16:04:55'),
(10, 'Laraval', '2024-10-07 16:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `category_id`, `user_id`, `created_at`) VALUES
(1, 'Emma Watson and Harry Porter Series', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Emma_Watson_2013.jpg/220px-Emma_Watson_2013.jpg', 'Emma Charlotte Duerre Watson (born 15 April 1990) is an English actress. Known for her roles in both blockbusters and independent films, she has received a selection of accolades, including a Young Artist Award and three MTV Movie Awards. Watson has been ranked among the world\'s highest-paid actresses by Forbes and Vanity Fair, and was named one of the 100 most influential people in the world by Time magazine in 2015.[1][2][3] Watson was also listed by Forbes as an honouree on the Forbes 30 under 30 list in 2015 and 2016.[4]\r\n\r\nWatson attended the Dragon School and trained in acting at the Oxford branch of Stagecoach Theatre Arts. As a child, she rose to stardom after landing her first professional acting role as Hermione Granger in the Harry Potter film series, having previously acted only in school plays. Watson made her first major forays beyond the Potter franchise starring in Ballet Shoes (2007), and lent her voice to The Tale of Despereaux (2008). After the final Harry Potter film, she took on a supporting role in My Week with Marilyn (2011), before starring as Sam, a flirtatious, free-spirited student in The Perks of Being a Wallflower (2012), to critical success. Further acclaim came from portraying Alexis Neiers in Sofia Coppola\'s The Bling Ring (2013) and the titular character\'s adoptive daughter in Darren Aronofsky\'s biblical epic Noah (2014). That same year, Watson was honoured by the British Academy of Film and Television Arts, winning British Artist of the Year. She also starred as Belle in the live-action musical romantic fantasy Beauty and the Beast (2017), and as Meg March in Greta Gerwig\'s coming-of-age drama Little Women (2019).', 1, 1, '2024-10-07 17:10:18'),
(2, 'Michael Jackson and Billy Jeans', 'https://i.scdn.co/image/ab67616d0000b2739eb690cb054df293fe7711b8', 'She was more like a beauty queen from a movie scene\r\nI said don\'t mind, but what do you mean, I am the one\r\nWho will dance on the floor in the round?\r\nShe said I am the one, who will dance on the floor in the round\r\nShe told me her name was Billie Jean, as she caused a scene\r\nThen every head turned with eyes that dreamed of being the one\r\nWho will dance on the floor in the round\r\nPeople always told me be careful of what you do\r\nAnd don\'t go around breaking young girls\' hearts\r\nAnd mother always told me be careful of who you love\r\nAnd be careful of what you do \'cause the lie becomes the truth\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\nFor forty days and forty nights\r\nThe law was on her side\r\nBut who can stand when she\'s in demand\r\nHer schemes and plans\r\n\'Cause we danced on the floor in the round\r\nSo take my strong advice, just remember to always think twice\r\n(Do think twice, do think twice)\r\nShe told my baby we\'d danced \'til three, then she looked at me\r\nThen showed a photo my baby cried his eyes were like mine (oh, no)\r\n\'Cause we danced on the floor in the round, baby\r\nPeople always told me be careful of what you do\r\nAnd don\'t go around breaking young girls\' hearts\r\nShe came and stood right by me\r\nJust the smell of sweet perfume\r\nThis happened much too soon\r\nShe called me to her room\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\nBillie Jean is not my lover\r\nShe\'s just a girl who claims that I am the one\r\nBut the kid is not my son\r\nShe says I am the one, but the kid is not my son\r\nShe says I am the one\r\nYou know what you did, (she says he is my son) breaking my heart babe\r\nShe says I am the one\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover (don\'t Billie Jean)\r\nBillie Jean is not my lover\r\nBillie Jean is not my lover', 2, 2, '2024-10-07 17:13:49'),
(3, 'Taylor Swift and Singapore Live show', 'https://s.yimg.com/ny/api/res/1.2/7G_2kjoZI4KDoWrjbT0b.Q--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/os/creatr-uploaded-images/2024-03/64408e70-d91f-11ee-97b6-37c175f3ac31', 'Taylor Swift has some family ties to Singapore, the pop star said at her concert at the Singapore National Stadium on Saturday (March 2).\r\n\r\n“My mom actually spent a lot of her childhood with her mom and dad and her sister growing up in Singapore,” Swift, seated at her Evermore piano, shared with the crowd of Andrea Swift’s upbringing.\r\n\r\nSwift had just finishing singing “Marjorie,” the emotional song she wrote about her grandmother, Marjorie Finlay, and was taking a moment to speak to her fans at the first of six Eras Tour shows at the stadium', 3, 3, '2024-10-07 17:25:12'),
(4, 'Leonardo Dicaprio and blood diamond', 'https://miro.medium.com/v2/resize:fit:1400/0*CshZF7zLCtWQNwc1.jpg', 'In Sierra Leone, there exists diamonds worth a fair amount of money. But they are harvested by slaves and sold to fund genocide. This is the story of one of those slaves, a diamond smuggler (with connections to Belgium, England, And Liberia) and a journalist. Together, they will fight to win a story, a diamond and a family. But sacrifices will be made.\r\n\r\nWe have an amazing cast, so let me just get them out of the way -- Leonardo DiCaprio as smuggler Danny Archer, Djimon Hounsou as native African Solomon Vandy and Jennifer Connelly as journalist Maddy Bowen. DiCaprio rarely makes bad films, and my unending praise for Connelly is seen in a variety of reviews I\'ve written... this film will be no exception to her glowing track record.\r\n\r\nThis film has action, suspense and a good story to tell. Like \"The Insider\" (or whatever the tobacco movie is called), this exposes how diamonds come to be on the market. I\'d like to say things have improved since the time period shown here (1990s) but I don\'t know if I believe that. I appreciate the honest portrayal here, not shying away from the violence or the horrible conditions the children go through. Humor is absent, and even romance (which would be so easy to add in) is never at the front of the story.\r\n\r\nI don\'t know how to sell this film other than that: if you care about world events, or care about the fate of innocent people ,you\'ll care about this movie. Even if you don\'t want this to be that heavy and just take it as entertainment (which it is on some levels), I think you\'ll still enjoy it (Jennifer Connelly!). Wish I could say more, but it\'s a cut and dry case: great movie, worth seeing, check it out.', 4, 4, '2024-10-07 17:29:49'),
(5, 'Kate Winslet and Titanic', 'https://assets.vogue.com/photos/64fe3ddfb668f782d8620072/1:1/w_2193,h_2193,c_limit/MCDTITA_FE018.jpg', 'Kate Elizabeth Winslet CBE (/ˈwɪnzlət/;[2] born 5 October 1975) is an English actress.[3] Known for her roles as headstrong and complicated women in independent films, particularly period dramas, she has received numerous accolades, including an Academy Award, a Grammy Award, two Primetime Emmy Awards, five BAFTA Awards and five Golden Globe Awards. Time magazine named Winslet one of the 100 most influential people in the world in 2009 and 2021. She was appointed Commander of the Order of the British Empire (CBE) in 2012.\r\n\r\nWinslet studied drama at the Redroofs Theatre School. Her first screen appearance, at age 15, was in the British television series Dark Season (1991). She made her film debut playing a teenage murderess in Heavenly Creatures (1994), and went on to win a BAFTA Award for playing Marianne Dashwood in Sense and Sensibility (1995). Global stardom followed with her leading role in James Cameron\'s epic romance Titanic (1997), which was the highest-grossing film at the time. Winslet then eschewed parts in blockbusters in favour of critically acclaimed period pieces, including Quills (2000) and Iris (2001).\r\n\r\nThe science fiction romance Eternal Sunshine of the Spotless Mind (2004), in which Winslet was cast against type in a contemporary setting, proved to be a turning point in her career, and she gained further recognition for her performances in Finding Neverland (2004), Little Children (2006), The Holiday (2006), Revolutionary Road (2008), and The Reader (2008). For playing a former Nazi camp guard in the last, she won the BAFTA Award and the Academy Award for Best Actress. Winslet\'s portrayal of Joanna Hoffman in the biopic Steve Jobs (2015) won her another BAFTA Award, and she received two Primetime Emmy Awards for her performances in the HBO miniseries Mildred Pierce (2011) and Mare of Easttown (2021). In 2022, she produced and starred in the single drama \"I Am Ruth\", winning two BAFTA TV Awards, and played a supporting role through motion capture in Cameron\'s top-grossing science fiction film Avatar: The Way of Water.', 5, 5, '2024-10-08 03:01:18'),
(6, 'Pirates of the Caribbean', 'https://m.media-amazon.com/images/I/91yS4MChltL._AC_UF1000,1000_QL80_.jpg', 'Pirates of the Caribbean is an American fantasy supernatural swashbuckler film series produced by Jerry Bruckheimer and based on Walt Disney\'s theme park attraction of the same name. The film series serves as a major component of the titular media franchise. Based on a fictionalized version of the Golden Age of Piracy (c. 1650–1726), the films\' plots are set primarily in the Caribbean.\r\n\r\nDirectors of the series include Gore Verbinski (films 1–3), Rob Marshall (4), Joachim Rønning (5), and Espen Sandberg (5). The series is primarily written by Ted Elliott and Terry Rossio (1–4); other writers include Stuart Beattie (1), Jay Wolpert (1) and Jeff Nathanson (5).\r\n\r\nThe stories follow the adventures of Captain Jack Sparrow (Johnny Depp), with Hector Barbossa (Geoffrey Rush) and Joshamee Gibbs (Kevin McNally) over the course of the films. Other characters featured in the original trilogy include Will Turner (Orlando Bloom), Elizabeth Swann (Keira Knightley), James Norrington (Jack Davenport), Governor Weatherby Swann (Jonathan Pryce), Pintel and Ragetti (Lee Arenberg and Mackenzie Crook), Marty (Martin Klebba), Cotton (David Bailie), Murtogg and Mullroy (Giles New and Angus Barnett), Lieutenant Gillette (Damian O\'Hare), Theodore Groves (Greg Ellis), Bootstrap Bill Turner (Stellan Skarsgård), Lord Cutler Beckett (Tom Hollander), Tia Dalma (Naomie Harris), Davy Jones (Bill Nighy), and Sao Feng (Chow Yun-Fat). Despite focusing more on Jack Sparrow among several of the aforementioned characters, the fourth and fifth films serve as standalone sequels. The fourth film features Angelica (Penélope Cruz), Blackbeard (Ian McShane), Philip Swift (Sam Claflin), Syrena (Àstrid Bergès-Frisbey), and Scrum (Stephen Graham). The fifth film features Armando Salazar (Javier Bardem), Henry Turner (Brenton Thwaites), and Carina Smyth (Kaya Scodelario).\r\n\r\n', 6, 6, '2024-10-08 03:05:43'),
(7, 'Duke of Cambridge', 'https://www.brides.com/thmb/LTBGM7lQezYmafjrQ_-G0eg-8ag=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/kate-middleton-prince-william-wedding-recirc-getty-images-cc3b1443b5b64b3e8483f199794c7b4c.jpg', 'William, Prince of Wales (William Arthur Philip Louis; born 21 June 1982), is the heir apparent to the British throne. He is the elder son of King Charles III and Diana, Princess of Wales.\r\n\r\nWilliam was born during the reign of his paternal grandmother, Queen Elizabeth II. He was educated at Wetherby School, Ludgrove School and Eton College. He earned a Master of Arts degree in geography at the University of St Andrews where he met his future wife, Catherine Middleton. They have three children: George, Charlotte and Louis. After university, William trained at the Royal Military Academy Sandhurst prior to serving with the Blues and Royals regiment. In 2008 he graduated from the Royal Air Force College Cranwell, joining the RAF Search and Rescue Force in early 2009. He served as a full-time pilot with the East Anglian Air Ambulance for two years, starting in July 2015.\r\n\r\nWilliam performs official duties and engagements on behalf of the monarch. He holds patronage with over 30 charitable and military organisations, including the Tusk Trust, Centrepoint, The Passage, Wales Air Ambulance and London\'s Air Ambulance Charity. He undertakes projects through the Royal Foundation, with his charity work revolving around mental health, conservation, homelessness, and emergency workers. In 2020 William launched the Earthshot Prize, a £50 million initiative to incentivise environmental solutions over the next decade.\r\n\r\nWilliam was made Duke of Cambridge immediately before his wedding in April 2011. He became Duke of Cornwall and Duke of Rothesay upon his father\'s accession to the throne on 8 September 2022. The following day he was made Prince of Wales.', 7, 7, '2024-10-08 03:10:41'),
(8, 'Girls on fire (Alicia Keys)', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJaDlyn0iLqwgEU0EGZkmfzWGjEchLGC4Z7w&s', 'Alicia Augello Cook (born January 25, 1981),[3][4][5][6][7] known professionally as Alicia Keys, is an American singer and songwriter. A classically trained pianist, Keys began composing songs when she was the age of 12 and was signed by Columbia Records at the age of 15. After disputes with the label, she signed with J Records to release her debut studio album, Songs in A Minor (2001). Met with critical acclaim and commercial success, the album sold over 12 million copies worldwide and won five awards at the 44th Annual Grammy Awards. It contained the Billboard Hot 100-number one single \"Fallin\'.\" Her second album, The Diary of Alicia Keys (2003), was met with continued success, selling eight million units worldwide and spawning the singles \"You Don\'t Know My Name\", \"If I Ain\'t Got You\", and \"Diary\" (featuring Tony! Toni! Toné!).[8] Its release earned an additional four Grammy Awards.[9]\r\n\r\nHer 2004 duet with Usher, \"My Boo\", became her second number-one single in the US. Keys\' first live album, Unplugged (2005), spawned the single \"Unbreakable\" and made her the first female artist to have an MTV Unplugged project debut atop the Billboard 200. Her third album, As I Am (2007), sold seven million units worldwide and yielded her third Billboard Hot 100-number one single, \"No One.\" In 2007, Keys made her film debut in the action-thriller Smokin\' Aces, and performed the theme song to the James Bond film Quantum of Solace with her single \"Another Way to Die\" (with Jack White) the following year.[10] Her fourth album, The Element of Freedom (2009), peaked atop the UK Albums Chart, sold four million copies worldwide, and was supported by the singles \"Doesn\'t Mean Anything\", \"Try Sleeping with a Broken Heart\", and \"Un-Thinkable (I\'m Ready).\" That same year, her guest appearance on Jay-Z\'s 2009 single \"Empire State of Mind\", became her fourth number-one hit in the US. Her fifth album, Girl on Fire (2012), was her fourth non-consecutive album to peak the Billboard 200, and was supported by its lead single of the same name; her sixth album, Here (2016), peaked at number two on the chart. Her seventh and eighth studio albums, Alicia (2020) and Keys (2021), spawned the singles \"Show Me Love\" (featuring Miguel), \"Underdog\", \"Lala\" and \"Best of Me\". Her first independent release, Santa Baby (2022), was a holiday album. In 2023, she wrote, composed and co-produced her first Broadway musical, Hell\'s Kitchen.', 8, 8, '2024-10-08 03:29:01'),
(9, 'Eminem(The King of Rap)', 'https://variety.com/wp-content/uploads/2024/02/Eminem.jpg', 'Marshall Bruce Mathers III (born October 17, 1972), known professionally as Eminem (stylized as EMINƎM), is an American rapper, songwriter, and record producer. He is credited with popularizing hip hop in Middle America and is regarded as among the greatest rappers of all time.[3] His success is considered to have broken racial barriers to the acceptance of white rappers in popular music. While much of his transgressive work during the late 1990s and early 2000s made him a controversial figure, he came to be a representation of popular angst of the American underclass and has been cited as influencing many musical artists. His most successful songs on the U.S. Billboard Hot 100 include \"The Real Slim Shady\", \"Without Me\", \"Lose Yourself\", \"Not Afraid\", \"Love the Way You Lie\", \"The Monster\", \"Godzilla\" and \"Houdini\".[4]\r\n\r\nAfter the release of his debut album Infinite (1996) and the extended play Slim Shady EP (1997), Eminem signed with Dr. Dre\'s Aftermath Entertainment and subsequently achieved mainstream popularity in 1999 with The Slim Shady LP. His next two releases, The Marshall Mathers LP (2000) and The Eminem Show (2002), were worldwide successes and nominated for the Grammy Award for Album of the Year, the latter becoming the best-selling album worldwide of 2002. After the release of his next album, Encore (2004), Eminem went on hiatus, largely due to a prescription drug addiction.[5] He returned to the music industry with the releases of Relapse (2009) and Recovery (2010), the latter becoming the best-selling album worldwide of 2010. He then released the U.S. number-one albums The Marshall Mathers LP 2 (2013), Revival (2017), Kamikaze (2018), Music to Be Murdered By (2020), and The Death of Slim Shady (Coup de Grâce) (2024).\r\n\r\nEminem was also a member of the hip hop groups New Jacks, Soul Intent, Outsidaz, and D12, and has collaborated with fellow Detroit-based rapper Royce da 5\'9\" as the duo Bad Meets Evil. Eminem played a dramatized version of himself in the 2002 musical drama film 8 Mile. \"Lose Yourself\", a song from its soundtrack, topped the Billboard Hot 100 for 12 weeks—the most for a solo rap song—and won the Academy Award for Best Original Song, making him the first hip hop artist ever to win the award.[6] He also co-founded Shady Records, which helped launch the careers of artists such as D12, 50 Cent, and Obie Trice, and established his own Sirius XM Radio channel, Shade 45.\r\n\r\nEminem is among the best-selling music artists of all time, with estimated worldwide sales of over 220 million records. He was the best-selling music artist in the United States for the 2000s, placing third for the 2010s. He was the first artist to have ten albums consecutively debut at number one on the Billboard 200 chart,[7] and has had five number-one singles on the Billboard Hot 100.[8] The Marshall Mathers LP, The Eminem Show, Curtain Call: The Hits (2005), \"Lose Yourself\", \"Love the Way You Lie\", and \"Not Afraid\" have all been certified Diamond or higher by the Recording Industry Association of America (RIAA).[9] He has won numerous awards, including 15 Grammy Awards, eight American Music Awards, 17 Billboard Music Awards, a Primetime Emmy Award, and an MTV Europe Music Global Icon Award. Billboard named him the \"Artist of the Decade (2000–2009)\", and Rolling Stone named him one of the \"100 Greatest Artists of All Time\" and \"100 Greatest Songwriters of All Time\". In 2022, he was inducted into the Rock and Roll Hall of Fame.[10]\r\n\r\n', 9, 9, '2024-10-08 03:31:16'),
(10, 'Scarlett Johansson', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLR2xBnUn1P3n7sGIz-yRH0n1n6PjZTW7cGA&s', 'Scarlett Ingrid Johansson (/dʒoʊˈhænsən/;[1] born November 22, 1984) is an American actress and singer. The world\'s highest-paid actress in 2018 and 2019, she has been featured multiple times on the Forbes Celebrity 100 list. Time named her one of the 100 most influential people in the world in 2021. Johansson\'s films have grossed over $15.4 billion worldwide, making her the highest-grossing box office female star of all time. She has received various accolades, including a British Academy Film Award, a Tony Award, and nominations for two Academy Awards and five Golden Globe Awards.\r\n\r\nJohansson first appeared on stage in an off-Broadway play as a child actress. She made her film debut in the fantasy comedy North (1994) and gained early recognition for her roles in Manny & Lo (1996), The Horse Whisperer (1998), and Ghost World (2001). Her shift to adult roles came in 2003 with Lost in Translation, for which she won the BAFTA Award for Best Actress. She continued to gain praise for playing a 17th-century servant in Girl with a Pearl Earring (2003), a troubled teenager in A Love Song for Bobby Long (2004) and a seductress in Match Point (2005). The latter marked her first collaboration with Woody Allen, who later directed her in Scoop (2006) and Vicky Cristina Barcelona (2008). Johansson\'s other works of this period include The Prestige (2006) and the albums Anywhere I Lay My Head (2008) and Break Up (2009), both of which charted on the Billboard 200.\r\n\r\nIn 2010, Johansson debuted on Broadway in a revival of A View from the Bridge, which won her the Tony Award for Best Performance by a Featured Actress in a Play, and began portraying Black Widow in the Marvel Cinematic Universe film Iron Man 2. She reprised the role in eight films, leading up to her solo feature Black Widow (2021), gaining global stardom. During this period, Johansson starred in the science fiction films Her (2013), Under the Skin (2013) and Lucy (2014). She received two simultaneous Academy Award nominations—Best Actress and Best Supporting Actress—for the respective roles of an actress going through a divorce in the drama Marriage Story (2019) and a single mother in Nazi Germany in the satire Jojo Rabbit (2019), becoming one of the few actors to achieve this feat.\r\n\r\nLabeled a sex symbol, Johansson has been referred to as one of the world\'s most attractive women by various media outlets. She is a prominent brand endorser and supports several charitable causes. Divorced from actor Ryan Reynolds and businessman Romain Dauriac, Johansson has been married to comedian Colin Jost since 2020. She has two children, one with Dauriac and another with Jost.', 10, 10, '2024-10-08 03:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile`, `role`, `created_at`) VALUES
(1, 'Emma Watson', 'ammawatson@gmail.com', '167854', 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Emma_Watson_2013.jpg', 'admin', '2024-10-07 14:53:23'),
(2, 'Michael Jackson', 'mickael@gmail.com', '12345', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjThrpX6htzcPJPvkbOc2g80FMC0KHeSsdAA&s', 'admin', '2024-10-07 16:42:06'),
(3, 'Taylor Swift', 'taylorswift123@gmail.com', '54321', 'https://m.media-amazon.com/images/M/MV5BYWYwYzYzMjUtNWE0MS00NmJlLTljNGMtNzliYjg5NzQ1OWY5XkEyXkFqcGc@._V1_.jpg', 'admin', '2024-10-07 16:42:06'),
(4, 'Leonado Dicaprio', 'leonardo@gmail.com', '45678', 'https://i.redd.it/is-it-me-or-did-capcom-use-a-young-leonardo-dicaprio-as-v0-j66ops00gxsa1.jpg?width=1080&format=pjpg&auto=webp&s=e36000501a6f15c1d500d2368d1f7d33c892e7db', 'admin', '2024-10-07 16:42:06'),
(5, 'kate Winslet', 'katewinslet@gmail.com', '67890', 'https://images1.wionews.com/images/wion/900x1600/2023/10/5/1696491472788_cover2.png', 'admin', '2024-10-07 16:42:06'),
(6, 'Johnny Depp', 'johnnydepp@gmail.com', '98765', 'https://m.media-amazon.com/images/M/MV5BZjA3NzZiZDktZjc2My00MzY2LThhOWMtZGFjYzg4ZDI2ZWVmXkEyXkFqcGc@._V1_.jpg', 'author', '2024-10-07 16:42:06'),
(7, 'William the Prince', 'willianhenry@gmail.com', '13579', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Prince_William_at_seedhill_mills.jpg/220px-Prince_William_at_seedhill_mills.jpg', 'author', '2024-10-07 16:42:06'),
(8, 'Alicia Keys', 'aliciakeys@gmail.com', '157983', 'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1500x1500/products/73284/73084/ss3585400_-_photograph_of_alicia_keys_available_in_4_sizes_framed_or_unframed_buy_now_at_starstills__98993__51216.1394505127.jpg?c=2', 'author', '2024-10-07 16:42:06'),
(9, 'Eminem', 'eminem@gmail.com', '192837', 'https://nypost.com/wp-content/uploads/sites/2/2019/10/gettyimages-187596325.jpg?quality=75&strip=all&w=744', 'author', '2024-10-07 16:42:06'),
(10, 'Scarlett Johansson', 'scarlett123@gmail.com', '1122334', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlCS8lnYhReH9Fu5KIGKucGOiuBvHYmfZwhg&s', 'author', '2024-10-07 16:48:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
