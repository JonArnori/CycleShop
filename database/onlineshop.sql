-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 04:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET
SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
AUTOCOMMIT = 0;
START TRANSACTION;
SET
time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info`
(
    `admin_id`       int(10) NOT NULL,
    `admin_name`     varchar(100) NOT NULL,
    `admin_email`    varchar(300) NOT NULL,
    `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands`
(
    `brand_id`    int(100) NOT NULL,
    `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`)
VALUES (1, 'Google Pixel'),
       (2, 'Samsung'),
       (3, 'Apple'),
       (4, 'Huawei'),
       (5, 'LG'),
       (6, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart`
(
    `id`      int(10) NOT NULL,
    `p_id`    int(10) NOT NULL,
    `ip_add`  varchar(250) NOT NULL,
    `user_id` int(10) DEFAULT NULL,
    `qty`     int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`)
VALUES (6, 26, '::1', 4, 1),
       (9, 10, '::1', 7, 1),
       (10, 11, '::1', 7, 1),
       (11, 45, '::1', 7, 1),
       (48, 72, '::1', 3, 0),
       (49, 60, '::1', 8, 1),
       (50, 61, '::1', 8, 1),
       (71, 61, '127.0.0.1', -1, 1),
       (161, 99, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories`
(
    `cat_id`    int(100) NOT NULL,
    `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`)
VALUES (1, 'SMARTPHONES'),
       (2, 'SMARTWATCHES'),
       (3, 'ACCESSORIES\r\n'),
       (4, 'POWER BANKS');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info`
(
    `email_id` int(100) NOT NULL,
    `email`    text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`)
VALUES (3, 'admin@gmail.com'),
       (4, 'arianrexhepiii@gmail.com'),
       (5, 'arijan-bossi@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs`
(
    `id`      int(11) NOT NULL,
    `user_id` varchar(50) NOT NULL,
    `action`  varchar(50) NOT NULL,
    `date`    datetime    NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders`
(
    `order_id`   int(11) NOT NULL,
    `user_id`    int(11) NOT NULL,
    `product_id` int(11) NOT NULL,
    `qty`        int(11) NOT NULL,
    `trx_id`     varchar(255) NOT NULL,
    `p_status`   varchar(20)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`)
VALUES (1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
       (2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info`
(
    `order_id`   int(10) NOT NULL,
    `user_id`    int(11) NOT NULL,
    `f_name`     varchar(255) NOT NULL,
    `email`      varchar(255) NOT NULL,
    `address`    varchar(255) NOT NULL,
    `city`       varchar(255) NOT NULL,
    `state`      varchar(255) NOT NULL,
    `zip`        int(10) NOT NULL,
    `cardname`   varchar(255) NOT NULL,
    `cardnumber` varchar(20)  NOT NULL,
    `expdate`    varchar(255) NOT NULL,
    `prod_count` int(15) DEFAULT NULL,
    `total_amt`  int(15) DEFAULT NULL,
    `cvv`        int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`,
                           `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`)
VALUES (2, 26, 'arian rexhepi', 'arianrexhepiii@gmail.com', 'ciflik', 'ciflik', 'macedonia', 120023, 'arrrte nnee',
        '4455 4444 4555 5555', '11/21', 1, 35000, 516),
       (3, 26, 'arian rexhepi', 'arianrexhepiii@gmail.com', 'ciflik', 'ciflik', 'aaa', 122234, 'ajsdljd',
        '5455 6546 5451 5456', '12/20', 1, 479, 511);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products`
(
    `order_pro_id` int(10) NOT NULL,
    `order_id`     int(11) NOT NULL,
    `product_id`   int(11) NOT NULL,
    `qty`          int(15) DEFAULT NULL,
    `amt`          int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`)
VALUES (73, 1, 1, 1, 5000),
       (74, 1, 4, 2, 64000),
       (75, 1, 8, 1, 40000),
       (91, 2, 6, 1, 35000),
       (92, 3, 2, 1, 479);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products`
(
    `product_id`       int(100) NOT NULL,
    `product_cat`      int(100) NOT NULL,
    `product_brand`    int(100) NOT NULL,
    `product_title`    varchar(255) NOT NULL,
    `product_price`    int(100) NOT NULL,
    `product_desc`     text         NOT NULL,
    `product_image`    text         NOT NULL,
    `product_keywords` text         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`,
                        `product_image`, `product_keywords`)
