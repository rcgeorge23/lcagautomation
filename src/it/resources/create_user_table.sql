CREATE TABLE `i7b0_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) NOT NULL DEFAULT '',
  `password` varchar(120) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `loginkey` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(220) NOT NULL DEFAULT '',
  `postnum` int(10) unsigned NOT NULL DEFAULT '0',
  `threadnum` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `avatardimensions` varchar(10) NOT NULL DEFAULT '',
  `avatartype` varchar(10) NOT NULL DEFAULT '0',
  `usergroup` smallint(5) unsigned NOT NULL DEFAULT '0',
  `additionalgroups` varchar(200) NOT NULL DEFAULT '',
  `displaygroup` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(250) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastactive` int(10) unsigned NOT NULL DEFAULT '0',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `website` varchar(200) NOT NULL DEFAULT '',
  `icq` varchar(10) NOT NULL DEFAULT '',
  `aim` varchar(50) NOT NULL DEFAULT '',
  `yahoo` varchar(50) NOT NULL DEFAULT '',
  `skype` varchar(75) NOT NULL DEFAULT '',
  `google` varchar(75) NOT NULL DEFAULT '',
  `birthday` varchar(15) NOT NULL DEFAULT '',
  `birthdayprivacy` varchar(4) NOT NULL DEFAULT 'all',
  `signature` text NOT NULL,
  `allownotices` tinyint(1) NOT NULL DEFAULT '0',
  `hideemail` tinyint(1) NOT NULL DEFAULT '0',
  `subscriptionmethod` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `receivepms` tinyint(1) NOT NULL DEFAULT '0',
  `receivefrombuddy` tinyint(1) NOT NULL DEFAULT '0',
  `pmnotice` tinyint(1) NOT NULL DEFAULT '0',
  `pmnotify` tinyint(1) NOT NULL DEFAULT '0',
  `buddyrequestspm` tinyint(1) NOT NULL DEFAULT '1',
  `buddyrequestsauto` tinyint(1) NOT NULL DEFAULT '0',
  `threadmode` varchar(8) NOT NULL DEFAULT '',
  `showimages` tinyint(1) NOT NULL DEFAULT '0',
  `showvideos` tinyint(1) NOT NULL DEFAULT '0',
  `showsigs` tinyint(1) NOT NULL DEFAULT '0',
  `showavatars` tinyint(1) NOT NULL DEFAULT '0',
  `showquickreply` tinyint(1) NOT NULL DEFAULT '0',
  `showredirect` tinyint(1) NOT NULL DEFAULT '0',
  `ppp` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tpp` smallint(6) unsigned NOT NULL DEFAULT '0',
  `daysprune` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateformat` varchar(4) NOT NULL DEFAULT '',
  `timeformat` varchar(4) NOT NULL DEFAULT '',
  `timezone` varchar(5) NOT NULL DEFAULT '',
  `dst` tinyint(1) NOT NULL DEFAULT '0',
  `dstcorrection` tinyint(1) NOT NULL DEFAULT '0',
  `buddylist` text NOT NULL,
  `ignorelist` text NOT NULL,
  `style` smallint(5) unsigned NOT NULL DEFAULT '0',
  `away` tinyint(1) NOT NULL DEFAULT '0',
  `awaydate` int(10) unsigned NOT NULL DEFAULT '0',
  `returndate` varchar(15) NOT NULL DEFAULT '',
  `awayreason` varchar(200) NOT NULL DEFAULT '',
  `pmfolders` text NOT NULL,
  `notepad` text NOT NULL,
  `referrer` int(10) unsigned NOT NULL DEFAULT '0',
  `referrals` int(10) unsigned NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `regip` varbinary(16) NOT NULL DEFAULT '',
  `lastip` varbinary(16) NOT NULL DEFAULT '',
  `language` varchar(50) NOT NULL DEFAULT '',
  `timeonline` int(10) unsigned NOT NULL DEFAULT '0',
  `showcodebuttons` tinyint(1) NOT NULL DEFAULT '1',
  `totalpms` int(10) unsigned NOT NULL DEFAULT '0',
  `unreadpms` int(10) unsigned NOT NULL DEFAULT '0',
  `warningpoints` int(3) unsigned NOT NULL DEFAULT '0',
  `moderateposts` tinyint(1) NOT NULL DEFAULT '0',
  `moderationtime` int(10) unsigned NOT NULL DEFAULT '0',
  `suspendposting` tinyint(1) NOT NULL DEFAULT '0',
  `suspensiontime` int(10) unsigned NOT NULL DEFAULT '0',
  `suspendsignature` tinyint(1) NOT NULL DEFAULT '0',
  `suspendsigtime` int(10) unsigned NOT NULL DEFAULT '0',
  `coppauser` tinyint(1) NOT NULL DEFAULT '0',
  `classicpostbit` tinyint(1) NOT NULL DEFAULT '0',
  `loginattempts` smallint(2) unsigned NOT NULL DEFAULT '1',
  `usernotes` text NOT NULL,
  `sourceeditor` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200)  NOT NULL DEFAULT '',
  `hmrc_letter_checked` tinyint(1) NOT NULL DEFAULT '0',
  `identification_checked` tinyint(1) NOT NULL DEFAULT '0',
  `contribution_amount` varchar(10) NOT NULL DEFAULT '0',
  `contribution_date` int(10) unsigned NOT NULL DEFAULT '0',
  `agreed_to_contribute_but_not_paid` tinyint(1) NOT NULL DEFAULT '0',
  `mp_name` varchar(200) NOT NULL DEFAULT '',
  `mp_engaged` tinyint(1) NOT NULL DEFAULT '0',
  `mp_sympathetic` tinyint(1) NOT NULL DEFAULT '0',
  `mp_constituency` varchar(200) NOT NULL DEFAULT '',
  `mp_party` varchar(200) NOT NULL DEFAULT '',
  `schemes` varchar(200) NOT NULL DEFAULT '',
  `notes` varchar(500) NOT NULL DEFAULT '',
  `industry` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `usergroup` (`usergroup`),
  KEY `regip` (`regip`),
  KEY `lastip` (`lastip`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
