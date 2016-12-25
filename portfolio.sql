-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2016 at 11:28 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `goodiegood`
--

CREATE TABLE `goodiegood` (
  `itemID` int(20) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `itemDescription` text NOT NULL,
  `itemPrice` decimal(9,2) NOT NULL,
  `itemImage` varchar(30) NOT NULL,
  `discount` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goodiegood`
--

INSERT INTO `goodiegood` (`itemID`, `itemName`, `itemDescription`, `itemPrice`, `itemImage`, `discount`) VALUES
(1, 'Nexus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '12.98', 'Nexus.jpg', 30),
(2, 'Samsung', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '773.77', 'Samsung.jpg', 19),
(3, 'NoIdea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '77.07', 'NoIdea.jpg', 92),
(4, 'iPhone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '1.00', 'iPhone.jpg', 13),
(5, 'Huawei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '3000.98', 'Huawei.jpg', 99),
(6, 'Nokia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '54.24', 'Nokia.jpg', 0),
(7, 'Asus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac posuere dui. Nulla egestas nisi quis lorem luctus feugiat. Curabitur iaculis ornare est. Ut nisi nisl, vehicula eu erat ac, vehicula ornare diam. Sed orci orci, tristique et commodo eget, ultrices in nulla. Donec facilisis condimentum sollicitudin. Sed pulvinar scelerisque molestie. Vestibulum luctus mi et diam bibendum rutrum. Curabitur vitae nulla ut nulla ornare aliquam eu vitae urna. Nulla pellentesque magna mauris, id vestibulum justo ultrices sit amet. Etiam vitae sem sit amet justo egestas varius placerat nec metus. Fusce ut ante quis lacus vulputate consequat. Mauris dictum varius elit id tincidunt. Nullam mi nisi, feugiat eu lacinia eu, facilisis nec odio. Proin dapibus lectus id accumsan rutrum.\r\n\r\nAenean facilisis odio ac urna auctor, ut auctor augue faucibus. Nulla egestas orci tincidunt, commodo turpis eu, faucibus ante. Duis ultricies tempus nunc, in efficitur lorem pulvinar a. Vivamus consequat nibh augue, id pretium ex ultrices vitae. Nunc convallis congue fringilla. Nullam ullamcorper sodales ultrices. Proin at scelerisque lacus.\r\n\r\nQuisque sit amet erat orci. Vivamus consectetur leo ut dui pretium, eget fermentum diam consectetur. Ut fermentum metus ac tincidunt lacinia. Fusce eget auctor eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in dui sed nisl convallis semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin lacinia ex vitae feugiat rutrum. Sed at elit commodo, sagittis lectus in, congue nunc. Nulla lacus nisi, suscipit sed eros tempus, congue rhoncus ligula. Maecenas ultrices tellus ut eros pretium, in congue libero molestie. Proin efficitur felis sit amet risus ultricies bibendum. Pellentesque eu scelerisque massa, non sagittis lectus.\r\n\r\nProin pretium a nulla sit amet lobortis. Nam nec augue nec dui laoreet cursus. Proin sed eros varius, fringilla nunc vitae, vestibulum purus. Aenean ac nibh sem. Donec commodo malesuada neque sed bibendum. Pellentesque ac neque lacus. Aliquam id sapien ut eros blandit elementum. In hac habitasse platea dictumst. Donec sit amet porta velit.\r\n\r\nCras cursus ligula erat, nec viverra ex ultrices ac. Phasellus vestibulum ut nisi eu consectetur. Quisque non est eu quam dignissim facilisis id sed urna. Nulla facilisi. Fusce id dignissim metus. Cras ac lacinia felis, et pellentesque elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc a maximus libero. Donec interdum, orci non condimentum pellentesque, nisl nibh blandit diam, quis posuere nibh dolor at neque. Mauris ac iaculis sem. Nam quis fringilla nunc. Curabitur lacinia, sem egestas dictum aliquet, mauris dolor mattis turpis, ac tempus risus purus vel sem.', '75.46', 'Asus.jpg', 65);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `userID` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`userID`, `password`, `email`, `fullname`, `address`) VALUES
(1, 'notadmin', 'admin@not.baam', 'woa woa the admin', 'anywhere ~!@#$%^&*()_+ then everywhere'),
(2, 'admin', 'simhedi90@gmail.com', 'Hedi Sim', 'just a village boy living in earth'),
(3, 'two packs', 'toe@pac.com', 'too packed', 'cemetary'),
(4, '123', 'testing@testing.com', 'trying still', 'making making');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goodiegood`
--
ALTER TABLE `goodiegood`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goodiegood`
--
ALTER TABLE `goodiegood`
  MODIFY `itemID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