VALUES (1, 2, 3, ' Apple Watch Series 6', 435,
        'Measure your blood oxygen level with a revolutionary new sensor and app. Take an ECG anytime, anywhere. See your fitness metrics at a glance with the enhanced Always-On Retina display. With Apple Watch Series 6 on your wrist, a healthier, more active, more connected life is within reach.',
        'appwatch.png', ' Apple Watch'),
       (2, 1, 3, 'iPhone 8 64 GB Space ', 479,
        'The iPhone 8 Plus is a new generation of iPhone. It is made of sturdy glass with a more robust frame made of an aluminum that is also used in space travel.',
        'iph8.png', 'Apple '),
       (3, 1, 3, 'iPhone X 256 GB ', 635,
        'This product is a comprehensively technically tested and reconditioned used device. The charger including cable and the headphones or headset are new and correspond to the scope of delivery of the original accessories. Note: This is the purchase of a used product. The limitation period for the warranty for used products is 1 year from the date of purchase.',
        'iphx.png', 'Apple '),
       (4, 1, 3, 'iPhone Xs 256 GB ', 840,
        'APPLE has done an impressive job with this high-end device: the iPhone XS smartphone!\r\nWhen designing the device, a space gray design was ultimately chosen, which ensures a particularly beautiful appearance.',
        'iphxs.png', 'Apple '),
       (5, 1, 3, 'iPhone 11 64 GB', 669,
        'Make an appointment quickly or have a chat with a loved one: The APPLE iPhone 11 smartphone enables communication anytime, anywhere.\r\nThe black design also gives the phone a high-quality look.\r\n\r\n',
        'iph11.png', 'Apple '),
       (6, 1, 3, 'iPhone 11 Pro 64 GB', 999,
        '5.8 \"SuperRetina XDR OLED display (14.7cm diagonal) 3\r\nÂ· Water and dust protection (4 meters up to 30 minutes, IP68) 2\r\n12Megapixel three-camera system with ultra-wide angle, wide-angle and telephoto lenses, night mode, portrait mode and 4K video up to 60fps\r\nÂ· 12 megapixel TrueDepth front camera with portrait mode, 4K video and slow motion\r\nÂ· FaceID for secure authentication and ApplePay\r\nA13Bionic Chip with 3rd generation NeuralEngine',
        'iph11pro.png', 'Apple '),
       (7, 1, 3, 'iPhone 12 mini', 799,
        'Almost too fast to be true.\r\nA14 Bionic, the fastest chip in a smartphone. An all-screen OLED display. And night mode on every camera.',
        'iph12mini.png', 'Apple '),
       (8, 1, 3, 'iPhone 12 Pro 5G', 1149,
        'So much. More quickly.\r\nA14 Bionic, the fastest chip in a smartphone. And a Pro camera system that takes low-light photography to the next level - with an even bigger leap on the iPhone 12 Pro Max .\r\n',
        'iph12pro.png', 'Apple '),
       (9, 1, 3, 'iPhone 12 Pro Max  5G', 1249,
        'So much. More quickly.\r\nA14 Bionic, the fastest chip in a smartphone. And a Pro camera system that takes low-light photography to the next level - with an even bigger leap on the iPhone 12 Pro Max .',
        'iph12promax.png', 'Apple '),
       (10, 1, 1, 'Google Pixel 3 64GB', 296,
        'With Google Pixel 3a, the clever Google Assistant is always at your side with advice and action. Whether you need to quickly write an email or have a question about the weather, traffic or a specific location - all you have to do is press both sides of the Pixel or say â€œOk Googleâ€ and the Assistant will take care of it.',
        'Pixel3.png', 'Google'),
       (11, 1, 1, 'Google Pixel 3a 64GB', 310,
        'But the camera of the Google Pixel 3a can do more than just take pictures, because thanks to Google Lens you always know during your travels which sight you have in front of the lens.',
        'pixel3a.png', 'Google'),
       (12, 1, 1, 'Google Pixel 4a 5G 64GB', 419,
        'Make an appointment quickly or have a chat with a loved one: the GOOGLE Pixel 4a smartphone with 5G enables communication anytime, anywhere.\r\nWhen designing the cell phone, the manufacturer opted for the tasteful Just Black color scheme.',
        'pixel4a.png', 'Google '),
       (13, 1, 1, 'Google Pixel 4 64GB ', 450,
        'Make an appointment quickly or have a chat with a loved one: the GOOGLE Pixel 4 smartphone enables communication anytime, anywhere.\r\nWhen designing the cell phone, the manufacturer opted for the tasteful Just Black color scheme.',
        'pixel4.png', 'Google '),
       (14, 1, 1, 'Google Pixel 5 128GB 5G', 629, 'The best Google phone yet', 'pixel5.png', 'Google '),
       (15, 1, 2, 'Samsung Galaxy S10 128 GB', 579,
        'The Galaxy S10 from the manufacturer SAMSUNG: Let yourself be convinced of the stunning design and high functionality!\r\nWhen designing the cell phone, the manufacturer opted for the tasteful color scheme in Prism Black.',
        'samsungs10.png', 'Samsung'),
       (16, 1, 2, 'Samsung Galaxy S10+ 128 GB', 599,
        'Infinity-O display with Dynamic AMOLED technology and HDR10 + for an impressive multimedia experience\r\nSmart camera with smart photo assistant and action cam video stabilization for professional recordings',
        'samsung10+.png', 'Samsung '),
       (17, 1, 4, 'HUAWEI P40 lite E 64 GB ', 151,
        'The HUAWEI P40 series is based on Android 10 AOSP (Android Open Source Project) and has the HUAWEI AppGallery. The HUAWEI AppGallery gives you access to the world of apps and services.',
        'hwp20.png', 'Huawei'),
       (18, 1, 5, 'LG VELVET 4G 128 GB Aurora', 369,
        'The display of the device (FHD +, POLED) ensures that you get a clear and detailed picture. The screen measures 6.8 inches and thus offers a good compromise between practicality and comfort. The smartphone has a number of pixels of 2,460 x 1,080 pixels and thus enables a good overview of all details.\r\nWhat technology is hidden inside?\r\nThe smartphone is equipped with the Android 10 operating system. Do you live a bit away from the next big city and still want fast mobile internet? With the VELVET 4G you can use the following standards: 2G (GSM), 3G (UMTS) and 4G (LTE).\r\n\r\n',
        'lga.png', 'LG'),
       (19, 1, 6, 'XIAOMI Redmi Note 8 Pro 128 GB', 169,
        'XIAOMI has done a convincing job with this high-end device: the Redmi Note 8 Pro smartphone!\r\nIn terms of color, the mobile phone was designed in Mineral Gray and is also convincing in terms of design.',
        'xioamire.png', 'Xiaomi'),
       (20, 2, 6, 'XIAOMI Mi Watch Lite', 57,
        'Compatible operating systems	Android, iOS\r\nsports	Gym, running, cycling, swimming, hiking\r\nRecords and display of	Distance, recovery time, speed / max, speed / lap / pace, heart rate zones, altitude / steps, calorie consumption, pulse, sleep duration, sleep phases / quality, steps, time / date',
        'xioamiwatch.png', 'Xiaomi '),
       (21, 2, 2, 'SAMSUNG Galaxy Watch', 179,
        'With its slim and frameless design, the Galaxy Watch Active presents itself as a smartwatch for an active lifestyle. It also offers a long battery life and a wide range of smart functions that can enrich your personal fitness program and everyday life. The sporty smartwatch is made of high quality materials. The aluminum watch body and the supplied fluororubber strap are light and robust.',
        'samwatch.png', 'Samsung watch'),
       (22, 2, 4, 'HUAWEI Watch GT 2', 156,
        'The Huawei Watch GT 2 is an ultra-thin sports smartwatch with a battery life of up to one week. It offers integrated intelligent functions such as B. Scientific sleep monitoring, fitness monitoring, heart rate monitoring, GPS functions and more. The light and modern design, the scratch resistance, the fitness advice and the precise health monitoring are perfect for professional athletes for daily leisure and professional sports support.',
        'hwatch.png', 'Huawei '),
       (23, 3, 3, 'iPhone 12, iPhone 12 Pro Case', 55, '.', 'applecase.png', 'Apple  '),
       (24, 3, 3, 'APPLE MX0K2ZM / A, cable, 1 m, white', 24, '.', 'applecable.png', 'Apple  '),
       (25, 3, 7, 'SONY MDR-XB550AP, On-Ear Headphones White', 55, '.', 'sony.png', 'Sony'),
       (26, 3, 7, 'ISY IPG 5082-3D protective glass (for Huawei P40)', 23, '.', 'glass.png', 'Huawei  '),
       (27, 3, 1, 'GOOGLE GA01281, Google, Pixel 4', 35, '.', 'pixlecase4.png', 'Google '),
       (28, 3, 3, 'APPLE MMTN2ZM / A EarPods', 15, '.', 'earpods.png', 'Apple  '),
       (29, 4, 8, 'ISY IPP-10000-C-BK Powerbank 10,000 mAh', 10, '.', 'isypower.png', 'isy'),
       (30, 4, 8, 'FRESH N REBEL 2PB12000IG Powerbank 12,000 mAh', 14, '.', 'freshpower.png', 'powerbank');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info`
(
    `user_id`    int(10) NOT NULL,
    `first_name` varchar(100) NOT NULL,
    `last_name`  varchar(100) NOT NULL,
    `email`      varchar(300) NOT NULL,
    `password`   varchar(300) NOT NULL,
    `mobile`     varchar(10)  NOT NULL,
    `address1`   varchar(300) NOT NULL,
    `address2`   varchar(11)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`)
