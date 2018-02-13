-- 出库单流程配置
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('59', 'OutboundOrderFlow_V1', 'START', NULL, '出库单流程开始,检查库存\r\n', NULL, 'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckInvAction', NULL, NULL, 'INV_PASS,INV_ERROR', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('60', 'OutboundOrderFlow_V1', 'RE_START_PAGE', NULL, '出库单流程开始,检查库存(页面事件)\r\n', 'START-INV_ERROR', 'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckInvAction', NULL, NULL, 'INV_PASS,INV_ERROR', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('61', 'OutboundOrderFlow_V1', 'CHECK_PARCEL_SIZE', NULL, '出库单流程：检查尺寸并推荐包材\r\n', 'START-INV_PASS,RE_START_PAGE-INV_PASS', 'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderCheckParcelSizeAction', NULL, NULL, 'SIZE_MATCH,SIZE_NOT_MATCH,CREATED_BY_RULE,CREATE_BY_WORKER', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('62', 'OutboundOrderFlow_V1', 'GET_LABEL', NULL, '出库单流程：提前请求label', 'CHECK_PARCEL_SIZE-SIZE_MATCH', 'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderGetLabelAction', NULL, NULL, 'LABEL_READY,LABEL_NOT_READY,CREATED_BY_RULE,CREATE_BY_WORKER', NULL, NULL, '-99999', '2017-03-29 21:17:02', '-99999', '2017-03-29 21:17:12');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('64', 'OutboundOrderFlow_V1', 'CHECK_OFFSHELF_WORK_ORDER', NULL, '出库单：下架单校验（下架单流程触发）', 'CHECK_PARCEL_SIZE-CREATED_BY_RULE,CHECK_PARCEL_SIZE-CREATE_BY_WORKER,GET_LABEL-CREATED_BY_RULE,GET_LABEL-CREATE_BY_WORKER', 'com.omniselling.wms.ms.workflow.adapter.outbound.CheckOffShelfWorkOrderAction', NULL, NULL, 'OFF_SHELF_ORD_BY_RULE,OFF_SHELF_ORD_BY_PERSON', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('65', 'OutboundOrderFlow_V1', 'OFFSHELF_CONFIRM', NULL, '出库单流程：下架单确认(页面事件)\r\n', 'CHECK_OFFSHELF_WORK_ORDER-OFF_SHELF_ORD_BY_RULE', 'com.omniselling.wms.ms.workflow.adapter.outbound.OffShelfConfirmAction', NULL, NULL, 'OFF_SHELF_CONFIRMED', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('66', 'OutboundOrderFlow_V1', 'CHECK_NEED_REPLACE_LABEL', NULL, '出库单流程：是否需要换标(波次下架的业务单)\r\n', 'OFFSHELF_CONFIRM-OFF_SHELF_CONFIRMED,CHECK_OFFSHELF_WORK_ORDER-OFF_SHELF_ORD_BY_PERSON', 'com.omniselling.wms.ms.workflow.adapter.outbound.CheckNeedReplaceLabelAction', NULL, NULL, 'NEED_REPLACE_LABEL,NOT_NEED_REPLACE_LABEL', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('67', 'OutboundOrderFlow_V1', 'REPLACE_LABEL', NULL, '出库单流程：换标操作(增值服务触发)\r\n', 'CHECK_NEED_REPLACE_LABEL-NEED_REPLACE_LABEL', 'com.omniselling.wms.ms.workflow.adapter.outbound.ReplaceLabelAction', NULL, NULL, 'REPLACE_LABEL_COMPLETED', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('68', 'OutboundOrderFlow_V1', 'CHECK_NEED_PACK', NULL, '出库单流程：是否需要打包\r\n', 'CHECK_NEED_REPLACE_LABEL-NOT_NEED_REPLACE_LABEL,REPLACE_LABEL-REPLACE_LABEL_COMPLETED', 'com.omniselling.wms.ms.workflow.adapter.outbound.CheckNeedPackAction', NULL, NULL, 'NOT_NEED_PACK,NEED_PACK', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('69', 'OutboundOrderFlow_V1', 'CHECK_HAS_LABEL_PACK', NULL, '出库单流程：待打包，是否有label(页面事件)\r\n', 'CHECK_NEED_PACK-NEED_PACK', 'com.omniselling.wms.ms.workflow.adapter.outbound.CheckHasLabelAction', NULL, NULL, 'PACK_GET_LABEL_FAIL,PACK_GET_LABEL_SUCC', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('70', 'OutboundOrderFlow_V1', 'CHECK_SCAN_LABEL', NULL, '出库单流程：扫描出单\r\n', 'CHECK_NEED_PACK-NOT_NEED_PACK,CHECK_HAS_LABEL_PACK-PACK_GET_LABEL_SUCC', 'com.omniselling.wms.ms.workflow.adapter.outbound.CheckScanLabelAction', NULL, NULL, 'LABEL_SCANED', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('71', 'OutboundOrderFlow_V1', 'CONFIRM_OUTBOUND', NULL, '出库单流程：出库确认\r\n', 'CHECK_SCAN_LABEL-LABEL_SCANED', 'com.omniselling.wms.ms.workflow.adapter.outbound.ConfirmOutBoundAction', NULL, NULL, 'CONFIRM_OUTBOUND_SUCC,CONFIRM_OUTBOUND_FAIL', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('72', 'OutboundOrderFlow_V1', 'COURIER_COMMIT', NULL, '出库单流程：物流结算\r\n', 'CONFIRM_OUTBOUND-CONFIRM_OUTBOUND_SUCC', 'com.omniselling.wms.ms.workflow.adapter.outbound.CourierCommitAction', NULL, NULL, 'COURIER_COMMIT_SUCC,COURIER_COMMIT_FAIL', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('73', 'OutboundOrderFlow_V1', 'INVOICED_UPLOAD', NULL, '出库单流程：上传发票\r\n', 'COURIER_COMMIT-COURIER_COMMIT_SUCC', 'com.omniselling.wms.ms.workflow.adapter.outbound.InvoicedUploadAction', NULL, NULL, 'INVOICE_UPLAOD_SUCC,INVOICE_UPLOAD_FAIL', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('74', 'OutboundOrderFlow_V1', 'OUTBOUND_ORD_BILL', NULL, '出库单流程：计费\r\n', 'INVOICED_UPLOAD-INVOICE_UPLAOD_SUCC', 'com.omniselling.wms.ms.workflow.adapter.outbound.OutBoundOrdBillAction', NULL, NULL, 'BILL_SUCC,BILL_FAIL', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('75', 'OutboundOrderFlow_V1', 'END', NULL, '出库单流程：处理结束\r\n', 'OUTBOUND_ORD_BILL-BILL_SUCC', 'com.omniselling.wms.ms.workflow.adapter.outbound.OutboundOrderFinishAction', NULL, NULL, 'END', NULL, NULL, '0', '2017-03-29 23:25:15', '0', '2017-03-29 23:25:15');



-- 下架单流程配置
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('80', 'OffShelfOrderFlow_V1', 'OFFSHELF_START', NULL, '下架单流程：下架单流程开始\r\n', NULL, 'com.omniselling.wms.ms.workflow.adapter.offshelforder.StartOffShelveOrdAction', NULL, NULL, 'CREATED_BY_RULE,CREATE_BY_WORKER', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('81', 'OffShelfOrderFlow_V1', 'OFFSHELF_ORD_CONFIRM', NULL, '下架单流程：波次下架确认(页面事件)\r\n', 'OFFSHELF_START-CREATED_BY_RULE', 'com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelfOrdConfirmAction', NULL, NULL, 'OFF_SHELVE_PENDING', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('82', 'OffShelfOrderFlow_V1', 'OFFSHELVE_COMPLETE', NULL, '下架单流程：下架完成\r\n', 'OFFSHELF_START-CREATE_BY_WORKER,OFFSHELF_ORD_CONFIRM-OFF_SHELVE_PENDING', 'com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelveCompleteAction', NULL, NULL, 'OFF_SHELVE_COMPLETESUCC', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
INSERT INTO `workflowstep` (`id`, `wfName`, `stepName`, `parentName`, `description`, `triggerEvents`, `actionClass`, `waitTimeOutSec`, `timeoutActionClass`, `resultEvents`, `defaultPoolId`, `defaultPriority`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES ('83', 'OffShelfOrderFlow_V1', 'END', NULL, '下架单流程：下架结束\r\n', 'OFFSHELVE_COMPLETE-OFF_SHELVE_COMPLETESUCC', 'com.omniselling.wms.ms.workflow.adapter.offshelforder.OffShelveFinishAction', NULL, NULL, 'END', NULL, NULL, '-99999', '2017-02-13 18:47:35', '-99999', '2017-02-13 18:47:35');
