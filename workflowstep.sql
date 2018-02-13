/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.22-MariaDB 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('59','OutboundOrderFlow_V1','START',NULL,'出库单流程开始,检查库存\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckInvAction',NULL,NULL,'INV_PASS,INV_ERROR',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('60','OutboundOrderFlow_V1','RE_START_PAGE',NULL,'出库单流程开始,检查库存(页面事件)\r\n','START-INV_ERROR','com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckInvAction',NULL,NULL,'INV_PASS,INV_ERROR',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('61','OutboundOrderFlow_V1','CHECK_PARCEL_SIZE',NULL,'出库单流程：检查尺寸并推荐包材\r\n','START-INV_PASS,RE_START_PAGE-INV_PASS','com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckParcelSizeAction',NULL,NULL,'SIZE_MATCH,SIZE_NOT_MATCH,CREATED_BY_RULE,CREATE_BY_WORKER',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('62','OutboundOrderFlow_V1','GET_LABEL',NULL,'出库单流程：提前请求label','CHECK_PARCEL_SIZE-SIZE_MATCH','com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderGetLabelAction',NULL,NULL,'LABEL_READY,LABEL_NOT_READY,CREATED_BY_RULE,CREATE_BY_WORKER',NULL,NULL,'-99999','2017-03-29 21:17:02','-99999','2017-03-29 21:17:12');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('64','OutboundOrderFlow_V1','CHECK_OFFSHELF_WORK_ORDER',NULL,'出库单：下架单校验（下架单流程触发）','CHECK_PARCEL_SIZE-CREATED_BY_RULE,CHECK_PARCEL_SIZE-CREATE_BY_WORKER,GET_LABEL-CREATED_BY_RULE,GET_LABEL-CREATE_BY_WORKER','com.omniselling.wms.ms.workflow.adapter.outbound.CheckOffShelfWorkOrderAction',NULL,NULL,'OFF_SHELF_ORD_BY_RULE,OFF_SHELF_ORD_BY_PERSON',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('65','OutboundOrderFlow_V1','OFFSHELF_CONFIRM',NULL,'出库单流程：下架单确认(页面事件)\r\n','CHECK_OFFSHELF_WORK_ORDER-OFF_SHELF_ORD_BY_RULE','com.omniselling.wms.ms.workflow.adapter.outbound.OffShelfConfirmAction',NULL,NULL,'OFF_SHELF_CONFIRMED',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('66','OutboundOrderFlow_V1','CHECK_NEED_REPLACE_LABEL',NULL,'出库单流程：是否需要换标(波次下架的业务单)\r\n','OFFSHELF_CONFIRM-OFF_SHELF_CONFIRMED,CHECK_OFFSHELF_WORK_ORDER-OFF_SHELF_ORD_BY_PERSON','com.omniselling.wms.ms.workflow.adapter.outbound.CheckNeedReplaceLabelAction',NULL,NULL,'NEED_REPLACE_LABEL,NOT_NEED_REPLACE_LABEL',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('67','OutboundOrderFlow_V1','REPLACE_LABEL',NULL,'出库单流程：换标操作(增值服务触发)\r\n','CHECK_NEED_REPLACE_LABEL-NEED_REPLACE_LABEL','com.omniselling.wms.ms.workflow.adapter.outbound.ReplaceLabelAction',NULL,NULL,'REPLACE_LABEL_COMPLETED',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('68','OutboundOrderFlow_V1','CHECK_NEED_PACK',NULL,'出库单流程：是否需要打包\r\n','CHECK_NEED_REPLACE_LABEL-NOT_NEED_REPLACE_LABEL,REPLACE_LABEL-REPLACE_LABEL_COMPLETED','com.omniselling.wms.ms.workflow.adapter.outbound.CheckNeedPackAction',NULL,NULL,'NOT_NEED_PACK,NEED_PACK',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('69','OutboundOrderFlow_V1','CHECK_HAS_LABEL_PACK',NULL,'出库单流程：待打包，是否有label(页面事件)\r\n','CHECK_NEED_PACK-NEED_PACK','com.omniselling.wms.ms.workflow.adapter.outbound.CheckHasLabelAction',NULL,NULL,'PACK_GET_LABEL_FAIL,PACK_GET_LABEL_SUCC,LABEL_SCANED',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('70','OutboundOrderFlow_V1','CHECK_SCAN_LABEL',NULL,'出库单流程：扫描出单\r\n','CHECK_NEED_PACK-NOT_NEED_PACK,CHECK_HAS_LABEL_PACK-PACK_GET_LABEL_SUCC','com.omniselling.wms.ms.workflow.adapter.outbound.CheckScanLabelAction',NULL,NULL,'LABEL_SCANED,PACK_GET_LABEL_SUCC',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('71','OutboundOrderFlow_V1','CONFIRM_OUTBOUND',NULL,'出库单流程：出库确认\r\n','CHECK_SCAN_LABEL-LABEL_SCANED,CHECK_SCAN_LABEL-PACK_GET_LABEL_SUCC','com.omniselling.wms.ms.workflow.adapter.outbound.ConfirmOutBoundAction',NULL,NULL,'CONFIRM_OUTBOUND_SUCC,CONFIRM_OUTBOUND_FAIL',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('74','OutboundOrderFlow_V1','OUTBOUND_ORD_BILL',NULL,'出库单流程：计费\r\n','CONFIRM_OUTBOUND-CONFIRM_OUTBOUND_SUCC,OUTBOUND_ORD_BILL-BILL_FAIL','com.omniselling.wms.ms.workflow.adapter.outbound.OutBoundOrdBillAction',NULL,NULL,'BILL_SUCC,BILL_FAIL',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('75','OutboundOrderFlow_V1','END',NULL,'出库单流程：处理结束\r\n','OUTBOUND_ORD_BILL-BILL_SUCC','com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderFinishAction',NULL,NULL,'END',NULL,NULL,'0','2017-03-29 23:25:15','0','2017-03-29 23:25:15');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('80','OffShelfOrderFlow_V1','OFFSHELF_START',NULL,'下架单流程：下架单流程开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.offshelforder.StartOffShelveOrdAction',NULL,NULL,'CREATED_BY_RULE,CREATE_BY_WORKER',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('81','OffShelfOrderFlow_V1','OFFSHELF_ORD_CONFIRM',NULL,'下架单流程：波次下架确认(页面事件)\r\n','OFFSHELF_START-CREATED_BY_RULE','com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelfOrdConfirmAction',NULL,NULL,'OFF_SHELVE_PENDING',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('82','OffShelfOrderFlow_V1','OFFSHELVE_COMPLETE',NULL,'下架单流程：下架完成\r\n','OFFSHELF_START-CREATE_BY_WORKER,OFFSHELF_ORD_CONFIRM-OFF_SHELVE_PENDING','com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelveCompleteAction',NULL,NULL,'OFF_SHELVE_COMPLETESUCC',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('83','OffShelfOrderFlow_V1','END',NULL,'下架单流程：下架结束\r\n','OFFSHELVE_COMPLETE-OFF_SHELVE_COMPLETESUCC','com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelveFinishAction',NULL,NULL,'END',NULL,NULL,'-99999','2017-02-13 18:47:35','-99999','2017-02-13 18:47:35');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('84','StocktakingFlow_V1','START',NULL,'开始流程\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.stocktaking.StocktakingOrderStartAction',NULL,NULL,'STOCKTAKING_GROUP_FINISH_EVENT',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('85','StocktakingFlow_V1','CHECK_REPORT',NULL,'检查生成盘点差异报告\r\n','CHECK_GROUP_FINISH-CHECK_REPORT','com.omniselling.wms.ms.workflow.adapter.stocktaking.StocktakingOrderReportCheckAction',NULL,NULL,'FINISH',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('86','StocktakingFlow_V1','END',NULL,'盘点单结束\r\n','CHECK_REPORT-FINISH','com.omniselling.wms.ms.workflow.adapter.stocktaking.StocktakingOrderFinishAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('87','StocktakingFlow_V1','CHECK_GROUP_FINISH',NULL,'检查盘点组是否都结束\r\n','START-STOCKTAKING_GROUP_FINISH_EVENT','com.omniselling.wms.ms.workflow.adapter.stocktaking.CheckStocktakingOrderFinishAction',NULL,NULL,'CHECK_REPORT',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('88','StocktakingGroupFlow_V1','START',NULL,'盘点组开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.stocktakinggroup.StocktakingGroupStartAction',NULL,NULL,'OPERATOR_DISTRBUTED',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('89','StocktakingGroupFlow_V1','END',NULL,'盘点组结束\r\n','DISTRIBUTED-FINISH','com.omniselling.wms.ms.workflow.adapter.stocktakinggroup.StocktakingGroupFinishAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('90','StocktakingGroupFlow_V1','DISTRIBUTED',NULL,'分配操作人员\r\n','START-OPERATOR_DISTRBUTED','com.omniselling.wms.ms.workflow.adapter.stocktakinggroup.StocktakingGroupDistributedAction',NULL,NULL,'FINISH',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('91','LocationAdjustFlow_V1','START',NULL,'库位调整开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.storagelocationadjust.StorageLocationAdjustStartAction',NULL,NULL,'END',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('92','LocationAdjustFlow_V1','END',NULL,'库位调整结束\r\n','END','com.omniselling.wms.ms.workflow.adapter.storagelocationadjust.StorageLocationAdjustFinishAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('93','InventoryAdjustFlow_V1','START',NULL,'库存调整单开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.inventoryadjust.InventoryAdjustStartAction',NULL,NULL,'APPROVAL,CANCELED',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('94','InventoryAdjustFlow_V1','END',NULL,'库存调整单完成\r\n','APPROVAL-FINISH,CANCELED-FINISH','com.omniselling.wms.ms.workflow.adapter.inventoryadjust.InventoryAdjustFinishAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('95','InventoryAdjustFlow_V1','CANCELED',NULL,'库存调整单取消\r\n','START-CANCELED','com.omniselling.wms.ms.workflow.adapter.inventoryadjust.InventoryAdjustCancelAction',NULL,NULL,'FINISH',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('96','InventoryFlowQueueFlow_V1','START',NULL,'库存流水队列开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.inventoryflowqueue.InventoryFlowQueueStartAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('97','InventoryFlowQueueSubFlow_V1','START',NULL,'库存流水队列开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.inventoryflowqueuesub.InventoryProcessAction',NULL,NULL,'',NULL,NULL,'-99999','2017-02-28 23:28:36','-99999','2017-02-28 23:28:36');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('98','InventoryAdjustFlow_V1','APPROVAL',NULL,'库存调整单审批\r\n','START-APPROVAL','com.omniselling.wms.ms.workflow.adapter.inventoryadjust.InventoryAdjustApprovalAction',NULL,NULL,'FINISH',NULL,NULL,'-99999','2017-03-02 22:07:58','-99999','2017-03-02 22:07:58');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('99','StocktakingReportFlow_V1','START',NULL,'盘点报告开始\r\n',NULL,'com.omniselling.wms.ms.workflow.adapter.stocktakingreport.StocktakingReportStartAction',NULL,NULL,'APPROVAL',NULL,NULL,'-99999','2017-03-07 01:25:13','-99999','2017-03-07 01:25:13');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('100','StocktakingReportFlow_V1','APPROVAL',NULL,'差异报告审批\r\n','START-APPROVAL','com.omniselling.wms.ms.workflow.adapter.stocktakingreport.StocktakingReportApprovalAction',NULL,NULL,'FINISH',NULL,NULL,'-99999','2017-03-07 01:25:13','-99999','2017-03-07 01:25:13');
insert into `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) values('101','StocktakingReportFlow_V1','END',NULL,'差异报告结束\r\n','APPROVAL-FINISH','com.omniselling.wms.ms.workflow.adapter.stocktakingreport.StocktakingReportFinishAction',NULL,NULL,'',NULL,NULL,'-99999','2017-03-07 01:25:13','-99999','2017-03-07 01:25:13');
