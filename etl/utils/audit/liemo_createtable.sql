| gameuser | CREATE TABLE `gameuser` (
  `UserId` int(11) NOT NULL DEFAULT '0',
  `Pid` varchar(255) DEFAULT NULL,
  `Sex` bit(1) DEFAULT NULL,
  `RetailId` varchar(255) DEFAULT NULL,
  `UserStatus` int(11) DEFAULT NULL,
  `MsgState` bit(1) DEFAULT NULL,
  `MobileType` int(11) DEFAULT NULL,
  `ScreenX` smallint(6) DEFAULT NULL,
  `ScreenY` smallint(6) DEFAULT NULL,
  `ClientAppVersion` smallint(6) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `LoginDate` datetime DEFAULT NULL,
  `RealName` varchar(255) DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `Hobby` varchar(255) DEFAULT NULL,
  `Profession` varchar(255) DEFAULT NULL,
  `RoleIds` text,
  `GMPrivilege` tinyint(4) DEFAULT NULL,
  `RoleIdMap` text,
  `GiftBagIds` text,
  `LastLoginToken` varchar(255) DEFAULT NULL,
  `AgentId` int(11) DEFAULT NULL,
  `GameCoinLottery` text,
  `UserType` int(11) DEFAULT NULL,
  `PayNum` int(11) DEFAULT NULL,
  `RoleWelfareFundData` text,
  `OrderAmount` int(11) DEFAULT NULL,
  `VipLevel` int(11) DEFAULT NULL,
  `GiftUserState` int(11) DEFAULT NULL,
  `RetailUser` varchar(128) DEFAULT NULL,
  `PassportId` varchar(128) DEFAULT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `RoleId` int(11) DEFAULT '0',
  `LoginNum` varchar(128) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `Top` tinyint(4) DEFAULT '0',
  `Level` int(11) DEFAULT '0',
  `UID` varchar(32) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `RoleName` varchar(128) DEFAULT NULL,
  `Name` varchar(128) DEFAULT NULL,
  `RegTime` datetime DEFAULT NULL,
  `olastdate` datetime DEFAULT NULL,
  `ocreate` datetime DEFAULT NULL,
  `oviplevel` int(11) DEFAULT '0',
  PRIMARY KEY (`UserId`),
  KEY `RetailId` (`RetailId`) USING BTREE,
  KEY `ip` (`IP`) USING BTREE,
  KEY `top` (`Top`) USING BTREE,
  KEY `topUsers` (`CreateDate`,`Top`,`UserId`) USING BTREE,
  KEY `OrderAmount` (`OrderAmount`) USING BTREE,
  KEY `PayNum` (`PayNum`) USING BTREE,
  KEY `find_users` (`CreateDate`,`RoleIds`(128),`UserId`,`Top`) USING BTREE,
  KEY `CreateDate` (`CreateDate`,`OrderAmount`,`RetailId`) USING BTREE,
  KEY `UserId` (`UserId`) USING BTREE,
  KEY `UID` (`UID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |



| gameorder | CREATE TABLE `gameorder` (
  `orderID` bigint(20) NOT NULL DEFAULT '0',
  `appID` int(11) DEFAULT NULL,
  `channelID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `channelOrderID` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `UID` varchar(32) DEFAULT NULL,
  `ocreate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `userID` (`userID`) USING BTREE,
  KEY `createdTime` (`createdTime`) USING BTREE,
  KEY `channelID` (`channelID`) USING BTREE,
  KEY `userOrders` (`createdTime`,`userID`) USING BTREE,
  KEY `channelOrderID` (`channelOrderID`) USING BTREE,
  KEY `UID` (`UID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |




| userrole | CREATE TABLE `userrole` (
  `UserRoleId` int(11) NOT NULL DEFAULT '0',
  `UserId` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Exp` int(11) DEFAULT NULL,
  `NextLevelExp` int(11) DEFAULT NULL,
  `ExpAmount` int(11) DEFAULT NULL,
  `Progress` int(11) DEFAULT NULL,
  `CombatPower` int(11) DEFAULT NULL,
  `TitleId` int(11) DEFAULT NULL,
  `FashionId` int(11) DEFAULT NULL,
  `EquipSlots` text,
  `RoleSkillIds` text,
  `RoleTalentBuffIds` text,
  `IsTrained` bit(1) DEFAULT NULL,
  `IsTrusteeship` bit(1) DEFAULT NULL,
  `RoleDataId` int(11) DEFAULT NULL,
  `NickName` varchar(255) DEFAULT NULL,
  `RoleRuneIds` text,
  `RoleFeats` int(11) DEFAULT NULL,
  `RoleMilitaryRank` int(11) DEFAULT NULL,
  `OpenModuleIds` text,
  `GameId` int(11) DEFAULT NULL,
  `ServerId` int(11) DEFAULT NULL,
  `UserStatus` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `LoginDate` datetime DEFAULT NULL,
  `LastOnlineDate` datetime DEFAULT NULL,
  `LogInNum` int(11) DEFAULT NULL,
  `AmountLogInNum` int(11) DEFAULT NULL,
  `SupplicationNum` int(11) DEFAULT NULL,
  `RecoverDate` datetime DEFAULT NULL,
  `UserPropNums` text,
  `AddLogInNum` int(11) DEFAULT NULL,
  `AmountAddLogInNum` int(11) DEFAULT NULL,
  `LastSystemMailId` int(11) DEFAULT NULL,
  `UnreadMailCount` int(11) DEFAULT NULL,
  `HasIncomingMail` bit(1) DEFAULT NULL,
  `ActivityLogInNum` int(11) DEFAULT NULL,
  `VipUserPropNums` text,
  `ActivityTagsDate` datetime DEFAULT NULL,
  `olevel` int(11) DEFAULT '0',
  `ocreate` datetime DEFAULT NULL,
  `flags` tinyint(4) DEFAULT '0',
  `UID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`UserRoleId`),
  KEY `UserId` (`UserId`) USING BTREE,
  KEY `Level` (`Level`) USING BTREE,
  KEY `CreateDate` (`CreateDate`) USING BTREE,
  KEY `LogInNum` (`LogInNum`) USING BTREE,
  KEY `UID` (`UID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |



| log_201608usergoldcoinlog | CREATE TABLE `log_201608usergoldcoinlog` (
  `LogId` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `OrIginType` varchar(255) DEFAULT NULL,
  `OrIginOrg` varchar(255) DEFAULT NULL,
  `CurrencyType` int(11) DEFAULT NULL,
  `CostGold` int(11) DEFAULT NULL,
  `CreateDateTime` datetime DEFAULT NULL,
  `HaveGold` int(11) DEFAULT NULL,
  `UID` varchar(32) DEFAULT NULL,
  `unused` int(11) DEFAULT '0',
  `repair` int(11) DEFAULT '0',
  `ocreate` datetime DEFAULT NULL,
  `ouid` int(11) DEFAULT '0',
  PRIMARY KEY (`LogId`),
  KEY `CurrencyType` (`CurrencyType`) USING BTREE,
  KEY `UserId` (`UserId`) USING BTREE,
  KEY `CreateDateTime` (`CreateDateTime`) USING BTREE,
  KEY `CostGold` (`CostGold`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3116 DEFAULT CHARSET=utf8 |



| log_201608userloginlog | CREATE TABLE `log_201608userloginlog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SessionID` varchar(255) DEFAULT NULL,
  `MobileType` smallint(6) DEFAULT NULL,
  `ScreenX` smallint(6) DEFAULT NULL,
  `ScreenY` smallint(6) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `Ip` varchar(255) DEFAULT NULL,
  `UID` varchar(32) DEFAULT NULL,
  `ocreate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AddTime` (`AddTime`) USING BTREE,
  KEY `UserId` (`UserId`) USING BTREE,
  KEY `UID` (`UID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16476 DEFAULT CHARSET=utf8 |
