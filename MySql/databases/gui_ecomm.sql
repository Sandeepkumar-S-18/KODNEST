-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2025 at 04:10 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gui_ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_admin`
--

CREATE TABLE IF NOT EXISTS `ecomm_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(15) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` enum('active','block') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1003 ;

--
-- Dumping data for table `ecomm_admin`
--

INSERT INTO `ecomm_admin` (`ID`, `admin_name`, `password`, `status`) VALUES
(1001, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'active'),
(1002, 'sandeep', '00dcf16d903e5890aaba465b0b1ba51f', 'block');

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_order`
--

CREATE TABLE IF NOT EXISTS `ecomm_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` date DEFAULT NULL,
  `status` enum('cart','order_placed','order_shipped','delivered','canceled') DEFAULT 'cart',
  `payment_status` enum('paid','unpaid') DEFAULT 'unpaid',
  `payment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_productId` (`product_id`),
  KEY `fk_uId` (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ecomm_order`
--

INSERT INTO `ecomm_order` (`order_id`, `u_id`, `product_id`, `quantity`, `total_price`, `order_date`, `status`, `payment_status`, `payment_date`) VALUES
(1, 1012, 101, 3, '77.97', '2024-11-06', 'order_placed', 'unpaid', NULL),
(2, 1014, 158, 3, '74.97', '2024-11-06', 'cart', 'unpaid', NULL),
(3, 1016, 182, 1, '19999.00', '2024-11-06', 'cart', 'unpaid', NULL),
(4, 1016, 182, 2, '439978.00', '2024-11-06', 'cart', 'unpaid', NULL),
(5, 1012, 104, 2, '79.98', '2024-11-25', 'cart', 'unpaid', NULL),
(6, 1012, 103, 1, '59.99', '2024-11-25', 'cart', 'unpaid', NULL),
(7, 1012, 101, 1, '25.99', '2024-11-25', 'canceled', 'unpaid', NULL),
(8, 1016, 182, 1, '19999.00', '2024-11-25', 'cart', 'unpaid', NULL),
(9, 1012, 151, 1, '299.99', '2024-11-25', 'delivered', 'unpaid', NULL),
(10, 1012, 158, 1, '24.99', '2024-11-25', 'cart', 'unpaid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_product`
--

CREATE TABLE IF NOT EXISTS `ecomm_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `ecomm_product`
--

INSERT INTO `ecomm_product` (`product_id`, `name`, `description`, `price`, `quantity`, `category`, `created_at`, `updated_at`, `status`) VALUES
(101, 'Wireless Mouse', 'Ergonomic wireless mouse with a long battery life.', '25.99', 149, 'Electronics', '2023-01-15', '2024-11-25', 'active'),
(102, 'Bluetooth Headphones', 'Noise-cancelling over-ear headphones.', '89.99', 75, 'Electronics', '2023-02-20', '2023-02-20', 'active'),
(103, 'Gaming Keyboard', 'RGB mechanical keyboard with customizable keys.', '59.99', 119, 'Electronics', '2023-03-05', '2024-11-25', 'active'),
(104, 'USB-C Hub', 'Multi-port USB-C hub for laptops.', '39.99', 198, 'Accessories', '2023-03-22', '2024-11-25', 'active'),
(105, 'Smartphone Stand', 'Adjustable stand for smartphones and tablets.', '15.49', 180, 'Accessories', '2023-04-10', '2023-04-10', 'active'),
(106, 'Laptop Sleeve', 'Durable sleeve for 15-inch laptops.', '19.99', 90, 'Accessories', '2023-04-15', '2023-04-15', 'active'),
(107, 'Portable Charger', 'Power bank with fast charging capabilities.', '35.00', 110, 'Electronics', '2023-05-01', '2023-05-01', 'active'),
(108, 'LED Desk Lamp', 'Adjustable LED lamp with multiple brightness settings.', '45.99', 80, 'Home & Office', '2023-05-15', '2023-05-15', 'active'),
(109, 'Wireless Charger', 'Qi wireless charger compatible with most smartphones.', '29.99', 140, 'Electronics', '2023-06-01', '2023-06-01', 'active'),
(110, 'Fitness Tracker', 'Smart fitness watch with heart rate monitor.', '65.50', 60, 'Wearables', '2023-06-15', '2023-06-15', 'active'),
(111, 'Vacuum Cleaner', 'Robotic vacuum cleaner with smart mapping.', '299.99', 40, 'Home Appliances', '2023-07-01', '2023-07-01', 'active'),
(112, 'Air Purifier', 'Portable air purifier for cleaner air.', '149.99', 30, 'Home Appliances', '2023-07-10', '2023-07-10', 'active'),
(113, 'Instant Camera', 'Polaroid-style instant camera.', '79.99', 55, 'Photography', '2023-07-20', '2023-07-20', 'active'),
(114, 'Smart Speaker', 'Voice-controlled smart speaker with Bluetooth.', '99.99', 65, 'Electronics', '2023-08-01', '2023-08-01', 'active'),
(115, 'Electric Kettle', 'Fast-boil electric kettle with auto shut-off.', '39.99', 70, 'Kitchen', '2023-08-15', '2023-08-15', 'active'),
(116, 'Cast Iron Skillet', 'Durable skillet for all your cooking needs.', '49.99', 90, 'Kitchen', '2023-08-30', '2023-08-30', 'active'),
(117, 'Backpack', 'Stylish backpack with multiple compartments.', '45.00', 110, 'Fashion', '2023-09-10', '2023-09-10', 'active'),
(118, 'Sunglasses', 'Polarized sunglasses with UV protection.', '25.99', 130, 'Fashion', '2023-09-20', '2023-09-20', 'active'),
(119, 'Digital Watch', 'Stylish digital watch with fitness tracking.', '89.99', 50, 'Wearables', '2023-10-01', '2023-10-01', 'active'),
(120, 'Coffee Maker', 'Automatic drip coffee maker.', '79.99', 40, 'Kitchen', '2023-10-05', '2023-10-05', 'active'),
(121, 'Blender', 'High-speed blender for smoothies and more.', '55.00', 60, 'Kitchen', '2023-10-10', '2023-10-10', 'active'),
(122, 'Portable Speaker', 'Compact Bluetooth speaker with great sound.', '39.99', 100, 'Electronics', '2023-10-15', '2023-10-15', 'active'),
(123, 'Wireless Earbuds', 'True wireless earbuds with noise cancellation.', '99.99', 80, 'Electronics', '2023-10-20', '2023-10-20', 'active'),
(124, 'Outdoor Grill', 'Portable grill for outdoor cooking.', '199.99', 25, 'Outdoor', '2023-10-25', '2023-10-25', 'active'),
(125, 'Camping Tent', 'Waterproof camping tent for 4 people.', '129.99', 35, 'Outdoor', '2023-11-01', '2023-11-01', 'active'),
(126, 'Bluetooth Speaker', 'Rugged Bluetooth speaker with long battery life.', '79.99', 50, 'Electronics', '2023-11-05', '2023-11-05', 'active'),
(127, 'Yoga Mat', 'Non-slip yoga mat for comfort and stability.', '29.99', 150, 'Fitness', '2023-11-10', '2023-11-10', 'active'),
(128, 'Dumbbells', 'Adjustable dumbbells for home workouts.', '89.99', 45, 'Fitness', '2023-11-15', '2023-11-15', 'active'),
(129, 'Pet Bed', 'Comfortable bed for small to medium pets.', '35.00', 60, 'Pet Supplies', '2023-11-20', '2023-11-20', 'active'),
(130, 'Cat Litter Box', 'Self-cleaning litter box for cats.', '149.99', 20, 'Pet Supplies', '2023-11-25', '2023-11-25', 'active'),
(131, 'Dog Leash', 'Durable dog leash with ergonomic handle.', '15.99', 100, 'Pet Supplies', '2023-12-01', '2023-12-01', 'active'),
(132, 'Bicycle', 'Mountain bike with 21 gears.', '299.99', 30, 'Outdoor', '2023-12-05', '2023-12-05', 'active'),
(133, 'Running Shoes', 'Lightweight running shoes for all terrains.', '69.99', 75, 'Fashion', '2023-12-10', '2023-12-10', 'active'),
(134, 'T-Shirt', 'Cotton t-shirt available in various sizes.', '19.99', 200, 'Fashion', '2023-12-15', '2023-12-15', 'active'),
(135, 'Jeans', 'Comfortable jeans with a slim fit.', '49.99', 100, 'Fashion', '2023-12-20', '2023-12-20', 'active'),
(136, 'Winter Jacket', 'Warm jacket for cold weather.', '129.99', 40, 'Fashion', '2023-12-25', '2023-12-25', 'active'),
(137, 'Smartphone', 'Latest model smartphone with advanced features.', '699.99', 25, 'Electronics', '2024-01-01', '2024-01-01', 'active'),
(138, 'Tablet', '10-inch tablet with high resolution.', '299.99', 30, 'Electronics', '2024-01-05', '2024-01-05', 'active'),
(139, 'Smartwatch', 'Smartwatch with fitness tracking and notifications.', '199.99', 55, 'Wearables', '2024-01-10', '2024-01-10', 'active'),
(140, 'Electric Bike', 'Eco-friendly electric bike.', '799.99', 15, 'Outdoor', '2024-01-15', '2024-01-15', 'active'),
(141, 'Air Fryer', 'Healthy air fryer for low-fat cooking.', '89.99', 40, 'Kitchen', '2024-01-20', '2024-01-20', 'active'),
(142, 'Microwave Oven', 'Compact microwave oven with auto-cook features.', '129.99', 30, 'Kitchen', '2024-01-25', '2024-01-25', 'active'),
(143, 'Water Bottle', 'Reusable stainless steel water bottle.', '19.99', 150, 'Fitness', '2024-02-01', '2024-02-01', 'active'),
(144, 'Folding Chair', 'Portable folding chair for outdoor use.', '29.99', 80, 'Outdoor', '2024-02-05', '2024-02-05', 'active'),
(145, 'Portable Grill', 'Compact propane grill for camping.', '89.99', 40, 'Outdoor', '2024-02-10', '2024-02-10', 'active'),
(146, 'Flashlight', 'LED flashlight with multiple brightness settings.', '15.99', 100, 'Outdoor', '2024-02-15', '2024-02-15', 'active'),
(147, 'Digital Camera', 'High-resolution digital camera for photography.', '399.99', 25, 'Photography', '2024-02-20', '2024-02-20', 'active'),
(148, 'Tripod', 'Adjustable tripod for cameras and smartphones.', '49.99', 60, 'Photography', '2024-02-25', '2024-02-25', 'active'),
(149, 'Drone', 'Camera drone with HD video capabilities.', '499.99', 15, 'Photography', '2024-03-01', '2024-03-01', 'active'),
(150, 'Wireless Router', 'High-speed wireless router for home use.', '99.99', 50, 'Electronics', '2024-03-05', '2024-03-05', 'active'),
(151, 'Computer Monitor', '27-inch LED monitor with 4K resolution.', '299.99', 19, 'Electronics', '2024-03-10', '2024-11-25', 'active'),
(152, 'Gaming Console', 'Latest gaming console with 4K support.', '499.99', 10, 'Electronics', '2024-03-15', '2024-03-15', 'active'),
(153, 'E-Reader', 'Lightweight e-reader with built-in light.', '129.99', 30, 'Electronics', '2024-03-20', '2024-03-20', 'active'),
(154, 'Electric Toothbrush', 'Smart electric toothbrush with pressure sensor.', '49.99', 70, 'Health', '2024-03-25', '2024-03-25', 'active'),
(155, 'Skincare Set', 'Complete skincare set for all skin types.', '99.99', 45, 'Beauty', '2024-04-01', '2024-04-01', 'active'),
(156, 'Hair Dryer', 'Professional hair dryer with multiple heat settings.', '59.99', 55, 'Beauty', '2024-04-05', '2024-04-05', 'active'),
(157, 'Makeup Kit', 'Comprehensive makeup kit with essential tools.', '79.99', 35, 'Beauty', '2024-04-10', '2024-04-10', 'active'),
(158, 'Cookbook', 'Collection of recipes for home cooking.', '24.99', 149, 'Books', '2024-04-15', '2024-11-25', 'active'),
(159, 'Board Game', 'Fun family board game for all ages.', '39.99', 90, 'Toys', '2024-04-20', '2024-04-20', 'active'),
(160, 'Puzzle', '1000-piece jigsaw puzzle for relaxing afternoons.', '19.99', 100, 'Toys', '2024-04-25', '2024-04-25', 'active'),
(161, 'Action Figure', 'Collectible action figure from popular movie.', '29.99', 75, 'Toys', '2024-04-30', '2024-04-30', 'active'),
(162, 'Plush Toy', 'Soft plush toy for children.', '24.99', 120, 'Toys', '2024-05-05', '2024-05-05', 'active'),
(163, 'Electric Pressure Cooker', 'Multi-functional electric pressure cooker.', '89.99', 40, 'Kitchen', '2024-05-10', '2024-05-10', 'active'),
(164, 'Kitchen Scale', 'Digital kitchen scale for precise measurements.', '25.99', 100, 'Kitchen', '2024-05-15', '2024-05-15', 'active'),
(165, 'Sous Vide Cooker', 'Immersion circulator for sous vide cooking.', '129.99', 30, 'Kitchen', '2024-05-20', '2024-05-20', 'active'),
(166, 'Non-Stick Cookware Set', 'Durable non-stick cookware set for everyday use.', '99.99', 50, 'Kitchen', '2024-05-25', '2024-05-25', 'active'),
(167, 'Food Processor', 'Versatile food processor for meal prep.', '179.99', 35, 'Kitchen', '2024-05-30', '2024-05-30', 'active'),
(168, 'Ice Cream Maker', 'Homemade ice cream maker with easy operation.', '59.99', 25, 'Kitchen', '2024-06-01', '2024-06-01', 'active'),
(169, 'Hand Mixer', 'Powerful hand mixer with multiple speed settings.', '39.99', 70, 'Kitchen', '2024-06-05', '2024-06-05', 'active'),
(170, 'Blender Bottle', 'Shaker bottle with a whisk ball for protein shakes.', '14.99', 150, 'Fitness', '2024-06-10', '2024-06-10', 'active'),
(171, 'Yoga Block', 'Supportive foam block for yoga practice.', '19.99', 120, 'Fitness', '2024-06-15', '2024-06-15', 'active'),
(172, 'Resistance Bands', 'Set of resistance bands for strength training.', '29.99', 100, 'Fitness', '2024-06-20', '2024-06-20', 'active'),
(173, 'Fitness Mat', 'Thick mat for yoga and workouts.', '34.99', 90, 'Fitness', '2024-06-25', '2024-06-25', 'active'),
(174, 'Boxing Gloves', 'Durable boxing gloves for training.', '49.99', 60, 'Fitness', '2024-07-01', '2024-07-01', 'active'),
(175, 'Swimming Goggles', 'Anti-fog swimming goggles for comfort.', '19.99', 150, 'Sports', '2024-07-05', '2024-07-05', 'active'),
(176, 'Tennis Racket', 'Lightweight tennis racket for beginners.', '59.99', 40, 'Sports', '2024-07-10', '2024-07-10', 'active'),
(177, 'Soccer Ball', 'High-quality soccer ball for practice and games.', '24.99', 80, 'Sports', '2024-07-15', '2024-07-15', 'active'),
(178, 'Baseball Glove', 'Durable baseball glove for youth players.', '39.99', 70, 'Sports', '2024-07-20', '2024-07-20', 'active'),
(179, 'Hiking Backpack', 'Lightweight backpack for hiking trips.', '89.99', 30, 'Outdoor', '2024-07-25', '2024-07-25', 'active'),
(180, 'Camping Stove', 'Portable camping stove for outdoor cooking.', '49.99', 50, 'Outdoor', '2024-07-30', '2024-07-30', 'active'),
(181, 'Fishing Rod', 'Telescopic fishing rod for easy transport.', '39.99', 25, 'Outdoor', '2024-08-01', '2024-08-01', 'active'),
(182, 'Oppo a55', 'general purpose mobile phone with snapdragon processor.', '19999.00', 88, 'Electronics', '2024-11-06', '2024-11-25', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_user`
--

CREATE TABLE IF NOT EXISTS `ecomm_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `gmail` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `regon` date NOT NULL,
  `status` enum('active','block') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `gmail` (`gmail`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1019 ;

--
-- Dumping data for table `ecomm_user`
--

INSERT INTO `ecomm_user` (`u_id`, `u_name`, `password`, `address`, `city`, `gmail`, `mobile`, `regon`, `status`) VALUES
(1001, 'MasonHill', '8e4db8214a5a4a9e8efa209712c574b6', '123 Main St, New York, NY 10001', 'New York', 'masonhill@gmail.com', 9876543220, '2024-10-23', 'active'),
(1002, 'AvaGreen', '9f23dce5600cfe5a89d0bfd7c4e31819', '456 Maple Ave, Los Angeles, CA 90001', 'Los Angeles', 'avagreen@gmail.com', 9876543221, '2023-12-30', 'active'),
(1003, 'LucasMoore', '86320f141a103132ececf3dd79f0d6e8', '789 Oak St, Chicago, IL 60601', 'Chicago', 'lucasmoore@gmail.com', 9876543222, '2024-10-15', 'active'),
(1004, 'MiaTaylor', '086142a5d751c9186db42a098fe299d8', '101 Pine Rd, Houston, TX 77001', 'Houston', 'miataylor@gmail.com', 9876543223, '2024-09-13', 'active'),
(1005, 'JamesAnderson', '6fe6c8d4cb072ca033f12cc9537fe106', '202 Cedar Ln, Phoenix, AZ 85001', 'Phoenix', 'jamesanderson@gmail.com', 9876543224, '2024-09-30', 'active'),
(1006, 'AmeliaThomas', '37b596e47a595027c55f7c09069da0c7', '#303 Birch Blvd, Philadelphia, PA 19101', 'Philadelphia', 'ameliathomas@gmail.com', 9876543225, '2024-11-24', 'active'),
(1007, 'AlexanderLopez', '14476a1d3a812f4a3540e11199b69f5d', '404 Elm St, San Antonio, TX 78201', 'San Antonio', 'alexanderlopez@gmail.com', 9876543226, '2024-09-19', 'active'),
(1008, 'IsabellaKing', 'c61461114a5aa8d24c15883ed30bb7db', '505 Walnut Ave, San Diego, CA 92101', 'San Diego', 'isabellaking@gmail.com', 9876543227, '2024-11-01', 'active'),
(1009, 'BenjaminScott', 'bd51f9b7d0507ddb373d4dd1b2a906b1', '606 Chestnut St, Dallas, TX 75201', 'Dallas', 'benjaminscott@gmail.com', 9876543228, '2024-08-15', 'active'),
(1010, 'EmilyYoung', 'd1e929eb5e7c5fc1a92caf4e526fbe4f', '707 Spruce St, San Jose, CA 95101', 'San Jose', 'emilyyoung@gmail.com', 9876543229, '2024-10-17', 'active'),
(1011, 'Raju', '0de99dbac6f301dcadeb24ae57d976c7', '808 Palm Dr, Bengaluru, KA 560001', 'Bengaluru', 'raju@gmail.com', 8754632453, '2024-09-10', 'block'),
(1012, 'Sandeep S', 'ab7a2d5ae1eb7ed6c3559d4af42f75fa', '#909 Cypress St, Bengaluru, Karnataka,  560002', 'Bengaluru', 'sandeeps@gmail.com', 9756564787, '2024-11-23', 'active'),
(1013, 'Girish T', '5810d50ac00df3e5c87560a8ee901c73', '2436 Nambeesan Glens, Albuquerque, Dadar and Nagar Haveli 529 641, India', 'Mumbai', 'girisht@gmail.com', 9435632456, '2024-11-04', 'block'),
(1014, 'Kishore D', '990e5de5b3bd718d33048335cff5220b', '1111 Willow Ave, Bengaluru, KA 560004', 'Bengaluru', 'kishored@gmail.com', 9875673428, '2024-10-15', 'active'),
(1015, 'Raja R', '1e42b178f35cebc961c5686b7729da96', 'S/109, Kabir Cplx, Makarpura Road, Makarpura Road', 'Gujarat', 'rajar@gmail.com', 7546324536, '2024-11-03', 'active'),
(1016, 'Vignesh B', 'de46e74c232cca867d60ad115fbbda77', 'A-4c, Anugraha, 19 Nungambakkam High Road.', 'Chennai', 'vigneshb@gmail.com', 7654876549, '2024-11-06', 'active'),
(1017, 'Harshan S', '8a5c64cfd4fd3496d4750524dbea32f6', '#34, 1st Floor 1st Main New Extn, Kalasipalyam', 'Bengaluru', 'harshans@gmail.com', 7658645356, '2024-11-21', 'active'),
(1018, 'Girish P', 'b00bf93e87496aee11dd4ea12d682d90', '#107 Claudie Road, Hampton, New York 01392, United States', 'New York', 'girishp@gmail.com', 7654098734, '2024-11-24', 'active');
