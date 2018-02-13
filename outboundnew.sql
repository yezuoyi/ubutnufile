
-- ----------------------------
-- Table init  for ordernummgmt
-- ----------------------------
INSERT INTO `ordernummgmt` (`id`, `orderType`, `orderNum`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `increment`)
 VALUES ('14', 'PICK', '1', '2017-03-08 02:33:32', '-99999', '2017-03-08 02:33:40', '-99999', '1');
INSERT INTO `ordernummgmt` (`id`, `orderType`, `orderNum`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `increment`)
 VALUES ('15', 'BOC', '1', '2017-03-08 02:34:02', '-99999', '2017-03-08 02:34:05', '-99999', '1');
INSERT INTO `ordernummgmt` (`id`, `orderType`, `orderNum`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `increment`) 
VALUES ('16', 'MOR', '1', '2017-03-08 02:34:31', '-99999', '2017-03-08 02:34:33', '-99999', '1');
INSERT INTO `ordernummgmt` (`id`, `orderType`, `orderNum`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `increment`) 
VALUES ('17', 'TEL', '1', '2017-03-08 02:35:30', '-99999', '2017-03-08 02:35:37', '-99999', '1');
INSERT INTO `ordernummgmt` (`id`, `orderType`, `orderNum`, `createdDate`, `createdBy`, `modifiedDate`, `modifiedBy`, `increment`) 
VALUES ('19', 'B', '1', '2017-04-05 08:55:56', '-99999', '2017-04-05 08:56:03', '-99999', '1');

