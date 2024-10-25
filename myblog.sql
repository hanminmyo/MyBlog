-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2024 at 06:21 AM
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
(1, 'JavaScript', '2024-10-07 14:46:45'),
(2, 'CSS', '2024-10-07 14:46:45'),
(3, 'Web Design', '2024-10-07 16:04:55'),
(4, 'WordPress', '2024-10-07 16:04:55'),
(5, 'Front end web Developer', '2024-10-07 16:04:55'),
(6, 'HTML', '2024-10-07 16:04:55'),
(7, 'The Full Stack', '2024-10-07 16:04:55'),
(8, 'Advanced PHP programming', '2024-10-07 16:04:55'),
(9, 'jQuery', '2024-10-07 16:04:55'),
(10, 'Python', '2024-10-07 16:04:55');

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
(1, 'What is javascript', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1DmLCy9PSJfFqO55mNTYOQLx3x8THsbokkw&s', 'JavaScript (/ˈdʒɑːvəskrɪpt/), often abbreviated as JS, is a programming language and core technology of the Web, alongside HTML and CSS. 99% of websites use JavaScript on the client side for webpage behavior.[10]\r\n\r\nWeb browsers have a dedicated JavaScript engine that executes the client code. These engines are also utilized in some servers and a variety of apps. The most popular runtime system for non-browser usage is Node.js.\r\n\r\nJavaScript is a high-level, often just-in-time compiled language that conforms to the ECMAScript standard.[11] It has dynamic typing, prototype-based object-orientation, and first-class functions. It is multi-paradigm, supporting event-driven, functional, and imperative programming styles. It has application programming interfaces (APIs) for working with text, dates, regular expressions, standard data structures, and the Document Object Model (DOM).\r\n\r\nThe ECMAScript standard does not include any input/output (I/O), such as networking, storage, or graphics facilities. In practice, the web browser or other runtime system provides JavaScript APIs for I/O.\r\n\r\nAlthough Java and JavaScript are similar in name, syntax, and respective standard libraries, the two languages are distinct and differ greatly in design.', 1, 1, '2024-10-07 17:10:18'),
(2, 'What is CSS?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkdDy1MPyAklifM98twCxSuRj7EVJPO0cmHg&s', 'Cascading Style Sheets (CSS) is a style sheet language used for specifying the presentation and styling of a document written in a markup language such as HTML or XML (including XML dialects such as SVG, MathML or XHTML).[1] CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.[2]\r\n\r\nCSS is designed to enable the separation of content and presentation, including layout, colors, and fonts.[3] This separation can improve content accessibility, since the content can be written without concern for its presentation; provide more flexibility and control in the specification of presentation characteristics; enable multiple web pages to share formatting by specifying the relevant CSS in a separate .css file, which reduces complexity and repetition in the structural content; and enable the .css file to be cached to improve the page load speed between the pages that share the file and its formatting.\r\n\r\nSeparation of formatting and content also makes it feasible to present the same markup page in different styles for different rendering methods, such as on-screen, in print, by voice (via speech-based browser or screen reader), and on Braille-based tactile devices. CSS also has rules for alternate formatting if the content is accessed on a mobile device.[4]\r\n\r\nThe name cascading comes from the specified priority scheme to determine which declaration applies if more than one declaration of a property match a particular element. This cascading priority scheme is predictable.\r\n\r\nThe CSS specifications are maintained by the World Wide Web Consortium (W3C). Internet media type (MIME type) text/css is registered for use with CSS by RFC 2318 (March 1998). The W3C operates a free CSS validation service for CSS documents.[5]\r\n\r\nIn addition to HTML, other markup languages support the use of CSS including XHTML, plain XML, SVG, and XUL. CSS is also used in the GTK widget toolkit.', 2, 2, '2024-10-07 17:13:49'),
(3, 'About Web Design', 'https://www.ntc.edu/sites/default/files/styles/full_width_16_9/public/2021-06/web-design-header.jpg?itok=4d7TmUMl', 'Although web design has a fairly recent history, it can be linked to other areas such as graphic design, user experience, and multimedia arts, but is more aptly seen from a technological standpoint. It has become a large part of people\'s everyday lives. It is hard to imagine the Internet without animated graphics, different styles of typography, backgrounds, videos and music. The web was announced on August 6, 1991; in November 1992, CERN was the first website to go live on the World Wide Web. During this period, websites were structured by using the <table> tag which created numbers on the website. Eventually, web designers were able to find their way around it to create more structures and formats. In early history, the structure of the websites was fragile and hard to contain, so it became very difficult to use them. In November 1993, ALIWEB was the first ever search engine to be created (Archie Like Indexing for the WEB).[2]\r\n\r\nThe start of the web and web design\r\nIn 1989, whilst working at CERN, Tim Berners-Lee proposed to create a global hypertext project, which later became known as the World Wide Web. From 1991 to 1993 the World Wide Web was born. Text-only HTML pages could be viewed using a simple line-mode web browser.[3] In 1993 Marc Andreessen and Eric Bina, created the Mosaic browser. At the time there were multiple browsers, however the majority of them were Unix-based and naturally text-heavy. There had been no integrated approach to graphic design elements such as images or sounds. The Mosaic browser broke this mould.[4] The W3C was created in October 1994 to \"lead the World Wide Web to its full potential by developing common protocols that promote its evolution and ensure its interoperability.\"[5] This discouraged any one company from monopolizing a proprietary browser and programming language, which could have altered the effect of the World Wide Web as a whole. The W3C continues to set standards, which can today be seen with JavaScript and other languages. In 1994 Andreessen formed Mosaic Communications Corp. that later became known as Netscape Communications, the Netscape 0.9 browser. Netscape created its HTML tags without regard to the traditional standards process. For example, Netscape 1.1 included tags for changing background colours and formatting text with tables on web pages. From 1996 to 1999 the browser wars began, as Microsoft and Netscape fought for ultimate browser dominance. During this time there were many new technologies in the field, notably Cascading Style Sheets, JavaScript, and Dynamic HTML. On the whole, the browser competition did lead to many positive creations and helped web design evolve at a rapid pace.[6]\r\n\r\nEvolution of web design\r\nIn 1996, Microsoft released its first competitive browser, which was complete with its features and HTML tags. It was also the first browser to support style sheets, which at the time was seen as an obscure authoring technique and is today an important aspect of web design.[6] The HTML markup for tables was originally intended for displaying tabular data. However, designers quickly realized the potential of using HTML tables for creating complex, multi-column layouts that were otherwise not possible. At this time, as design and good aesthetics seemed to take precedence over good markup structure, little attention was paid to semantics and web accessibility. HTML sites were limited in their design options, even more so with earlier versions of HTML. To create complex designs, many web designers had to use complicated table structures or even use blank spacer .GIF images to stop empty table cells from collapsing.[7] CSS was introduced in December 1996 by the W3C to support presentation and layout. This allowed HTML code to be semantic rather than both semantic and presentational and improved web accessibility, see tableless web design.\r\n\r\nIn 1996, Flash (originally known as FutureSplash) was developed. At the time, the Flash content development tool was relatively simple compared to now, using basic layout and drawing tools, a limited precursor to ActionScript, and a timeline, but it enabled web designers to go beyond the point of HTML, animated GIFs and JavaScript. However, because Flash required a plug-in, many web developers avoided using it for fear of limiting their market share due to lack of compatibility. Instead, designers reverted to GIF animations (if they did not forego using motion graphics altogether) and JavaScript for widgets. But the benefits of Flash made it popular enough among specific target markets to eventually work its way to the vast majority of browsers, and powerful enough to be used to develop entire sites.[7]', 3, 3, '2024-10-07 17:25:12'),
(4, 'What is WordPress', 'https://aliceinfoweb.com/public/upload/blog_image/wordpress.jpg', '\"WordPress is a factory that makes webpages\"[11] is a core analogy designed to clarify the functions of WordPress: it stores content and enables a user to create and publish webpages, requiring nothing beyond a domain and a hosting service.\r\n\r\nWordPress has a web template system using a template processor. Its architecture is a front controller, routing all requests for non-static URIs to a single PHP file that parses the URI and identifies the target page. This allows support for more human-readable permalinks.[12]\r\n\r\nThemes\r\nWordPress users may install and switch among many different themes. Themes allow users to change the look and functionality of a WordPress website without altering the core code or site content. Custom code can be added to the website by using a child theme or through a code editor. Every WordPress website requires at least one theme to be present. Themes may be directly installed using the WordPress \"Appearance\" administration tool in the dashboard, or theme folders may be copied directly into the themes directory.[13] WordPress themes are generally classified into two categories: free and premium. Many free themes are listed in the WordPress theme directory (also known as the repository), and premium themes are available for purchase from marketplaces and individual WordPress developers. WordPress users may also create and develop their own custom themes and upload them in the WordPress directory or repository.[14]', 4, 4, '2024-10-07 17:29:49'),
(5, 'Front End Web Developer', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV0uO6brHoskULOyasOMXWHXxK_f83yTTCfQ&s', 'Front-end web development is the development of the graphical user interface of a website through the use of HTML, CSS, and JavaScript so users can view and interact with that website.[1][2][3][4]\r\n\r\nTools used for front-end development\r\nThere are several tools and platforms, such as WordPress, Joomla, and Drupal, available that can be used to develop the front end of a website.[5]\r\n\r\nHyperText Markup Language\r\nMain articles: HTML and Markup language\r\nHyperText Markup Language (HTML) is the modern standard for displaying and structuring web content across the internet.[6] HTML defines what elements will be displayed on a website, and how they will be arranged. All major web browsers are designed to interpret HTML, and most modern websites serve HTML to the user.[7] Hypertext is text displayed on a computer with references to other text, these references (or links,) are termed \"hyperlinks.\" When an internet user interacts with a hyperlinked item, the website serves the user the linked data. This data can be another HTML web-page, JavaScript, or anything else. The latest major release of HTML is HTML5, originally published on October 28, 2014 as a W3C recommendation.[8][9]\r\n\r\nCascading Style Sheets\r\nMain article: CSS\r\nCascading Style Sheets (CSS) control the presentation and style of a website. CSS uses a cascading system to resolve style conflicts by applying style rules based on specificity, inheritance, and importance. Media queries allow for adjustments to the site\'s layout and appearance depending on factors such as screen size and resolution. CSS can be applied in three ways: external stylesheets linked in an HTML file, internal <style> blocks, or inline within individual elements.[10]\r\n\r\nJavaScript\r\nJavaScript is an event-based imperative programming language (as opposed to HTML\'s declarative language model) that is used to transform a static HTML page into a dynamic interface. JavaScript code can use the Document Object Model (DOM), provided by the HTML standard, to manipulate a web page in response to events, like user input.\r\n\r\nUsing a technique called AJAX, JavaScript code can also actively retrieve content from the web (independent of the original HTML page retrieval), and also react to server-side events as well, adding a truly dynamic nature to the web page experience.\r\n\r\nWebAssembly\r\nWebAssembly, supported by all the major browsers (i.e. from the major vendors Google, Apple, Mozilla and Microsoft), is the only alternative to JavaScript for running code in web browsers (without the help of plug-ins, such as Flash, Java or Silverlight; all being discontinued, as browsers are dropping plug-in support). Prior to its adoption, there was asm.js (a subset of JavaScript; and thus strictly works in all browsers), that\'s also used as a compiler target with efficient support in browsers such as Internet Explorer 11; and for such browsers that do not support WebAssembly directly, it can be compiled to asm.js and those browsers supported that way. Generally speaking programmers do not program in WebAssembly (or asm.js) directly, but use languages such as Rust, C or C++ or in theory any language, that compile to it.\r\n\r\n', 5, 5, '2024-10-08 03:01:18'),
(6, 'What is HTML?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa_EipSRfPVNEeyj6Q16qE79vugIbrS7s3YA&s', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It defines the content and structure of web content. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for its appearance.\r\n\r\nHTML elements are the building blocks of HTML pages. With HTML constructs, images and other objects such as interactive forms may be embedded into the rendered page. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes, and other items. HTML elements are delineated by tags, written using angle brackets. Tags such as <img> and <input> directly introduce content into the page. Other tags such as <p> and </p> surround and provide information about document text and may include sub-element tags. Browsers do not display the HTML tags but use them to interpret the content of the page.\r\n\r\nHTML can embed programs written in a scripting language such as JavaScript, which affects the behavior and content of web pages. The inclusion of CSS defines the look and layout of content. The World Wide Web Consortium (W3C), former maintainer of the HTML and current maintainer of the CSS standards, has encouraged the use of CSS over explicit presentational HTML since 1997.[2] A form of HTML, known as HTML5, is used to display video and audio, primarily using the <canvas> element, together with JavaScript.', 6, 6, '2024-10-08 03:05:43'),
(7, 'What is the Full Stack?', 'https://ripenapps.com/blog/wp-content/uploads/2024/04/latest-full-stack-web-development-technologies-scaled.webp', 'In computing, a solution stack or software stack is a set of software subsystems or components needed to create a complete platform such that no additional software is needed to support applications.[1] Applications are said to \"run on\" or \"run on top of\" the resulting platform.\r\n\r\nFor example, to develop a web application, the architect defines the stack as the target operating system, web server, database, and programming language. Another version of a software stack is operating system, middleware, database, and applications.[2] Regularly, the components of a software stack are developed by different developers independently from one another.\r\n\r\nSome components/subsystems of an overall system are chosen together often enough that the particular set is referred to by a name representing the whole, rather than by naming the parts. Typically, the name is an acronym representing the individual components.[3]\r\n\r\nThe term \"solution stack\" has, historically, occasionally included hardware components as part of a final product, mixing both the hardware and software in layers of support.[4][5]\r\n\r\nA full-stack developer is expected to be able to work in all the layers of the application (front-end and back-end). A full-stack developer can be defined as a developer or an engineer who works with both the front and back end development of a website, web application or desktop application.[6] This means they can lead platform builds that involve databases, user-facing websites, and working with clients during the planning phase of projects.', 7, 7, '2024-10-08 03:10:41'),
(8, 'What is PHP ?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzgNT28iNwH77k9_JbhCkVyCKYJYblisdoMA&s', 'PHP is a general-purpose scripting language geared towards web development.[9] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995.[10][11] The PHP reference implementation is now produced by the PHP Group.[12] PHP was originally an abbreviation of Personal Home Page,[13][14] but it now stands for the recursive acronym PHP: Hypertext Preprocessor.[15]\r\n\r\nPHP code is usually processed on a web server by a PHP interpreter implemented as a module, a daemon or a Common Gateway Interface (CGI) executable. On a web server, the result of the interpreted and executed PHP code—which may be any type of data, such as generated HTML or binary image data—would form the whole or part of an HTTP response. Various web template systems, web content management systems, and web frameworks exist that can be employed to orchestrate or facilitate the generation of that response. Additionally, PHP can be used for many programming tasks outside the web context, such as standalone graphical applications[16] and drone control.[17] PHP code can also be directly executed from the command line.\r\n\r\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on a variety of operating systems and platforms.[18]\r\n\r\nThe PHP language has evolved without a written formal specification or standard, with the original implementation acting as the de facto standard that other implementations aimed to follow.\r\n\r\nW3Techs reports that as of 23 May 2024 (the six months after the PHP 8.3 release), PHP is used by 76.2% of all websites whose programming language could be determined, and 55.1% thereof use PHP 7 which is outdated and known to be insecure.[19][20]\r\n\r\n', 8, 8, '2024-10-08 03:29:01'),
(9, 'What is jQuery?', 'https://blog.xnsio.com/wp-content/uploads/2015/07/jquery_speakers.png', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animations, and Ajax.[4] It is free, open-source software using the permissive MIT License.[5] As of August 2022, jQuery is used by 77% of the 10 million most popular websites.[6] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having at least three to four times more usage than any other JavaScript library.[6][7]\r\n\r\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, theme-able widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\r\n\r\nThe set of jQuery core features—DOM element selections, traversal, and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[8]\r\n\r\nMicrosoft and Nokia bundle jQuery on their platforms.[9] Microsoft includes it with Visual Studio[10] for use within Microsoft\'s ASP.NET AJAX and ASP.NET MVC frameworks while Nokia has integrated it into the Web Run-Time widget development platform.[11]', 9, 9, '2024-10-08 03:31:16'),
(10, 'What is Python?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB8fmCNPThirICeqtqOI4IGhd2FtWWn2vZwg&s', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.[32]\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a \"batteries included\" language due to its comprehensive standard library.[33][34]\r\n\r\nGuido van Rossum began working on Python in the late 1980s as a successor to the ABC programming language and first released it in 1991 as Python 0.9.0.[35] Python 2.0 was released in 2000. Python 3.0, released in 2008, was a major revision not completely backward-compatible with earlier versions. Python 2.7.18, released in 2020, was the last release of Python 2.[36]\r\n\r\nPython consistently ranks as one of the most popular programming languages, and has gained widespread use in the machine learning community.[37][38][39][40]\r\n\r\nHistory\r\nMain article: History of Python\r\n\r\nThe designer of Python, Guido van Rossum, at OSCON 2006\r\nPython was invented in the late 1980s[41] by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to the ABC programming language, which was inspired by SETL,[42] capable of exception handling and interfacing with the Amoeba operating system.[12] Its implementation began in December 1989.[43] Van Rossum shouldered sole responsibility for the project, as the lead developer, until 12 July 2018, when he announced his \"permanent vacation\" from his responsibilities as Python\'s \"benevolent dictator for life\" (BDFL), a title the Python community bestowed upon him to reflect his long-term commitment as the project\'s chief decision-maker[44] (he has since come out of retirement and is self-titled \"BDFL-emeritus\"). In January 2019, active Python core developers elected a five-member Steering Council to lead the project.[45][46]\r\n\r\nPython 2.0 was released on 16 October 2000, with many major new features such as list comprehensions, cycle-detecting garbage collection, reference counting, and Unicode support.[47] Python 3.0 was released on 3 December 2008, with many of its major features backported to Python 2.6.x[48] and 2.7.x. Releases of Python 3 include the 2to3 utility, which automates the translation of Python 2 code to Python 3.[49]\r\n\r\nPython 2.7\'s end-of-life was initially set for 2015, then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3.[50][51] No further security patches or other improvements will be released for it.[52][53] Currently only 3.9 and later are supported (2023 security issues were fixed in e.g. 3.7.17, the final 3.7.x release[54]). While Python 2.7 and older is officially unsupported, a different unofficial Python implementation, PyPy, continues to support Python 2, i.e. \"2.7.18+\" (plus 3.10), with the plus meaning (at least some) \"backported security updates\".[55]\r\n\r\nIn 2021 (and again twice in 2022, and in September 2024 for Python 3.12.6 down to 3.8.20), security updates were expedited, since all Python versions were insecure (including 2.7[56]) because of security issues leading to possible remote code execution[57] and web-cache poisoning.[58] In 2022, Python 3.10.4 and 3.9.12 were expedited[59] and 3.8.13, because of many security issues.[60] When Python 3.9.13 was released in May 2022, it was announced that the 3.9 series (joining the older series 3.8 and 3.7) would only receive security fixes in the future.[61] On 7 September 2022, four new releases were made due to a potential denial-of-service attack: 3.10.7, 3.9.14, 3.8.14, and 3.7.14.[62][63]\r\n\r\nEvery Python release since 3.5 has added some syntax to the language. 3.10 added the | union type operator[64] and the match and case keywords (for structural pattern matching statements). 3.11 expanded exception handling functionality. Python 3.12 added the new keyword type. Notable changes in 3.11 from 3.10 include increased program execution speed and improved error reporting.[65] Python 3.11 claims to be between 10 and 60% faster than Python 3.10, and Python 3.12 adds another 5% on top of that. It also has improved error messages, and many other changes.\r\n\r\nPython 3.13 introduces more syntax for types, a new and improved interactive interpreter (REPL), featuring multi-line editing and color support; an incremental garbage collector (producing shorter pauses for collection in programs with a lot of objects, and addition to the improved speed in 3.11 and 3.12), and an experimental just-in-time (JIT) compiler (such features, can/needs to be enabled specifically for the increase in speed),[66] and an experimental free-threaded build mode, which disables the global interpreter lock (GIL), allowing threads to run more concurrently, that latter feature enabled with python3.13t or python3.13t.exe.\r\n\r\nPython 3.13 introduces some change in behavior, i.e. new \"well-defined semantics\", fixing bugs (plus many removals of deprecated classes, functions and methods, and removed some of the C API and outdated modules): \"The [old] implementation of locals() and frame.f_locals is slow, inconsistent and buggy [and it has] has many corner cases and oddities. Code that works around those may need to be changed. Code that uses locals() for simple templating, or print debugging, will continue to work correctly.\"[67]\r\n\r\nSince 7 October 2024, Python 3.13 is the latest stable release, and 3.13 and 3.12 are the only versions with active (as opposed to just security) support and Python 3.9 is the oldest supported version of Python (albeit in the \'security support\' phase), due to Python 3.8 reaching end-of-life.[68] Starting with 3.13, it and later versions have 2 years of full support (up from one and a half); followed by 3 years of security support (for same total support as before).', 10, 10, '2024-10-08 03:33:44');

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
(1, 'alpha', 'alpha@gmail.com', '167854', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1DmLCy9PSJfFqO55mNTYOQLx3x8THsbokkw&s', 'admin', '2024-10-07 14:53:23'),
(2, 'beta', 'beta@gmail.com', '12345', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkdDy1MPyAklifM98twCxSuRj7EVJPO0cmHg&s', 'admin', '2024-10-07 16:42:06'),
(3, 'Gamma', 'gamma@gmail.com', '54321', 'https://www.ntc.edu/sites/default/files/styles/full_width_16_9/public/2021-06/web-design-header.jpg?itok=4d7TmUMl', 'admin', '2024-10-07 16:42:06'),
(4, 'Clero', 'clero@gmail.com', '45678', 'https://i.redd.it/is-it-me-or-did-capcom-use-a-young-leonardo-dicaprio-as-v0-j66ops00gxsa1.jpg?width=1080&format=pjpg&auto=webp&s=e36000501a6f15c1d500d2368d1f7d33c892e7db', 'admin', '2024-10-07 16:42:06'),
(5, 'Delta', 'delta@gmail.com', '67890', 'https://aliceinfoweb.com/public/upload/blog_image/wordpress.jpg', 'admin', '2024-10-07 16:42:06'),
(6, 'Echo', 'echo@gmail.com', '98765', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa_EipSRfPVNEeyj6Q16qE79vugIbrS7s3YA&s', 'author', '2024-10-07 16:42:06'),
(7, 'Forest', 'forest@gmail.com', '13579', 'https://ripenapps.com/blog/wp-content/uploads/2024/04/latest-full-stack-web-development-technologies-scaled.webp', 'author', '2024-10-07 16:42:06'),
(8, 'Helen', 'helen@gmail.com', '157983', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzgNT28iNwH77k9_JbhCkVyCKYJYblisdoMA&s', 'author', '2024-10-07 16:42:06'),
(9, 'Junior', 'junior@gmail.com', '192837', 'https://blog.xnsio.com/wp-content/uploads/2015/07/jquery_speakers.png', 'author', '2024-10-07 16:42:06'),
(10, 'lunar', 'lunar@gmail.com', '1122334', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB8fmCNPThirICeqtqOI4IGhd2FtWWn2vZwg&s', 'author', '2024-10-07 16:48:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
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
