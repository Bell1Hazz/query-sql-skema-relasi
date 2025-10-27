
-- users <=>Post 1 - Many
CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- data

INSERT INTO `articles` (`id`, `user_id`, `category_id`, `title`, `date`, `summary`, `content`, `image`, `read_time`, `views`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Revolutionizing Web Development with AI Tools', '2024-11-15', 'Discover how artificial intelligence is transforming the way developers build modern web applications.', 'Artificial intelligence has become a game-changer in web development, offering unprecedented opportunities to streamline workflows and enhance productivity. Modern AI-powered tools are revolutionizing how developers approach coding challenges, from automated code generation to intelligent debugging assistants. This transformation is not just about writing code faster—it\'s about fundamentally changing how we think about software development. Machine learning models can now predict code patterns, suggest optimizations, and even identify potential security vulnerabilities before they become problems. As we move forward, the integration of AI in development workflows will only deepen, making it essential for developers to adapt and embrace these new technologies.', 'articles/1761106957_VBFc0RRzeS.jpg', '5 min read', 1270, '2025-10-21 20:02:26', '2025-10-23 23:32:57'),
(2, 2, 2, 'Mastering UI/UX Design Principles', '2024-11-12', 'Learn the fundamental principles of UI/UX design that create engaging user experiences.', 'Creating exceptional user experiences requires a deep understanding of design principles that go beyond visual aesthetics. Successful UI/UX design balances functionality with beauty, ensuring that every interaction feels intuitive and purposeful. From color theory to typography, spacing to visual hierarchy—each element plays a crucial role in guiding users through their journey. Modern design thinking emphasizes empathy, putting users at the center of every decision. By conducting thorough research, creating detailed personas, and iterating based on user feedback, designers can craft experiences that truly resonate with their target audience.', 'articles/1761112559_YmiV74995l.jpg', '7 min read', 983, '2025-10-21 20:02:26', '2025-10-23 23:08:25'),
(3, 3, 3, 'Building Scalable Business Solutions', '2024-11-10', 'Explore how cloud technology enables businesses to scale efficiently while reducing costs.', 'Cloud technology has transformed the business landscape, offering unprecedented scalability and flexibility for organizations of all sizes. By leveraging cloud infrastructure, companies can now rapidly adapt to changing market demands without the burden of maintaining expensive on-premise hardware. This shift has democratized access to enterprise-level resources, enabling startups to compete with established players. Modern cloud platforms provide not just infrastructure, but entire ecosystems of tools and services that facilitate everything from data analytics to artificial intelligence. The key to success lies in understanding how to architect solutions that can grow seamlessly with your business.', 'articles/pexels-pavel-danilyuk-7869054.jpg', '6 min read', 751, '2025-10-21 20:02:26', '2025-10-22 00:20:56'),
(4, 4, 1, 'The Future of Mobile App Development', '2024-11-08', 'Investigating emerging trends in mobile development including cross-platform frameworks.', 'Mobile app development continues to evolve rapidly with new technologies and frameworks emerging constantly. Cross-platform development has matured significantly, with frameworks like Flutter and React Native enabling developers to build high-performance apps for both iOS and Android from a single codebase. The future points toward even more seamless experiences, with progressive web apps blurring the lines between web and native applications. As 5G networks become ubiquitous, we can expect mobile apps to become even more powerful and feature-rich.', 'articles/1761107353_XQ7gGkUvTe.png', '8 min read', 1104, '2025-10-21 20:02:26', '2025-10-23 23:33:46'),
(5, 5, 2, 'Creative Brand Identity Design', '2024-11-05', 'Discover innovative approaches to creating memorable brand identities.', 'Brand identity design goes far beyond creating a logo; it encompasses the entire visual and emotional experience that customers have with your brand. A strong brand identity tells your story, communicates your values, and creates lasting emotional connections with your audience. From color palettes to typography, every element should work in harmony to create a cohesive and memorable brand presence. Successful brand identities are built on thorough research, strategic thinking, and creative execution.', 'articles/pexels-nourabiad-25566785.jpg', '6 min read', 820, '2025-10-21 20:02:26', '2025-10-21 20:02:26'),
(6, 1, 3, 'Digital Marketing for Small Business', '2024-11-03', 'Learn cost-effective digital marketing techniques for small businesses.', 'Small businesses can leverage digital marketing to compete effectively with larger corporations by focusing on targeted strategies and authentic engagement. Social media platforms, content marketing, and email campaigns offer affordable ways to reach and engage your target audience. The key is to understand your customers deeply and create value-driven content that resonates with their needs and interests. By building genuine relationships and providing consistent value, small businesses can establish strong online presence.', 'articles/pexels-ketut-subiyanto-4473351.jpg', '7 min read', 951, '2025-10-21 20:02:26', '2025-10-23 01:27:20'),
(7, 6, 4, 'US chess grandmaster Daniele Naroditsky dies aged 29', '2025-10-22', 'US chess grandmaster and popular YouTube chess commentator Daniel Naroditsky has died aged 29.', 'US chess grandmaster and popular YouTube chess commentator Daniel Naroditsky has died aged 29.\r\n\r\nThe chess player\'s family announced his \"unexpected\" death in a statement released by his club, the Charlotte Chess Center, on Monday. No cause of death was given.\r\n\r\nThe statement described him as a \"cherished member of the chess community, admired and respected by fans and players around the world\".\r\n\r\nNaroditsky was famous for his chess YouTube channel, which featured video tutorials and livestreams against competitors, and inspired hundreds of thousands of people across the world to play the game.\r\n\r\nNaroditsky\'s channel had nearly 500,000 subscribers, while his Twitch stream drummed up 340,000 followers.\r\n\r\nFans praised his insight and passion, casually referring to him as \"Danya\".\r\n\r\nHe played a \"pivotal role in popularising chess content online\", the International Chess Federation said.\r\n\r\n\"This is a massive loss for the world of chess,\" chess world number two, Hikaru Nakamura, said in a social media post.\r\n\r\nNakamura - a close friend of Naroditsky - told the BBC \"he inspired hundreds of thousands of people to play chess - a lot of people loved his videos\".\r\n\r\n\"When it came to making chess content to help beginners, his was the best,\" he said.\r\n\r\n\"I have played more than a thousand games of chess with Daniel,\" Nakamura added. \"Chess is a very cut-throat world and emotions run high, but Daniel was always calm.\"\r\n\r\nThe online content creation \"wasn\'t about money for him\", Nakamura said. \"He had a true passion for the game.\"', 'articles/1761200698_ULxjISkS8D.webp', '5 min read', 27, '2025-10-21 23:01:09', '2025-10-24 00:44:34');