-- ----------------------------
-- Table init  for policy
-- ----------------------------
INSERT INTO `policy` (`id`, `policyCode`, `policyClass`, `policyType`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('1', 'OFFSHELF_PRIORITY', NULL, 'OFFSHELF_PRIORITY', '-99999', '2017-03-09 08:59:49', '-99999', '2017-03-09 08:59:49');
INSERT INTO `policy` (`id`, `policyCode`, `policyClass`, `policyType`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('2', 'MIN_PICKING_ORDER_NO', NULL, 'MIN_PICKING_ORDER_NO', '-99999', '2017-03-31 22:50:41', '-99999', '2017-03-31 22:50:48');

-- ----------------------------
-- Table init  for manualinvdistrpolicy
--  有几个仓库配置几套
-- ----------------------------
-- warehouseId=1
insert into `manualinvdistrpolicy` (`id`, `createdBy`, `createdDate`, `memo`, `modifiedBy`, `modifiedDate`, `isActive`, `name`, `passageIds`, `priority`, `warehouseAreaIds`, `xyz`, `xyzValue`, `warehouseId`) values('1','106','2017-05-15 06:45:45',NULL,'106','2017-05-15 06:45:45','1','仓库1的库存分配策略',NULL,'1',NULL,NULL,NULL,'1');

insert into `manualinvdistrpolicy` (`id`, `createdBy`, `createdDate`, `memo`, `modifiedBy`, `modifiedDate`, `isActive`, `name`, `passageIds`, `priority`, `warehouseAreaIds`, `xyz`, `xyzValue`, `warehouseId`) values('2','106','2017-05-15 06:45:45',NULL,'106','2017-05-15 06:45:45','2','仓库2的库存分配策略',NULL,'1',NULL,NULL,NULL,'2');


INSERT INTO `invdistrpolicy` (`id`,`createdBy`,`createdDate`, `memo`,`modifiedBy`,`modifiedDate`,`isActive`,`manualInvDistrPolicyId`,`priority`,`wareRuleId`,`policyId`
) VALUES( '1','106', NOW(),'memo','106', NOW(),'1','1','10', NULL,'1') ;
  
INSERT INTO `invdistrpolicy` (`id`,`createdBy`,`createdDate`, `memo`,`modifiedBy`,`modifiedDate`,`isActive`,`manualInvDistrPolicyId`,`priority`,`wareRuleId`,`policyId`
) VALUES( '2','106', NOW(),'memo','106', NOW(),'1','1','20', NULL,'2') ;
  
  




-- warehouseId=2


-- warehouseId=7

-- warehouseId=34

-- warehouseId=51





-- ----------------------------
-- Table init  for scanoutordconfig
--   有几个仓库配置几条
-- ----------------------------

INSERT INTO `scanordersetting` (`id`, `isActive`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('1', '0', '1', '-99999', '2017-03-17 09:41:09', '106', '2017-04-07 15:02:48');

INSERT INTO `scanordersetting` (`id`, `isActive`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('2', '0', '2', '-99999', '2017-03-17 09:41:09', '106', '2017-04-07 15:02:48');

INSERT INTO `scanordersetting` (`id`, `isActive`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('3', '0', '7', '-99999', '2017-03-17 09:41:09', '106', '2017-04-07 15:02:48');

INSERT INTO `scanordersetting` (`id`, `isActive`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('4', '0', '34', '-99999', '2017-03-17 09:41:09', '106', '2017-04-07 15:02:48');

INSERT INTO `scanordersetting` (`id`, `isActive`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('5', '0', '51', '-99999', '2017-03-17 09:41:09', '106', '2017-04-07 15:02:48');



-- ----------------------------
-- Table init  for offshelfpatternconfig
--  有几个仓库配置几套
-- ----------------------------
-- warehouseId=1
INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`)
 VALUES ('1', 'SMALL', '0', '20', '0', '1.00', '0', '1', NULL, '1', '-99999', '2017-02-23 00:34:04', '-99999', '2017-04-07 15:02:06');
INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('2', 'BIG', '20.000', '9999999.000', '1', '99999999.000', '1', '9999999.000', NULL, '1', '-99999', '2017-02-23 00:35:55', '-99999', '2017-04-07 15:02:06');
INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('3', 'BATCH_SINGLE_PROD', NULL, NULL, NULL, NULL, NULL, NULL, '50', '1', '-99999', '2017-02-23 00:36:50', '-99999', '2017-04-07 15:02:06');

-- warehouseId=2

INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`)
 VALUES ('4', 'SMALL', '0', '20', '0', '1.00', '0', '1', NULL, '2', '-99999', '2017-02-23 00:34:04', '-99999', '2017-04-07 15:02:06');
INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('5', 'BIG', '20.000', '9999999.000', '1', '99999999.000', '1', '9999999.000', NULL, '2', '-99999', '2017-02-23 00:35:55', '-99999', '2017-04-07 15:02:06');
INSERT INTO `offshelfpatternconfig` (`id`, `prodType`, `prodWeightBegin`, `prodWeightEnd`, `prodVolumeBegin`, `prodVolumeEnd`, `prodMaxLengthBegin`, `prodMaxLengthEnd`, `orderItemsQuantity`, `warehouseId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) 
VALUES ('6', 'BATCH_SINGLE_PROD', NULL, NULL, NULL, NULL, NULL, NULL, '50', '2', '-99999', '2017-02-23 00:36:50', '-99999', '2017-04-07 15:02:06');



-- warehouseId=7

-- warehouseId=34

-- warehouseId=51

-- ----------------------------
-- Table init  for schedulerconfig
--    定时任务配置  每个仓库一条
-- ----------------------------
-- WareRulerScheduler

INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('1', 'WareRulerScheduler-CATR-1', 'TIME_REPEAT', '0', '1', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:34', NULL, 'com.omniselling.scheduleradapter.WaveRulerSchedulerAction', '0', NULL, NULL, '-99999', '2017-04-12 03:38:44', '-99999', '2017-04-12 03:38:51');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('2', 'WareRulerScheduler-USLA-2', 'TIME_REPEAT', '0', '2', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:36', NULL, 'com.omniselling.scheduleradapter.WaveRulerSchedulerAction', '0', NULL, NULL, '-99999', '2017-04-12 03:38:44', '-99999', '2017-04-12 03:38:51');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('3', 'WareRulerScheduler-USNJ-7', 'TIME_REPEAT', '0', '7', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:38', NULL, 'com.omniselling.scheduleradapter.WaveRulerSchedulerAction', '0', NULL, NULL, '-99999', '2017-04-12 03:38:44', '-99999', '2017-04-12 03:38:51');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('4', 'WareRulerScheduler-DESL-34', 'TIME_REPEAT', '0', '34', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:41', NULL, 'com.omniselling.scheduleradapter.WaveRulerSchedulerAction', '0', NULL, NULL, '-99999', '2017-04-12 03:38:44', '-99999', '2017-04-12 03:38:51');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('5', 'WareRulerScheduler-UKMA-51', 'TIME_REPEAT', '0', '51', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:44', NULL, 'com.omniselling.scheduleradapter.WaveRulerSchedulerAction', '0', NULL, NULL, '-99999', '2017-04-12 03:38:44', '-99999', '2017-04-12 03:38:51');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('11', 'CreateManifestRecordsScheduler-CATR-1', 'TIME_REPEAT', '0', '1', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:46', NULL, 'com.omniselling.scheduleradapter.CourierCommitCreateManifestRecordsAction', '0', NULL, NULL, '-99999', '2017-04-13 01:47:59', '-99999', '2017-04-13 01:48:06');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('12', 'CreateManifestRecordsScheduler-USLA-2', 'TIME_REPEAT', '0', '2', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:46', NULL, 'com.omniselling.scheduleradapter.CourierCommitCreateManifestRecordsAction', '0', NULL, NULL, '-99999', '2017-04-13 01:47:59', '-99999', '2017-04-13 01:48:06');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('13', 'CreateManifestRecordsScheduler-USNJ-7', 'TIME_REPEAT', '0', '7', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:46', NULL, 'com.omniselling.scheduleradapter.CourierCommitCreateManifestRecordsAction', '0', NULL, NULL, '-99999', '2017-04-13 01:47:59', '-99999', '2017-04-13 01:48:06');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('14', 'CreateManifestRecordsScheduler-DESL-34', 'TIME_REPEAT', '0', '34', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:46', NULL, 'com.omniselling.scheduleradapter.CourierCommitCreateManifestRecordsAction', '0', NULL, NULL, '-99999', '2017-04-13 01:47:59', '-99999', '2017-04-13 01:48:06');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('15', 'CreateManifestRecordsScheduler-UKMA-51', 'TIME_REPEAT', '0', '51', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:31:46', NULL, 'com.omniselling.scheduleradapter.CourierCommitCreateManifestRecordsAction', '0', NULL, NULL, '-99999', '2017-04-13 01:47:59', '-99999', '2017-04-13 01:48:06');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('22', 'GeneratorManifestFilesScheduler-USLA-2', 'TIME_REPEAT', '1', '2', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.CourierCommitGenerateManifestFilesAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('21', 'GeneratorManifestFilesScheduler-CATR-1', 'TIME_REPEAT', '0', '1', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.CourierCommitGenerateManifestFilesAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('23', 'GeneratorManifestFilesScheduler-USNJ-7', 'TIME_REPEAT', '0', '7', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.CourierCommitGenerateManifestFilesAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('24', 'GeneratorManifestFilesScheduler-DESL-34', 'TIME_REPEAT', '0', '34', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.CourierCommitGenerateManifestFilesAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('25', 'GeneratorManifestFilesScheduler-UKMA-51', 'TIME_REPEAT', '0', '51', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.CourierCommitGenerateManifestFilesAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('31', 'AsynCreateShipment-CATR-1', 'TIME_REPEAT', '0', '1', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynCreateShipmentAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('32', 'AsynCreateShipment-USLA-2', 'TIME_REPEAT', '0', '2', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynCreateShipmentAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('33', 'AsynCreateShipment-USNJ-7', 'TIME_REPEAT', '0', '7', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynCreateShipmentAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('34', 'AsynCreateShipment-DESL-34', 'TIME_REPEAT', '0', '34', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynCreateShipmentAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('35', 'AsynCreateShipment-UKMA-51', 'TIME_REPEAT', '0', '51', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynCreateShipmentAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('41', 'AsynNotifyOmsStatus-CATR-1', 'TIME_REPEAT', '0', '1', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynNotifyOmsStatusAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('42', 'AsynNotifyOmsStatus-USLA-2', 'TIME_REPEAT', '0', '2', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynNotifyOmsStatusAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('43', 'AsynNotifyOmsStatus-USNJ-7', 'TIME_REPEAT', '0', '7', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynNotifyOmsStatusAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('44', 'AsynNotifyOmsStatus-DESL-34', 'TIME_REPEAT', '0', '34', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynNotifyOmsStatusAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');
INSERT INTO `schedulerconfig` (`id`, `schedulerName`, `triggerType`, `autoStart`, `defaultOwnerId`, `enabled`, `repeatInterval`, `timeUnit`, `cronExp`, `firstRunTime`, `totalRunCount`, `actionClass`, `noCatchUp`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('45', 'AsynNotifyOmsStatus-UKMA-51', 'TIME_REPEAT', '0', '51', '1', NULL, NULL, '0 0/30 * ? * *', '2017-04-19 20:17:24', NULL, 'com.omniselling.scheduleradapter.AsynNotifyOmsStatusAction', '0', NULL, NULL, '-99999', '2017-04-14 18:22:06', '-99999', '2017-04-14 18:22:13');






























