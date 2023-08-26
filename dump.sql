-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 26 août 2023 à 22:28
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `caftan`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `created_on`, `lastupdated_on`, `image_url`, `name`) VALUES
(1, '2023-08-19 09:48:25', '2023-08-19 09:48:25', 'https://zapaka.ca/cdn/shop/products/CGZLZD22016_Orange_1_first_b21c411f-c977-47d1-8197-7ea13fa19ea1_1024x1024@2x.jpg?v=1651729881', 'Short Night Kaftan'),
(2, '2023-08-19 09:48:41', '2023-08-19 09:48:41', 'https://zapaka.ca/cdn/shop/products/CGZLZD22019_Lilac_7_10dee187-a593-4137-8d86-156031e35583_1024x1024@2x.jpg?v=1651729954', 'Deep Neck Kaftan'),
(3, '2023-08-19 09:48:53', '2023-08-19 09:48:53', 'https://zapaka.ca/cdn/shop/products/CGZLZD22012_Grey_1_first_cc36cccc-586a-4682-8502-4d5d28eac08a_720x.jpg?v=1651729845', 'Maxi Dress Oversized Kaftan'),
(4, '2023-08-19 09:49:06', '2023-08-19 09:49:06', 'https://zapaka.ca/cdn/shop/products/CGZLZD220253_Black_1_first_70f5b17b-14a3-4d1b-8328-ffeac6d71fd8_1024x1024@2x.jpg?v=1651730054', 'Length Kaftan Dress'),
(5, '2023-08-19 09:49:18', '2023-08-19 09:49:18', 'https://zapaka.ca/cdn/shop/products/CGZLZD22006_Royal_Blue_1_59c11aea-6f85-4e50-8da2-a8b19e9364df_1024x1024@2x.jpg?v=1651729776', 'Royal Kaftan '),
(6, '2023-08-19 09:49:43', '2023-08-19 09:49:43', 'https://zapaka.ca/cdn/shop/products/2CGZLZD22013_Yellow_1_first_74c6c82b-3b6a-4bcc-89e6-f356fa73f4e0_1024x1024@2x.jpg?v=1651729893', 'Vintage Styles Kaftan Dress'),
(14, '2023-08-21 09:03:13', '2023-08-21 09:16:26', 'https://zapaka.ca/cdn/shop/products/CGZLZD22011_Light_Blue_1_first_ac27cce0-f58a-4552-84b2-597068525324_1024x1024@2x.jpg?v=1651729834', 'Light Blue Handmade Moroccan Kaftan with Belt'),
(16, '2023-08-22 20:44:25', '2023-08-22 20:44:25', 'https://zapaka.ca/cdn/shop/products/CGZLZD22011_Light_Blue_1_first_ac27cce0-f58a-4552-84b2-597068525324_1024x1024@2x.jpg?v=1651729834', 'Light Blue Handmade Moroccan Kaftan with Belt');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `created_on`, `lastupdated_on`, `address`, `email`, `name`, `phone_number`) VALUES
(1, '2023-08-19 12:17:40', '2023-08-21 07:25:51', ' Paris', 'adil.oussara@gmail.com', 'Adil ', '123-3445'),
(2, '2023-08-19 12:19:10', '2023-08-21 07:26:10', '1983 Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123'),
(4, '2023-08-19 12:19:13', '2023-08-19 12:19:13', '1983 Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123-453-3445'),
(5, '2023-08-19 12:19:14', '2023-08-19 12:19:14', '1983 Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123-453-3445'),
(6, '2023-08-20 13:54:11', '2023-08-20 13:54:11', '193 Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123-453-3445'),
(7, '2023-08-20 13:54:07', '2023-08-20 13:54:07', '1983 Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123-453-3445'),
(16, '2023-08-20 20:18:54', '2023-08-21 14:29:57', 'JAURES', 'oussaraadil@gmail.com', 'Adil OUSSARA', '0658080776'),
(18, '2023-08-20 20:21:29', '2023-08-21 14:29:44', ' Paris', 'adil.oussara@gmail.com', 'Adil Oussara', '123-453-3445'),
(20, '2023-08-21 14:30:12', '2023-08-21 14:30:12', '2 RUE ANTOINE DE MALRAS APT F01 - 31100 TOULOUSE', 'amallahdari@gmail.com', 'AMAL LAHDARI', '0771668083');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `amount` double NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `owner_roles`
--

