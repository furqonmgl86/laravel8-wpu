-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Mar 2023 pada 18.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog_2023`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-progamming', '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(2, 'Web Design', 'web-design', '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(3, 'Muslim Muslimah', 'muslim-muslimah', '2023-03-10 08:17:59', '2023-03-10 08:17:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_06_104238_create_posts_table', 1),
(6, '2023_03_06_122445_create_categories_table', 1),
(7, '2023_03_11_055335_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Rem ut exercitationem adipisci doloribus dolore fuga tempore blanditiis quasi.', 'ipsum-omnis-vitae-quia-commodi-blanditiis-nisi', NULL, 'Id sequi sequi qui nulla. Aut maiores sint doloribus atque placeat commodi.', '<p>Quaerat culpa deleniti rerum sint velit fuga enim. Id illum non similique explicabo cum veritatis. Assumenda delectus quidem earum qui. Sunt minima eos cum dolorum soluta blanditiis eaque.</p><p>Excepturi error sit ipsa labore provident distinctio quia officia. Corrupti molestiae praesentium inventore praesentium iusto odit atque. Nostrum necessitatibus magni autem quas explicabo. Ut tenetur inventore et quae necessitatibus. Dolores non velit harum harum eum deleniti inventore natus.</p><p>Repellat qui ullam possimus cupiditate voluptatem pariatur. Facere inventore dicta eos voluptatem quisquam. Laudantium omnis iure aliquam nemo consequuntur.</p><p>Exercitationem omnis et dolorum qui voluptas. Quas autem velit aut sequi. Dolores explicabo distinctio harum voluptas deserunt illum voluptatem. Dolorem nisi delectus laboriosam ex vel excepturi.</p><p>Iure quasi distinctio doloribus. Voluptatem deserunt commodi quod sapiente pariatur eligendi. Rem fuga omnis repellendus aut dolor totam. Tempora ut pariatur dolorum quia velit quas voluptates.</p><p>Architecto tempore aut molestiae est omnis aut voluptas quaerat. Aut harum amet et cumque. Temporibus ut commodi sequi dicta.</p><p>Et assumenda vero consectetur labore et vero. Voluptatem enim porro molestiae debitis ullam nulla dolores. Saepe saepe aliquam quidem veniam ut enim vero illo. Enim fugit numquam mollitia quibusdam tenetur.</p><p>Fuga ex eaque soluta quibusdam. Quas rem esse repellat ut in. Deserunt voluptate iure aperiam dignissimos distinctio.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(2, 2, 3, 'Iste iste quis illo est ut.', 'dolore-similique-et-tenetur-voluptatibus-non-blanditiis', NULL, 'Voluptatem et quod facere aut. Assumenda facere sunt quo voluptates. Eos nostrum suscipit quidem. Perferendis eos impedit ea.', '<p>Ut quia consequatur quod consequatur nostrum provident et. Sed omnis necessitatibus magnam qui reiciendis maxime eos. Quo quod non vitae exercitationem. Laborum odio ut et et nihil voluptatem.</p><p>Cumque expedita nemo quisquam saepe perferendis aliquid consequuntur alias. Molestiae exercitationem voluptatem optio consequatur aut veniam molestias. Praesentium in et laboriosam ut omnis error beatae.</p><p>Minima aperiam quisquam reiciendis. Veritatis hic voluptatem architecto animi tenetur. Perspiciatis consequuntur eos quidem et.</p><p>Voluptas aut repudiandae delectus doloremque. Nulla sapiente laborum quas consectetur. Unde impedit harum voluptate sapiente omnis eius nulla.</p><p>Voluptatem quia autem molestias corrupti quis atque. Iusto autem voluptatem et numquam consectetur et provident. Explicabo esse quaerat in. Unde vitae illo voluptatem cupiditate quos. Velit blanditiis nihil aut sint et.</p><p>Impedit autem odit doloremque rerum. Incidunt vel sit sit et fugiat. Molestiae ut ut quos occaecati nemo dolorem labore.</p><p>Debitis est rerum aspernatur dolor. Omnis ut asperiores nulla excepturi est sequi sunt voluptatem. Sit velit quo non sed voluptatem.</p><p>Voluptas molestias mollitia officia ut vitae et alias. Quia aut culpa odit qui voluptas quis. Qui et tempora velit atque neque eos velit. Saepe eaque voluptatem rerum aperiam ut aspernatur.</p><p>Voluptatem necessitatibus in nulla quaerat quod eum. Accusantium ut est nobis iure ratione. A et distinctio aperiam maxime optio culpa.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(3, 1, 2, 'Rerum fuga quisquam.', 'tenetur-et-nemo-est', NULL, 'In dolores dolores nobis iste. Aut asperiores aliquid soluta qui amet. Sed temporibus nobis blanditiis exercitationem.', '<p>Rerum explicabo sunt qui delectus officiis. In culpa provident molestiae modi in pariatur sed. Magni quas repellat et.</p><p>Sapiente quidem cumque nihil vero. Autem nostrum animi et dolor maiores unde. Suscipit molestias cupiditate quod ad eligendi incidunt velit.</p><p>Perspiciatis aspernatur laboriosam eos amet. Soluta enim quidem eum in et. Doloribus illum sed voluptatum pariatur. Adipisci vero voluptas tempore ex est. Eum iusto similique harum aut veritatis.</p><p>Aut fuga laudantium est et dolorum dolores. Sapiente cumque aut mollitia eum assumenda facere veritatis id. Animi quia praesentium ut consequatur ratione dolores incidunt doloribus.</p><p>Necessitatibus sit in ut mollitia. Quia temporibus quas tempora ut dolores quibusdam. Tenetur accusantium at qui a et aut. Quis voluptatem eum iure.</p><p>Repellat consectetur et quia minima est harum et. Qui doloribus quas consequatur ut. Libero et dolores inventore id optio. Natus velit consequatur qui aperiam harum quas explicabo.</p><p>Eius occaecati ut et dicta quod. Praesentium qui iusto quasi ut. Et facilis nam ut debitis quo necessitatibus sed.</p><p>Enim iure dolorum ipsum voluptas voluptas. Deleniti quis rerum voluptatem quas et. Nostrum ut facilis inventore quibusdam. Modi iste in accusamus id eos explicabo. At explicabo sed est nisi minima ab rerum rerum.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(4, 1, 2, 'Dicta adipisci vel enim illo deserunt harum dolores et ut quo natus.', 'placeat-odit-alias-velit-sit-pariatur-voluptas-sed', NULL, 'Perspiciatis tempore aut est ipsum dolor ullam neque. Dignissimos repudiandae ut voluptas neque. Incidunt labore incidunt ex. Possimus est et ipsa molestiae nesciunt omnis iste.', '<p>Blanditiis cum maiores animi fugiat aperiam quasi sed cum. Rerum hic impedit est quos. Deleniti maiores eveniet repellendus dolore explicabo accusamus quaerat unde. Aut iure occaecati repellendus in id dolorem.</p><p>Veniam quia sapiente ducimus veritatis facilis ipsam. Provident architecto aut accusamus. Deserunt commodi fugiat architecto iste.</p><p>Ab natus repellat error quisquam incidunt. Aperiam nihil corporis provident at asperiores architecto. Sint et placeat debitis ipsam nesciunt beatae aut aut.</p><p>Molestiae qui voluptas odio aut voluptate ut. Et officia aut nobis aut et tempora odit consectetur. Ex at in qui nemo consequuntur ea earum. Placeat voluptas qui aut sed. Et nisi minima occaecati vel neque nihil amet.</p><p>Quaerat doloribus ad repellendus deserunt nihil earum mollitia id. Eum hic quasi quaerat ab. Aut eos fuga ut. Recusandae enim aut ea voluptas accusamus vel. Mollitia minima adipisci quasi delectus animi.</p><p>Non dolor qui aspernatur quis iure pariatur sit. Quibusdam non consequatur optio impedit. Et fugit et autem vitae ea consequatur.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(5, 2, 2, 'Quam minima quia voluptatem rem animi qui consequatur.', 'optio-sit-vitae-deserunt-assumenda-mollitia-et-sapiente', NULL, 'Eos quisquam iusto ut. Soluta odit eveniet aut vel et excepturi. Voluptatem velit quia vero facilis placeat quisquam quis. Eos similique sapiente quos et aut provident ab rerum.', '<p>Delectus culpa voluptatum ut voluptas non. Voluptas minus similique assumenda dolores illum recusandae reprehenderit. Reiciendis quia aperiam ipsa vel ea consequuntur autem officia.</p><p>Impedit eos dolores odio. Non et laudantium doloribus quidem. Saepe repudiandae qui aut consequatur.</p><p>Et nihil ut occaecati repellat eos. Voluptatem excepturi autem quisquam error ratione voluptas autem. Aut iste at quam perspiciatis quae. Hic et doloremque molestias doloribus possimus magnam labore.</p><p>Laborum sit sunt ea ad magni aut voluptatibus. Voluptate sequi qui deserunt quo qui reprehenderit itaque.</p><p>Consectetur et dolorem dolor quia explicabo repellendus. Illum nostrum explicabo dolores quae cupiditate dolor. Tempore et odio et sed.</p><p>Repellendus eum id numquam. Reiciendis sit quo facilis magni omnis. Tenetur voluptatum ipsa delectus sunt dolorum accusantium.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(6, 1, 2, 'Dicta aperiam error et accusantium facere eligendi.', 'numquam-natus-aut-qui-dolor-omnis-magni-et', NULL, 'Enim aut maxime natus accusamus eaque illum ratione. Eveniet culpa omnis nesciunt et voluptates rerum rerum. Sed ipsam quos vero et quia.', '<p>Veniam aut mollitia et saepe est perspiciatis cum. Dolores quis voluptas fuga dicta in aut fuga corrupti. Velit ducimus itaque ut voluptate vel. Nisi qui ipsam occaecati.</p><p>Consectetur molestias et optio quibusdam. Error fugit ad excepturi ut. Facere adipisci non quibusdam culpa fuga cumque. Vero sed quas est.</p><p>Magnam quod ipsa natus minima. Et est rem illo at aperiam. Repellat ab vel odio totam blanditiis id.</p><p>Autem earum excepturi et eaque. Non qui nulla dolorum.</p><p>Fugiat voluptatibus debitis provident. Atque vero molestias reprehenderit nam itaque ea. Qui nostrum error eligendi fugiat. Aut ducimus dolores ut a expedita nesciunt et tempora.</p><p>Ea dolor blanditiis optio porro reiciendis consectetur ab quibusdam. Voluptate sequi at non dolorem eos esse voluptatem. Nihil est delectus dolore modi perspiciatis. Odit nisi a similique a eius libero qui. Assumenda nihil sunt unde rerum.</p><p>Et reprehenderit eius esse itaque. Molestiae eaque nam aliquam voluptas. Quia vitae unde ut ut quia minima laboriosam.</p><p>Ipsa ipsum non odio et veritatis ut est dolor. Nihil qui molestiae magnam et ullam iste. Consequatur magni in fugit in beatae. Modi recusandae dolorem porro labore qui veritatis vel. Facere provident voluptatem maiores.</p><p>Exercitationem nihil id reprehenderit et fugit et. Sunt quidem eveniet rem adipisci impedit voluptatem dolorem. Nobis molestiae saepe sapiente repellat amet est aliquid. Nihil id minima nam quaerat in. Veritatis veritatis iste excepturi et.</p><p>Sunt sed illo quaerat consequatur labore. Voluptatem odit corporis eaque quo quas.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(7, 2, 3, 'Aperiam ipsa atque et error.', 'recusandae-vero-nam-in-voluptas-praesentium-facere-voluptatem', NULL, 'Iure vero dolores reiciendis explicabo. Dolorum sint illo accusantium ab et. Commodi sed exercitationem aut saepe inventore laudantium.', '<p>Ea libero laborum a placeat. Sed eum deserunt deleniti. Aliquid quis alias delectus fugiat. Ipsa quia quis exercitationem consectetur.</p><p>Eum ipsum consequuntur ab aut. Iste doloribus autem perspiciatis odio vitae enim. Harum praesentium ut in qui aperiam aut.</p><p>In veniam voluptatum ratione quas tempore aspernatur. Deserunt et sapiente quae aut libero esse iusto. Dicta placeat similique sed quod temporibus voluptate. Fugit atque sed dolorem excepturi accusamus.</p><p>Magnam aut nam assumenda alias sint possimus distinctio. Consequatur fuga non doloribus consequatur. Eos veritatis sit ad sit debitis.</p><p>Quisquam quaerat quia quas eveniet pariatur est. Voluptatem fugiat repudiandae ipsam beatae. Voluptas suscipit ab et aut dicta nobis dolor cum.</p><p>Quia sint unde vel qui. Nesciunt suscipit dolor voluptas consequatur qui. Ratione consequuntur minima accusamus quaerat nobis provident iure. Ad natus culpa et perspiciatis minima consequuntur.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(8, 2, 3, 'Quae ut et dolorem et autem id sunt qui voluptatem.', 'est-ea-ad-quia-tempore', NULL, 'Occaecati inventore eligendi ut ipsa voluptatem. Nulla voluptates modi consectetur sed adipisci soluta. Iste et et omnis qui possimus quo.', '<p>Maiores non repellat veritatis est aut sequi. Reprehenderit et veritatis eos cumque quis. Quidem nobis tenetur vero consequatur eum temporibus ullam. Corporis sed esse odio qui enim ipsa.</p><p>Ipsam dolores et optio eum velit. Eum voluptatem maiores quasi id deleniti eius. Illo ut a saepe et exercitationem veniam. Ex dicta necessitatibus necessitatibus labore non vel distinctio.</p><p>Eos officiis magni est sit vel iusto. Illum facilis et quae sit repellat corporis eligendi odio. Exercitationem eveniet excepturi eos ipsum inventore.</p><p>Officia aliquid neque autem voluptatem. Temporibus rerum aut minima quos ut optio nihil. Sit aut perspiciatis aut. Est ut consequuntur mollitia.</p><p>Et ea reprehenderit velit eum. Accusantium porro ex enim qui vitae. Quia rerum nesciunt quis sunt est doloremque autem.</p><p>Assumenda quia earum voluptatem inventore illo ut temporibus. Ratione qui quia et est alias recusandae aspernatur. Blanditiis distinctio porro aut vero molestiae et eum. A repellat a qui velit exercitationem sapiente. Aut iure praesentium tempora est dolores consectetur vitae.</p><p>Eligendi consectetur corporis modi. Corrupti libero accusamus nostrum. Consequatur odit vel earum. Consectetur quos libero aut enim.</p><p>At accusantium rem dolores optio cumque error. Ducimus quos voluptatem architecto adipisci est et temporibus et. Sed exercitationem voluptates nemo.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(9, 2, 1, 'Qui ea pariatur culpa.', 'laudantium-molestiae-non-delectus-molestiae-ullam-voluptas-odit-adipisci', NULL, 'A qui voluptas ea. Dicta cupiditate nostrum et dicta a accusantium in veniam. Quia dolorem velit nulla rerum corporis ab praesentium ut. Inventore eos facere facere necessitatibus.', '<p>Pariatur id mollitia non soluta vel ut ut nisi. Iure earum architecto iure. Eius sed sunt omnis recusandae quia iure iste. Illo et facere voluptatum voluptatibus deleniti.</p><p>Et laboriosam esse quia non. Blanditiis iste molestias odit dicta nobis. Similique eveniet eos quibusdam ipsam voluptas minima occaecati.</p><p>Quo totam nam ducimus sunt occaecati. Aperiam qui quidem neque praesentium nam autem. Quis et rem hic natus voluptas aut.</p><p>Fugiat id sed optio. Qui eum laudantium qui facilis. Dolorum deleniti adipisci iure fuga pariatur. Corporis quae consectetur tempore minus nulla.</p><p>Qui nisi minima et fugit atque excepturi omnis. Quis dolor maxime quo est est adipisci repellat. Dolorem non quisquam omnis perferendis soluta voluptas. Et ipsum dolorum qui nisi dolore perferendis maiores.</p><p>Et possimus autem qui libero est earum ut. Ut est velit at quia harum repellat fugiat similique. Labore quis sint sit. A repudiandae dolore aliquid dolorem repellat sed eos.</p><p>Labore suscipit et est consequatur. Alias aut ab qui rerum accusamus natus. Sunt doloribus quod sit maiores velit. Iusto est iure non.</p><p>Et repudiandae sunt incidunt accusantium quia. Aliquid amet sed nihil ipsa vero. Alias unde est vel maiores voluptatem et sed dolor. Quaerat qui culpa quas.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(10, 2, 2, 'Laborum optio adipisci numquam.', 'consequatur-cumque-perferendis-sapiente-et', NULL, 'Enim odit qui blanditiis necessitatibus sit. Quia in illo et atque ipsum. Consequatur illum et quis ea aut veritatis minima.', '<p>Laboriosam voluptas sint eius cum molestias expedita. Recusandae esse est reprehenderit quidem est est. Ea iusto quos harum unde temporibus voluptatem veritatis quas. Deleniti numquam culpa sed ut.</p><p>Iste cumque id aut ea. Soluta omnis dolor qui cupiditate nisi pariatur. Dolore fugiat et laborum illum in aut.</p><p>Hic qui sunt quo. Fugit non assumenda aut velit temporibus beatae quam. Qui unde ratione ea quas iusto.</p><p>Autem vitae sit voluptas ut magni. Ipsum ut nostrum sit doloremque ad unde illum. Commodi quo quod aspernatur amet minus odio.</p><p>Voluptatem laudantium dolore quam vel. Officiis aut at adipisci nobis eligendi sed ea non. Saepe qui ab officia fuga enim excepturi. Ab minima non est possimus.</p><p>Est repudiandae perferendis voluptatem consectetur ut voluptate. Consequatur sunt qui nobis est. Optio alias voluptas qui et qui non.</p><p>Deleniti quis suscipit id. Tenetur placeat perspiciatis quia alias voluptas. Sit quos maxime sit et earum consequatur.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(11, 3, 3, 'Porro dolore eum.', 'ipsa-esse-ut-et-dolorum-sit', NULL, 'Illo quam a sunt temporibus totam. Eius aut adipisci accusamus id eum commodi alias. Et totam numquam omnis ipsa est quae et. Velit nostrum dolorem qui quo id repudiandae.', '<p>Alias error quibusdam voluptatem soluta id delectus ut animi. Beatae dolorum impedit dolorem aut modi laboriosam aut. Et rerum autem delectus quis maiores ut voluptatem repellendus.</p><p>Modi beatae quas et nam facilis. Minus voluptatem repellat quia ab eum expedita et. Quo perferendis consequuntur autem qui blanditiis autem molestias.</p><p>Debitis eveniet eaque qui nemo. Est voluptas eaque aliquid veritatis. Quas fuga ut sit.</p><p>Magnam deleniti nihil laborum ut vitae qui. Perferendis dolor voluptas nihil voluptatibus quisquam optio et. Doloremque nostrum odit maiores commodi. Facilis omnis voluptatem dolores consequuntur ut quaerat et.</p><p>Expedita doloribus qui odit. Eveniet est animi autem eveniet quis et. In unde labore dignissimos delectus officiis sed aliquam.</p><p>Est aut laboriosam aut enim dolor fugit non voluptatem. Qui id nam quis. In molestias laudantium molestiae hic est. Eaque nisi sunt enim ab ut sed rerum.</p><p>Excepturi qui dolorum dolorem corrupti tempora sed. Non nobis magni quam debitis et. Consequatur et impedit consequatur enim vero distinctio molestiae nihil. Id neque omnis voluptatem delectus rerum laborum.</p><p>Labore molestias totam autem vel voluptas repellendus sit. Eaque quia voluptatum ad sed. At et ab unde reiciendis.</p><p>Blanditiis assumenda sunt fugiat sit dolore nemo quasi iste. Et id totam magni cupiditate quos quia at. Ipsa illum facilis aut nihil in iste in.</p><p>Eaque reprehenderit ut magnam alias. Sit excepturi sed atque unde dolorem nesciunt consequuntur. Rem ipsam sunt corporis velit accusantium perferendis earum atque. Omnis autem voluptatem et nostrum consequatur suscipit vel.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(12, 1, 2, 'Voluptas nesciunt quo voluptas quod minus quo sed blanditiis voluptas qui.', 'dolorem-quasi-aspernatur-dicta-laborum-dolor-dolores-qui', NULL, 'Veniam quia ipsa quam quo dolores. Cumque qui corrupti officia rerum quia pariatur qui. Incidunt necessitatibus est quia qui alias.', '<p>Recusandae expedita illo sunt et deserunt exercitationem eum. Placeat quam est neque sunt consequatur. Quos ducimus dignissimos veniam voluptatem eum.</p><p>Aut quam eligendi odio magnam aut. Excepturi eum sed consequatur autem laudantium repellendus facere. Dolor natus adipisci temporibus iusto autem. Error quis officia voluptates nam porro.</p><p>Animi assumenda beatae unde. Quia iure labore mollitia. Voluptatem officia earum et fuga enim maxime iure. Ipsum accusamus deleniti reprehenderit molestiae non et tenetur.</p><p>Mollitia modi doloremque quam consequatur maiores rerum. Dicta et optio natus et. Exercitationem tempora eaque ipsa molestiae delectus laboriosam. Corrupti sit iste recusandae ducimus consequatur commodi.</p><p>Iste nostrum voluptatem vel et molestiae. Dignissimos iusto libero voluptates qui ducimus voluptas tenetur. Assumenda eos consequatur possimus laudantium.</p><p>Excepturi voluptates et quibusdam. Non qui repellendus magni optio molestiae. Veniam qui repellat aut eaque. Voluptatibus maxime corrupti veritatis ut delectus labore a. In nihil amet consectetur quod.</p><p>Quia nihil non velit ut neque saepe sed. Fuga nihil dolorum saepe nihil rerum et ut. Earum iste magni illum nihil voluptatem ut. Aliquam sunt consequatur doloribus ex odio amet.</p><p>Laboriosam accusantium ab omnis qui quod sint. Quia rerum dolorum deleniti esse rerum odio. Ea et laudantium voluptas nostrum.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(13, 3, 2, 'Voluptates quam aliquid.', 'est-explicabo-dignissimos-omnis-consequatur-neque-dolor', NULL, 'Dolore consequuntur tenetur ut est assumenda tempora voluptates dolorem. Et omnis eum quis autem illo aspernatur nihil. Fugit quis et ratione dolorem deleniti distinctio officiis. Temporibus nemo magni dolorum aut consectetur vel.', '<p>Voluptas quo non inventore autem vel aut. Sint nisi sit voluptates. Aut esse consequatur doloremque ad et.</p><p>Libero ut quae voluptates vel omnis praesentium nisi. Repellendus et quia aut harum. Nihil eaque eaque quam fugit aut quisquam.</p><p>Illo in dolor deleniti unde dicta. Sunt a facere modi temporibus corrupti est. Assumenda saepe vel quidem praesentium saepe.</p><p>Atque porro illo praesentium aut quia non. Voluptatem at consequatur facilis. Sed totam assumenda eum facere ab. Omnis laborum nulla qui omnis.</p><p>Ut vitae repudiandae cumque et. Et veniam consequuntur veniam culpa. Voluptate reiciendis dolor saepe debitis officiis sit aliquid.</p><p>Facilis dignissimos esse vero sed eos mollitia. Est et suscipit illo quis iusto. Numquam nihil consequatur id cumque asperiores est. Sint et veniam laudantium placeat sit reiciendis at nam.</p><p>Explicabo eum facere eaque quasi quisquam voluptas dicta. Ratione eligendi provident incidunt dolore facere. Assumenda inventore maxime aut perspiciatis laboriosam harum voluptatem.</p><p>Delectus dolores accusantium neque quasi saepe atque corrupti architecto. Aut laboriosam doloremque dignissimos eum quia alias incidunt. In dolor ut quia unde animi laborum. Accusantium voluptatem suscipit est aut.</p><p>Expedita sint et ut ab est aut. Impedit nesciunt est voluptatem quas eum. Quas qui excepturi omnis nobis fuga incidunt aut.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(14, 3, 1, 'Ipsa possimus quasi quae voluptatem eum eligendi hic.', 'facere-eaque-ipsum-est-accusantium-sint-qui-aliquid', NULL, 'Repellendus cum ut dignissimos consequatur similique. Sed sunt et molestias cumque asperiores autem. Occaecati autem asperiores quo sapiente temporibus harum. Est sed saepe et ab fuga minima reprehenderit.', '<p>Et dolorum laboriosam est quibusdam itaque. Magnam et quis omnis iste consequatur quo.</p><p>Id eveniet dolor labore ut laudantium impedit cupiditate. Iusto qui culpa quibusdam odio ea consequatur. Iure odit assumenda debitis non ut pariatur provident.</p><p>Quis voluptas odio qui et pariatur sit. Autem ut necessitatibus ut assumenda sint. In sed aut ad a aut. Fugit est aut quas eum.</p><p>At dolorem voluptatem delectus est. Porro velit alias debitis rerum aut et. Culpa quisquam ipsa aliquam quia. Et ut minima molestiae et aliquid molestiae perspiciatis.</p><p>Qui ratione enim quia quisquam eveniet ut doloremque est. Accusamus consequatur voluptatibus nam sit et praesentium. Quis praesentium voluptas dolore enim. Dignissimos facere minus placeat voluptatem corrupti qui adipisci.</p><p>Iste facilis est molestiae ex qui molestias. Reiciendis quae inventore et molestiae rem porro. Qui animi officia ullam veritatis quae. Voluptatibus voluptas iusto rem sequi consectetur error numquam.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(15, 3, 2, 'Esse nobis qui unde ea.', 'est-illo-repellendus-voluptate-suscipit-expedita-quasi-quae', NULL, 'Corrupti perferendis blanditiis dolore cumque. Alias aliquam distinctio consequatur amet ratione. Qui est tempora et rerum. Earum aut autem est sed qui quos totam. Reiciendis expedita accusantium corrupti dolor suscipit rerum.', '<p>Saepe laborum dolor alias eum. Eum enim rerum in est in. Sequi deserunt necessitatibus iste ut. Vero aut reiciendis temporibus autem repellendus minus. Excepturi qui vitae quibusdam.</p><p>Qui impedit illo consequatur commodi sit libero accusamus ipsum. Quo fuga laboriosam voluptatem accusantium laborum quo vel. Quasi hic quia voluptas et dolorum delectus quis. Maxime et animi consectetur sint quasi enim et.</p><p>Maxime itaque ipsum at cum. Recusandae exercitationem recusandae aliquam animi ea autem. Neque deserunt laborum voluptatem rerum quia distinctio ipsam. Consequatur sunt perspiciatis a ut eum in.</p><p>Vitae minus nesciunt dolorum placeat. Enim ab consequatur dolor sapiente in possimus accusamus est. Dolores itaque labore ut qui dolor dolor est. Voluptas consequatur tempore sed dolore.</p><p>Et quibusdam omnis nam autem. In cupiditate perspiciatis perferendis quia placeat magni consequatur. Quaerat recusandae officia hic corrupti. Soluta excepturi ipsam molestiae velit facere deserunt et labore.</p><p>Molestiae earum aut voluptatem animi eaque aut ex. Natus et molestiae et velit tempora impedit quod. Et illum fugiat est a sint.</p><p>Sit officiis ex quam aut. Deserunt temporibus quasi et alias vero culpa numquam. Dolores facilis necessitatibus molestias et.</p><p>Aliquam et quis reprehenderit voluptate quas quis illo. Omnis sunt quo consequatur in unde veniam. Error consequatur aut qui voluptates vero nisi voluptas. Commodi nam voluptatibus eos vel.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(16, 3, 3, 'Pariatur recusandae vero sit et est.', 'fugiat-et-vel-rerum-reiciendis-tenetur-cumque-sit-maiores', NULL, 'Ut praesentium velit eum non excepturi at atque. Totam nostrum autem enim et laudantium. Ab nesciunt doloremque quod facere.', '<p>Alias voluptatem voluptatibus saepe similique odit molestias soluta commodi. Earum sapiente minima quia quia. Sed et veritatis delectus voluptatem totam.</p><p>Quia nam maiores voluptatem aut perferendis pariatur. Distinctio id eveniet est alias aut et ea ea. Aut veritatis quos alias qui esse omnis quo ea.</p><p>Vitae quo aut sunt. Nesciunt eaque minus itaque ut.</p><p>Repellendus ipsum ipsam reiciendis perspiciatis voluptas. Odio sit ut ratione possimus repudiandae. Dolor velit accusamus nemo sunt similique.</p><p>Repellendus molestiae officiis tempora odio delectus aut corporis. Quam esse soluta quibusdam et sed perspiciatis architecto. Ut in facere fuga amet officia.</p><p>Et quia voluptatem id accusamus quo voluptatum quia. Aspernatur atque vel accusantium. Cumque maxime ut ipsa. Error quo quia eum ipsum. Tenetur natus quia ab facilis magnam esse.</p><p>Aspernatur est maiores veniam in nobis et. Ipsam dolorum labore eos sit voluptatem ut voluptatibus. Unde ut occaecati distinctio officiis error. Aspernatur necessitatibus quae ut qui voluptas. Aut itaque natus quaerat aut.</p><p>Et sapiente non assumenda tenetur doloribus blanditiis. Accusantium esse voluptas aspernatur.</p><p>Tenetur voluptatum eum ipsa optio aut. Numquam consequatur non placeat quod vero veritatis possimus sit. Eaque est excepturi in voluptas. Ratione unde fugiat rerum voluptatibus et voluptatem.</p><p>Eveniet expedita quia libero dolores atque iure accusantium. Itaque sint ullam illum ut dolor. Repellendus aut voluptas ducimus reprehenderit amet non omnis.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(17, 2, 2, 'Voluptates voluptatem sed consequuntur pariatur dolorem aspernatur quibusdam veniam.', 'esse-est-explicabo-molestiae-aliquam-eos-architecto', NULL, 'Sed neque non et iure occaecati. Vel minus omnis beatae explicabo accusamus quia ea commodi. Laudantium suscipit laboriosam dolores officiis doloribus voluptas. Voluptatum quae tempora nemo id voluptas odit dolorem.', '<p>Quia ratione quos consequatur. Odit neque voluptas ut praesentium ad eos. Id qui quo sunt. Nemo qui totam asperiores fuga.</p><p>Aspernatur qui dolor beatae accusamus occaecati dolor. Praesentium quisquam facilis nulla. Quos blanditiis possimus quasi et cupiditate omnis. Iusto autem est sint velit voluptatem consectetur consequatur.</p><p>Dolor sapiente commodi rem a sunt. Nostrum voluptates est repellendus et aut corporis saepe aut. Libero explicabo quas in fugit. Quis inventore dignissimos aliquid minus dicta eveniet rerum iure.</p><p>Accusantium porro accusantium eaque id est odio atque beatae. Dignissimos eos eos sequi. Eius nostrum possimus autem aut odio dolor. Accusamus eveniet tempora tenetur non deleniti quam dolorum.</p><p>Error nihil recusandae et iste ab voluptatibus et. Reiciendis mollitia possimus quo natus ab libero enim. Dolorem laboriosam expedita accusamus quis et enim ut aut.</p><p>Quo voluptatem ipsam in odit a ut error. Veritatis consequatur cum at aut consequuntur non porro. Laboriosam tenetur culpa rem non.</p><p>Laborum incidunt mollitia reprehenderit et temporibus. Ullam quis aliquid ea sunt veniam repellendus culpa quia. Aut eius earum pariatur et optio dolores et. Sint et repellat et sit quis et et quibusdam.</p><p>Non nobis omnis rerum necessitatibus. Architecto laudantium sit temporibus quia autem. Inventore ut nulla perspiciatis asperiores ea. Ut deleniti nesciunt expedita alias sunt ullam.</p><p>Quo aliquid debitis quaerat. Maiores voluptas quia vel aut animi. Non neque ut aut sed.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(18, 2, 1, 'Ut pariatur.', 'esse-unde-quis-et-doloremque-aut', NULL, 'Officia dolor ipsa consequuntur ipsam non quia. Numquam deleniti voluptatibus architecto ipsam in. Sunt natus optio magnam sint dolore tenetur voluptatem.', '<p>Est est debitis possimus ut impedit. Asperiores sint tempora et ea nisi et. Dicta explicabo minima doloremque. Eaque repellendus placeat laborum.</p><p>Quidem ut eveniet accusantium voluptatem nihil voluptatum et. Et dolorem dolor ipsa facere quaerat.</p><p>Animi et ut sint animi fuga. Sed est et quaerat reiciendis hic voluptates. Omnis nesciunt eveniet molestiae et.</p><p>Ratione unde cum impedit quis inventore cumque aliquid. Ab explicabo omnis quis tempora eius. Voluptas quia soluta odit expedita vel. Ducimus qui ducimus ipsum cum.</p><p>Praesentium culpa facere occaecati esse ut minima. Et molestias deleniti quasi eos. Illum deserunt aut reprehenderit. Laudantium fugiat voluptate molestiae sunt.</p><p>Eveniet inventore consequuntur quia et vitae aspernatur. Hic velit expedita architecto totam iste. Aliquid voluptatibus tempora culpa sed aut.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(19, 2, 1, 'Molestias magnam aut.', 'totam-quas-incidunt-voluptas-hic-hic', NULL, 'Delectus molestias est molestias necessitatibus molestiae et. Et quasi natus perspiciatis. Voluptas ipsum quae aperiam tenetur rerum esse. Ut iure officia est enim quasi.', '<p>Non accusamus quia doloremque beatae porro omnis. Dolores ut magnam delectus non rerum. Necessitatibus facilis aut fugiat et reiciendis vero temporibus eius.</p><p>Quo tenetur non voluptas dolor et. Eaque sunt minima molestiae placeat aut quibusdam. Molestiae sequi aut autem molestias repellendus eligendi commodi. Voluptatem nostrum odio deserunt eaque.</p><p>Non laboriosam dolores quasi veniam illo maxime esse veniam. Aut velit rem inventore tempore exercitationem. Corrupti quibusdam delectus quia pariatur et. Aliquid facilis error accusamus ducimus a officiis magnam.</p><p>Ut sed corporis repellat iusto. Reiciendis et provident exercitationem cumque voluptas eaque consequatur. Consequatur ipsam veniam ex fuga reiciendis.</p><p>Modi tempora vel quam. Qui voluptatem cupiditate aut voluptatem animi. Laborum iure voluptatem sint ipsam.</p><p>Sequi aut voluptas aut facere accusamus. Blanditiis ab nisi accusamus rerum corporis qui facilis earum. Voluptas exercitationem odit illum expedita odit odio. Omnis qui nostrum molestiae perspiciatis.</p><p>Amet aliquam aut nihil quaerat atque ut. Eum sit labore quis suscipit praesentium optio ut. Cumque iusto placeat alias ut aperiam adipisci corporis. Velit corporis non veniam et non beatae.</p><p>Esse facilis adipisci nobis delectus. Cupiditate quas adipisci quibusdam error aspernatur doloribus. Doloribus et repellendus qui nihil et. Sit officia beatae aliquid quidem.</p><p>Atque libero occaecati eos unde. Et qui aperiam harum dolorem nihil. Autem ut tempora aut vel. Error facilis blanditiis quis est.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(20, 1, 1, 'Neque vel exercitationem iusto molestiae est aut nulla.', 'nostrum-laboriosam-qui-rerum-qui', NULL, 'Quis doloremque cumque et voluptatem voluptate eum aut. Assumenda ullam aut eligendi quia labore esse quo. Earum ut consequatur modi vero.', '<p>Dolorum non quia qui magnam suscipit enim recusandae iure. Corporis esse mollitia ut dolor et ut vero. Rerum explicabo aut repellat perferendis. Repellat aut repudiandae in qui laborum.</p><p>Omnis iste et nihil possimus. Blanditiis dolores placeat unde velit sed. Earum voluptatem ipsum laboriosam voluptates occaecati amet.</p><p>Est ut eaque eveniet et aut est id sunt. Eaque illum eos at nihil. Quia omnis repudiandae iure laudantium omnis est aspernatur.</p><p>Quis consequatur ipsam aut nemo sint. Nihil ducimus numquam quos et. Optio asperiores qui enim expedita id.</p><p>Ea quasi placeat atque provident. Dolor doloribus magnam cupiditate corrupti debitis. Ratione neque sit voluptatem. Blanditiis delectus animi eaque necessitatibus sed et est.</p><p>Provident doloribus iste adipisci ut voluptatem possimus aut. Iste rem deserunt dicta sint. Minima distinctio amet et nisi sequi vel soluta. Quas officiis esse neque omnis quo. Explicabo recusandae et aperiam recusandae est.</p><p>Ut eum non quasi quo nesciunt repellendus ab. Necessitatibus enim et fugiat ex quidem eveniet. Nisi iusto dolores quidem ratione doloribus aut.</p><p>Adipisci qui sequi iste et non aliquam itaque. Voluptate et totam repudiandae minima quia et. Aut ex dolor molestiae illum accusamus omnis reprehenderit. Ullam quibusdam non qui quis.</p><p>Sequi id alias accusantium voluptas voluptatem et. Nobis aut animi qui accusamus dicta magnam. Dolor et voluptas voluptas autem.</p><p>Aut et sunt omnis quia. Dignissimos tempora doloribus laborum fugit animi cumque nihil. Et ex possimus sit sint eaque eum. Dignissimos accusamus dolor quasi earum vitae.</p>', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59'),
(21, 3, 2, 'Tes Gambar', 'tes-gambar', 'post-images/ZYtONeFst10IxkDGyBWcOYJjnYO034SvFZuswIvE.png', 'Tes Gambar', '<div>Tes Gambar</div>', NULL, '2023-03-10 08:29:00', '2023-03-10 09:22:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Muhammad Furqon', 'mfurqon', 'furqon827@gmail.com', NULL, '$2y$10$iObFmEDQUL2AcJNmNlA3HO0.ALkuVKj6zwKcrJDxZrm9yHzkaYqUq', NULL, '2023-03-10 08:17:59', '2023-03-10 08:17:59', 1),
(2, 'Jamil Nashiruddin', 'mustofa.irnanto', 'darimin07@example.com', '2023-03-10 08:17:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wNdUbvOGIgg1KdIojuhEdjtzEz1dlDyaubK6XzBqaU6tiXGome8FBu1fm9Sg', '2023-03-10 08:17:59', '2023-03-10 08:17:59', 1),
(3, 'Liman Yahya Manullang S.Gz', 'isamosir', 'ufujiati@example.org', '2023-03-10 08:17:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VrZsgwncyS', '2023-03-10 08:17:59', '2023-03-10 08:17:59', 0),
(4, 'Jabal Garan Waluyo', 'martaka53', 'ooktaviani@example.net', '2023-03-10 08:17:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TKCILJbTgI', '2023-03-10 08:17:59', '2023-03-10 08:17:59', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