-- Post <=> category 1 - 1
CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#6366f1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- data

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Technology', 'technology', 'Latest tech news, AI, and innovations', '#3b82f6', '2025-10-21 20:02:25', '2025-10-21 20:02:25'),
(2, 'Design', 'design', 'UI/UX design principles and creative trends', '#8b5cf6', '2025-10-21 20:02:25', '2025-10-21 20:02:25'),
(3, 'Business', 'business', 'Business strategies, startups, and marketing', '#10b981', '2025-10-21 20:02:25', '2025-10-21 20:02:25'),
(4, 'Lifestyle', 'lifestyle', 'Life tips, wellness, and personal growth', '#f59e0b', '2025-10-21 20:02:25', '2025-10-21 20:02:25'),
(5, 'Health', 'health', 'Health, fitness, and nutrition guides', '#ef4444', '2025-10-21 20:02:25', '2025-10-21 20:02:25');


-- Post <=> tags Many - Many
CREATE TABLE `article_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- data

ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_tag_article_id_tag_id_unique` (`article_id`,`tag_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);


--Query

-- Jumlah posts per user
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(a.id) AS total_articles
FROM users u
LEFT JOIN articles a ON u.id = a.user_id
GROUP BY u.id, u.name
ORDER BY total_articles DESC;


-- Menampilkan posts dengan tag tertentu (Marketing)
SELECT 
    a.id AS article_id,
    a.title,
    u.name AS author,
    t.name AS tag_name
FROM articles a
JOIN users u ON a.user_id = u.id
JOIN article_tag at ON a.id = at.article_id
JOIN tags t ON at.tag_id = t.id
WHERE t.name = 'Marketing';


-- Menampilkan detail lengkap 1 posts
SELECT 
    a.id AS article_id,
    a.title,
    a.summary,
    a.content,
    a.date,
    a.read_time,
    a.views,
    u.name AS author,
    c.name AS category,
    GROUP_CONCAT(t.name ORDER BY t.name SEPARATOR ', ') AS tags
FROM articles a
JOIN users u ON a.user_id = u.id
JOIN categories c ON a.category_id = c.id
LEFT JOIN article_tag at ON a.id = at.article_id
LEFT JOIN tags t ON at.tag_id = t.id
WHERE a.id = 1
GROUP BY 
    a.id, a.title, a.summary, a.content, a.date, a.read_time, a.views, 
    u.name, c.name;
