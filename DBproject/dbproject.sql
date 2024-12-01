--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `AvailableCopies` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`BookID`),
  CONSTRAINT `CHK_AvailableCopies` CHECK ((`AvailableCopies` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'자유로부터의 도피','에리히 프롬','철학',5),(2,'1984','조지 오웰','소설',3),(3,'동물 농장','조지 오웰','소설',2),(4,'총, 균, 쇠','제레드 다이아몬드','역사',4),(5,'사피엔스','유발 하라리','역사',6),(6,'호모 데우스','유발 하라리','역사',3),(7,'정의란 무엇인가','마이클 샌델','철학',7),(8,'생각의 탄생','로버트 루트번스타인','창의성',5),(9,'코스모스','칼 세이건','과학',4),(10,'시간의 역사','스티븐 호킹','과학',3),(11,'브리짓 존스의 일기','헬렌 필딩','소설',2),(12,'모비딕','허먼 멜빌','문학',1),(13,'작은 아씨들','루이자 메이 올컷','문학',5),(14,'위대한 개츠비','F. 스콧 피츠제럴드','문학',6),(15,'데미안','헤르만 헤세','문학',4),(16,'파리의 도서관','제닛 스케슬린 찰스','소설',3),(17,'체르노빌의 목소리','스베틀라나 알렉시예비치','역사',4),(18,'사랑의 기술','에리히 프롬','철학',2),(19,'미움받을 용기','기시미 이치로','자기계발',5),(20,'하버드 첫 강의 시간관리 수업','리샹룽','자기계발',3),(21,'돈으로 살 수 없는 것들','마이클 샌델','경제',4),(22,'왜 나는 너를 사랑하는가','알랭 드 보통','문학',2),(23,'일리','알랭 드 보통','소설',1),(24,'데이터베이스 설계와 구현','엘리자베스 요흘','컴퓨터',3),(25,'클린 코드','로버트 C. 마틴','컴퓨터',6),(26,'자바의 정석','남궁성','컴퓨터',5),(27,'모던 자바스크립트','이선 브라운','컴퓨터',3),(28,'파이썬 코딩의 기술','브렛 슬라킨','컴퓨터',4),(29,'리팩터링','마틴 파울러','컴퓨터',2),(30,'운영체제의 이해','윌리엄 스탈링스','컴퓨터',1),(31,'The Pragmatic Programmer','앤드류 헌트','컴퓨터',2),(32,'Effective C++','스콧 마이어스','컴퓨터',3),(33,'Clean Architecture','로버트 C. 마틴','컴퓨터',5),(34,'Machine Learning Yearning','앤드류 응','컴퓨터',4),(35,'Deep Learning','이안 굿펠로우','컴퓨터',3),(36,'Introduction to Algorithms','토머스 코멘','컴퓨터',2),(37,'컴퓨터 네트워킹','제임스 쿠로세','컴퓨터',1),(38,'알고리즘 문제 해결 전략','구종만','컴퓨터',3),(39,'Do It! 점프 투 파이썬','박응용','컴퓨터',4),(40,'혼자 공부하는 데이터베이스','정경훈','컴퓨터',2),(41,'불편한 편의점','김호연','소설',5),(42,'아몬드','손원평','소설',3),(43,'행복의 기원','서은국','심리학',4),(44,'직관의 힘','게리 클라인','심리학',2),(45,'심리학의 모든 것','리처드 와이즈먼','심리학',3),(46,'차라투스트라는 이렇게 말했다','프리드리히 니체','철학',6),(47,'인간 본성에 대하여','데이비드 흄','철학',4),(48,'논리와 논증','더글라스 월튼','철학',2),(49,'철학의 위안','보에티우스','철학',3),(50,'공산당 선언','칼 마르크스','철학',5),(51,'권력과 책임','한스 요나스','철학',1),(52,'기억의 전쟁','박찬운','역사',4),(53,'역사의 종말','프랜시스 후쿠야마','역사',3),(54,'초격차','권오현','자기계발',5),(55,'유리멘탈을 위한 심리책','남인숙','자기계발',2),(56,'인간관계론','데일 카네기','자기계발',3),(57,'지적 대화를 위한 넓고 얕은 지식','채사장','철학',6),(58,'마법천자문 1권','아울북','어린이',10),(59,'마법천자문 2권','아울북','어린이',8),(60,'토익 점수 올리기','ETS','교육',3),(61,'일본어 첫걸음','일본어학회','언어',4),(62,'하버드 비즈니스 리뷰','하버드 비즈니스 스쿨 출판부','경영',7),(63,'좋은 기업, 좋은 일터','김인규','경영',5),(64,'상처받지 않는 연습','박상미','심리학',3),(65,'눈에 띄는 광고','어드버타이징','마케팅',6),(66,'월급쟁이의 경영학','정영화','경영',4),(67,'세상에서 가장 쉬운 실리콘밸리의 생각법','정정희','경영',3),(68,'위대한 기업','제임스 콜린스','경영',5),(69,'리더의 품격','김형원','자기계발',4),(70,'가장 중요한 것은 보이지 않는다','앙투안 드 생텍쥐페리','문학',6),(71,'세계사','피터 하훔','역사',2),(72,'마케팅의 4P','필립 코틀러','마케팅',3),(73,'문화탐방','로버트 E. 파크','사회학',2),(74,'어떻게 살아야 할지 모르겠다면','홍혜정','자기계발',3),(75,'여행의 기술','유승무','여행',5),(76,'생각의 기술','가드너 하퍼','자기계발',4),(77,'죽음의 수용소에서','빅터 프랭클','심리학',6),(78,'인공지능의 미래','리차드 소울','과학',5),(79,'프로그래밍 언어론','애드워드 데이비스','컴퓨터',4),(80,'프리드리히 대공','크리스티안 하이로','문학',3),(81,'패스트 앤 슬로우','대니얼 카너먼','심리학',7),(82,'불완전한 사회','칼로렌스','사회학',2),(83,'소설의 법칙','루이자 메이 올컷','문학',5),(84,'행복한 삶의 과학','마틴 셀리그만','심리학',6),(85,'진짜 성격의 비밀','이병승','심리학',4),(86,'자기계발의 기술','존 우드','자기계발',3),(87,'AI와 머신러닝','박상욱','컴퓨터',5),(88,'소프트웨어 개발의 기술','다이앤 쏜슨','컴퓨터',6),(89,'IT 트렌드 분석','최상수','컴퓨터',2),(90,'프로그래밍 기초','양재운','컴퓨터',4),(91,'윤리학','제임스 레이','철학',3),(92,'기획자의 기획법','박은선','자기계발',5),(93,'마인드셋','캐롤 드웩','심리학',6),(94,'의사소통의 기술','소냐 리베라','자기계발',5),(95,'굿바이 소비사회','임상수','사회학',4),(96,'마케팅의 미래','소피 타일러','마케팅',3),(97,'개발자의 길','윤석민','컴퓨터',4),(98,'코딩의 철학','임상수','컴퓨터',6),(99,'디지털 트랜스포메이션','윤혜영','경영',5),(100,'AI와 빅데이터','이영훈','과학',3),(101,'디지털 마케팅','미셸 스미스','마케팅',5),(102,'정신의 기초','한미정','심리학',2),(103,'디지털 시대의 공부법','정진호','교육',4),(104,'세상에서 가장 재미있는 책','하상호','사회학',6),(105,'왜 나는 너를 사랑하는가','알랭 드 보통','문학',5);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowrecords`
--

DROP TABLE IF EXISTS `borrowrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowrecords` (
  `BorrowID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `BookID` int NOT NULL,
  `BorrowDate` date NOT NULL,
  `DueDate` date NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  PRIMARY KEY (`BorrowID`),
  KEY `UserID` (`UserID`),
  KEY `BookID` (`BookID`),
  CONSTRAINT `borrowrecords_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `borrowrecords_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  CONSTRAINT `CHK_BorrowDates` CHECK ((`BorrowDate` < `DueDate`))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowrecords`
--

LOCK TABLES `borrowrecords` WRITE;
/*!40000 ALTER TABLE `borrowrecords` DISABLE KEYS */;
INSERT INTO `borrowrecords` VALUES (1,5,12,'2024-10-01','2024-10-15','2024-10-14'),(2,8,18,'2024-10-02','2024-10-16',NULL),(3,3,8,'2024-10-03','2024-10-17','2024-10-16'),(4,2,5,'2024-10-04','2024-10-18','2024-10-17'),(5,6,20,'2024-10-05','2024-10-19',NULL),(6,11,1,'2024-10-06','2024-10-20','2024-10-19'),(7,12,4,'2024-10-07','2024-10-21',NULL),(8,1,2,'2024-10-08','2024-10-22','2024-10-21'),(9,14,7,'2024-10-09','2024-10-23','2024-10-22'),(10,10,30,'2024-10-10','2024-10-24',NULL),(11,7,25,'2024-10-11','2024-10-25','2024-10-24'),(12,9,3,'2024-10-12','2024-10-26',NULL),(13,4,15,'2024-10-13','2024-10-27','2024-10-26'),(14,13,10,'2024-10-14','2024-10-28',NULL),(15,17,14,'2024-10-15','2024-10-29',NULL),(16,20,21,'2024-10-16','2024-10-30','2024-10-29'),(17,15,9,'2024-10-17','2024-10-31',NULL),(18,19,22,'2024-10-18','2024-11-01','2024-10-31'),(19,16,11,'2024-10-19','2024-11-02',NULL),(20,18,19,'2024-10-20','2024-11-03','2024-11-02'),(21,21,23,'2024-10-21','2024-11-04',NULL),(22,22,26,'2024-10-22','2024-11-05','2024-11-04'),(23,23,28,'2024-10-23','2024-11-06',NULL),(24,24,27,'2024-10-24','2024-11-07','2024-11-06'),(25,25,13,'2024-10-25','2024-11-08',NULL),(26,28,17,'2024-10-26','2024-11-09','2024-11-08'),(27,26,29,'2024-10-27','2024-11-10',NULL),(28,29,24,'2024-10-28','2024-11-11','2024-11-10'),(29,30,16,'2024-10-29','2024-11-12',NULL),(30,13,10,'2024-10-30','2024-11-13','2024-11-12'),(31,12,4,'2024-10-31','2024-11-14',NULL);
/*!40000 ALTER TABLE `borrowrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `BookID` int NOT NULL,
  `ReservationDate` date NOT NULL,
  `QueueNumber` int NOT NULL,
  PRIMARY KEY (`ReservationID`),
  UNIQUE KEY `UserID` (`UserID`,`BookID`),
  KEY `BookID` (`BookID`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,1,5,'2024-12-01',1),(2,2,5,'2024-12-01',2),(3,3,8,'2024-12-02',1),(4,4,8,'2024-12-02',2),(5,5,8,'2024-12-02',3),(6,7,15,'2024-12-03',1),(7,11,9,'2024-12-05',1);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `IsAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `MembershipStatus` enum('정상','연체') DEFAULT '정상',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'김민수','minsu01@example.com','01012345601','0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e',0,'정상'),(2,'이영희','younghee02@example.com','01012345602','6cf615d5bcaac778352a8f1f3360d23f02f34ec182e259897fd6ce485d7870d4',0,'정상'),(3,'박철수','chulsoo03@example.com','01012345603','5906ac361a137e2d286465cd6588ebb5ac3f5ae955001100bc41577c3d751764',0,'정상'),(4,'최수진','soojin04@example.com','01012345604','b97873a40f73abedd8d685a7cd5e5f85e4a9cfb83eac26886640a0813850122b',0,'정상'),(5,'정다은','daeun05@example.com','01012345605','8b2c86ea9cf2ea4eb517fd1e06b74f399e7fec0fef92e3b482a6cf2e2b092023',0,'정상'),(6,'한지훈','jihoon06@example.com','01012345606','598a1a400c1dfdf36974e69d7e1bc98593f2e15015eed8e9b7e47a83b31693d5',0,'연체'),(7,'김서연','seoyeon07@example.com','01012345607','5860836e8f13fc9837539a597d4086bfc0299e54ad92148d54538b5c3feefb7c',0,'정상'),(8,'이도현','dohyun08@example.com','01012345608','57f3ebab63f156fd8f776ba645a55d96360a15eeffc8b0e4afe4c05fa88219aa',0,'연체'),(9,'박지우','jiwoo09@example.com','01012345609','9323dd6786ebcbf3ac87357cc78ba1abfda6cf5e55cd01097b90d4a286cac90e',0,'연체'),(10,'장민호','minho10@example.com','01012345610','aa4a9ea03fcac15b5fc63c949ac34e7b0fd17906716ac3b8e58c599cdc5a52f0',0,'연체'),(11,'오하늘','haneul11@example.com','01012345611','53d453b0c08b6b38ae91515dc88d25fbecdd1d6001f022419629df844f8ba433',0,'정상'),(12,'윤지아','jia12@example.com','01012345612','b3d17ebbe4f2b75d27b6309cfaae1487b667301a73951e7d523a039cd2dfe110',0,'연체'),(13,'서지훈','jihun13@example.com','01012345613','48caafb68583936afd0d78a7bfd7046d2492fad94f3c485915f74bb60128620d',0,'연체'),(14,'이승기','seunggi14@example.com','01012345614','c6863e1db9b396ed31a36988639513a1c73a065fab83681f4b77adb648fac3d6',0,'정상'),(15,'김나영','nayoung15@example.com','01012345615','c63c2d34ebe84032ad47b87af194fedd17dacf8222b2ea7f4ebfee3dd6db2dfb',0,'연체'),(16,'박성준','sungjoon16@example.com','01012345616','17a3379984b560dc311bb921b7a46b28aa5cb495667382f887a44a7fdbca7a7a',0,'연체'),(17,'정예원','yewon17@example.com','01012345617','69bfb918de05145fba9dcee9688dfb23f6115845885e48fa39945eebb99d8527',0,'연체'),(18,'최도훈','dohun18@example.com','01012345618','d2042d75a67922194c045da2600e1c92ff6d87e8fb6e0208606665f2d1dfa892',0,'정상'),(19,'한유진','yujin19@example.com','01012345619','5790ac3d0b8ae8afc72c2c6fb97654f2b73651c328de0a3b74854ade562dd17a',0,'정상'),(20,'이준혁','junhyuk20@example.com','01012345620','7535d8f2d8c35d958995610f971287288ab5e8c82a3c4fdc2b6fb5d757a5b9f8',0,'정상'),(21,'김다현','dahyun21@example.com','01012345621','91a9ef3563010ea1af916083f9fb03a117d4d0d2a697f82368da1f737629f717',0,'연체'),(22,'이시우','siwoo22@example.com','01012345622','d23c1038532dc71d0a60a7fb3d330d7606b7520e9e5ee0ddcdb27ee1bd5bc0cd',0,'정상'),(23,'박예림','yerim23@example.com','01012345623','8b807aa0505a00b3ef49e26a2ade8e31fcd6c700d1a3aeee971b49d73da8e8ff',0,'연체'),(24,'정현우','hyunwoo24@example.com','01012345624','fc8a9296208a0b281f84690423c5d77785e493f435e6292cc322840f543729d3',0,'정상'),(25,'최민아','mina25@example.com','01012345625','0b544d6d8da1d1af25318e97e0ac5f6bc70bba49919463dc0074ede01a49d381',0,'연체'),(26,'윤서준','seojun26@example.com','01012345626','869f2a98b0e3a6ea928ff0542330ea3c1e0ff8591801693350f1fc3f1e57e4c5',0,'연체'),(27,'한가은','gaeun27@example.com','01012345627','9c7568513b9c85e73f3650c8b00e3259501096ccee9d3dbdae6ff5e84aabe3af',0,'정상'),(28,'이도경','dokyung28@example.com','01012345628','6f5ea1c4acc7a563ea8cb3381a55f0183a2394d679ebb7db8312e047bbf87e0d',0,'정상'),(29,'박지원','jiwon29@example.com','01012345629','48a94846b2a7386432b90ad13bcf9c66f1efdd3a97e0e14968c262c412fe22c8',0,'정상'),(30,'김태민','taemin30@example.com','01012345630','7c682dea8e934e04343374e3d25cd51edce9cbeb47f7034296052cb5cd6bed84',0,'연체'),(31,'test','test','01000000000','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08',1,'정상');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