CREATE TABLE `owner_roles` (
  `owner_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `created_on`, `lastupdated_on`, `description`, `image_url`, `name`, `price`, `category_id`) VALUES
(3, NULL, NULL, 'Fabric: Polyester. The fabric is comfortable for skin.\\n\\nPackage Contents: 1x Women Dress.\\n\\nOccasion: Whether you are dressing it for a wedding party, prom, evening party or any other occasions, this sophisticated dress will be your lovely partner.', 'https://zapaka.ca/cdn/shop/products/CGZLZD22012_Grey_1_first_cc36cccc-586a-4682-8502-4d5d28eac08a_720x.jpg?v=1651729845', 'Royal Blue Velvet Caftan Marocain with Embroidery', 199.99, 5),
(4, NULL, NULL, 'Fabric: Polyester. The fabric is comfortable for skin.\\n\\nPackage Contents : 1x Women Dress.\\n\\nOccasion: Whether you are dressing it for a wedding party, prom, evening party or any other occasions, this sophisticated dress will be your lovely partner.', 'https://zapaka.ca/cdn/shop/products/CGZLZD22020_Fuchsia_11_59d68f5f-8479-4800-b813-137470d15633_1024x1024@2x.jpg?v=1651729930', 'Yellow V Neck Caftan Marocain', 85.99, 1),
(5, NULL, NULL, 'Fabric:100%Polyster. The fabric is comfortable for skin.\\n\\nOccasion: The dress is perfect for Halloween, Carnival, Festival, Party, Club, Prom, Travel, Vacation, Casual Daily Wear, Weekend Sunday fun day, Streetwear, Dating in the early spring, fall and ', 'https://zapaka.ca/cdn/shop/products/CGZLZD220253_Black_1_first_70f5b17b-14a3-4d1b-8328-ffeac6d71fd8_1024x1024@2x.jpg?v=1651730054', 'Black Velvet V Neck Caftan Marocain', 120.99, 2),
(6, NULL, NULL, 'Fabric: Satin. The fabric is comfortable for skin.\\nOccasion: This dress perfect for engagement, wedding/beach wedding/semi formal wedding/formal farm wedding/summer wedding and military ball', 'https://zapaka.ca/cdn/shop/products/2CGZLZD22013_Yellow_1_first_74c6c82b-3b6a-4bcc-89e6-f356fa73f4e0_1024x1024@2x.jpg?v=1651729893', 'Dark Green Long Sleeves Caftan Marocain', 99.99, 2),
(7, NULL, NULL, 'Fabric: Satin. The fabric is comfortable for skin.\\n\\nOccasion: This dress perfect for engagement, wedding/beach wedding/semi formal wedding/formal farm wedding/summer wedding and military ball.', 'https://zapaka.ca/cdn/shop/products/CGZLZD22006_Royal_Blue_1_59c11aea-6f85-4e50-8da2-a8b19e9364df_1024x1024@2x.jpg?v=1651729776', 'Lavender Long Sleeves Moroccan Kaftan', 115.97, 2),
(8, NULL, NULL, 'Fabric: Polyester!. The fabric is comfortable for skin.\\n\\nPackage Contents: : 1x Women Dress.\\n\\nOccasion: Whether you are dressing it for a vintage wedding party, prom, evening party or any other occasions, this sophisticated vintage dress will be your ', 'https://zapaka.ca/cdn/shop/products/CGZLZD22011_Light_Blue_1_first_ac27cce0-f58a-4552-84b2-597068525324_720x.jpg?v=1651729834', 'Orange Batwing Sleeves Moroccan Kaftan', 149.99, 4),
(9, NULL, NULL, 'Fabric: Polyester. The fabric is comfortable for skin.\\n\\nOccasion: The unique and exquisite sequins embroidery embellished this 1920s flapper dress, which is perfect for Great Gatsby Parties, Weddings, Proms or any other Special Occasions! Flapper your w', '\"https://zapaka.ca/cdn/shop/products/CGZLZD220249_Grey_Blue_1_first_a92edcdb-8455-4e5e-845a-1bfd4af54bfa_1024x1024@2x.jpg?v=1651730131', 'Blue Hooded Long Sleeves Moroccan Kaftan', 45.99, 3),
(11, NULL, NULL, 'Fabric: Tulle. The fabric is comfortable for skin.\\n\\nOccasion: This beautiful dress is perfect for the holidays such as Christmas, Thanksgiving, Valentine\'s Day, or any special occasion event such as a wedding or birthday party. Several sizes make this a', 'https://cdn.shopify.com/s/files/1/0310/5705/1693/products/CGZLZD22012_Grey_1_first_cc36cccc-586a-4682-8502-4d5d28eac08a_x600.jpg?v=1651729845', 'Sheath Spaghetti Straps Pink Sequins Short Graduation Dress', 250.99, 3),
(12, NULL, NULL, 'Fabric: Polyester. The fabric is comfortable for skin.\\n\\nPackage Contents: 1x Women Dress.\\n\\nOccasion: Whether you are dressing it for a vintage wedding party, prom, evening party or any other occasions, this vintage dress will be your lovely partner.', 'https://cdn.shopify.com/s/files/1/0310/5705/1693/products/CGZLZD220252_Dark_Green_1_first_42362305-295c-4f44-aceb-d549ebcfd568_x600.jpg?v=1651730081', 'Grey Blue Cold Shoulder Moroccan Kaftan', 170.99, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'CUSTOMER'),
(3, 'CUSTOMER'),
(4, 'CUSTOMER');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `dtype` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`dtype`, `id`, `password`, `username`) VALUES
('', 1, '$2a$10$hbHc24cMFbFz0zTGTfo1aOEoLCpmcEK5R1AIYImOsT5cUchFP/o9W', 'adil'),
('User', 2, '$2a$10$ahAI/94rJ04CxM5m2YdMx.sdtSpaG/11gWQK5Y3BlC./Q2TaVoJBi', 'adam'),
('User', 4, '$2a$10$QEjTBdzbd.SaiYcnsCwseuuse1HdKQeobqUersTDs9P8rFvjwXMK6', 'aya');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 3),
(4, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  ADD KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK624gtjin3po807j3vix093tlf` (`customer_id`);

--
-- Index pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ORDER_DETAIL_ORDER_FK` (`order_id`),
  ADD KEY `ORDER_DETAIL_PRODUCT_FK` (`product_id`);

--
-- Index pour la table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owner_roles`
--
ALTER TABLE `owner_roles`
  ADD KEY `FK8toij60eln8kpkpficj7k8d9p` (`roles_id`),
  ADD KEY `FKrhiyubb8qu3iv7scpcmj7g4ar` (`owner_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK624gtjin3po807j3vix093tlf` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Contraintes pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `ORDER_DETAIL_ORDER_FK` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ORDER_DETAIL_PRODUCT_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `owner_roles`
--
ALTER TABLE `owner_roles`
  ADD CONSTRAINT `FK8toij60eln8kpkpficj7k8d9p` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKrhiyubb8qu3iv7scpcmj7g4ar` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
