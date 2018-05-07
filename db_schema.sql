Create database cs581_rideshare;

use cs581_rideshare; 

CREATE TABLE `trip_details` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_date` date DEFAULT NULL COMMENT 'Date the request was generated',
  `pickup_time` time DEFAULT NULL COMMENT 'Time the request was generated',
  `dropoff_time` time DEFAULT NULL COMMENT 'TIme the request was dropped',
  `passenger_count` int(11) NOT NULL,
  `trip_distance` decimal(4,2) NOT NULL,
  `pickup_latitude` decimal(12,10) DEFAULT NULL,
  `pickup_longitude` decimal(12,10) DEFAULT NULL,
  `dropoff_latitude` decimal(12,10) NOT NULL,
  `dropoff_longitude` decimal(12,10) NOT NULL,
  `distance` varchar(12) DEFAULT '200',
  `travel_time` varchar(10) DEFAULT '300',
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1044837 DEFAULT CHARSET=utf8;

CREATE TABLE `user_preferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `tripId` int(11) NOT NULL,
  `number_of_pools` int(1) DEFAULT NULL,
  `pools_remaining` int(1) DEFAULT '0',
  `pref1_score` int(2) DEFAULT NULL,
  `pref2_score` int(2) DEFAULT NULL,
  `pref3_score` int(2) DEFAULT NULL,
  `total_score` int(2) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `tripd_fk_idx` (`tripId`),
  CONSTRAINT `tripd_fk` FOREIGN KEY (`tripId`) REFERENCES `trip_details` (`trip_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=964513 DEFAULT CHARSET=utf8;