VALUES (26, 'arian', 'rexhepi', 'arianrexhepiii@gmail.com', 'Arian.189', '0707992744', 'ciflik', 'ciflik'),
       (27, 'arian', 'Rexhepi', 'arianrexhepiii@gmail.com', 'Arian.19', '0038970799', 'tetovo ', 'zhelino');

--
-- Triggers `user_info`
--
DELIMITER
$$
CREATE TRIGGER `after_user_info_insert`
    AFTER INSERT
    ON `user_info`
    FOR EACH ROW
BEGIN
    INSERT INTO user_info_backup
    VALUES (new.user_id, new.first_name, new.last_name, new.email, new.password, new.mobile, new.address1,
            new.address2);
END $$
DELIMITER;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup`
(
    `user_id`    int(10) NOT NULL,
    `first_name` varchar(100) NOT NULL,
    `last_name`  varchar(100) NOT NULL,
    `email`      varchar(300) NOT NULL,
    `password`   varchar(300) NOT NULL,
    `mobile`     varchar(10)  NOT NULL,
    `address1`   varchar(300) NOT NULL,
    `address2`   varchar(11)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`,
                                `address2`)
VALUES (26, 'arian', 'rexhepi', 'arianrexhepiii@gmail.com', 'Arian.189', '0707992744', 'ciflik', 'ciflik'),
       (27, 'arian', 'Rexhepi', 'arianrexhepiii@gmail.com', 'Arian.19', '0038970799', 'tetovo ', 'zhelino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
    ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
    ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
    ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
    ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
    ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
    ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
    ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
    MODIFY `admin_id` int (10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
    MODIFY `brand_id` int (100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
    MODIFY `id` int (10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
    MODIFY `cat_id` int (100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
    MODIFY `email_id` int (100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
    MODIFY `id` int (11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
    MODIFY `order_id` int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
    MODIFY `order_id` int (10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
    MODIFY `order_pro_id` int (10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
    MODIFY `product_id` int (100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
    MODIFY `user_id` int (10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
    MODIFY `user_id` int (10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
    ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
    ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
