
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


-- Post <=> tags Many - Many
CREATE TABLE `article_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
