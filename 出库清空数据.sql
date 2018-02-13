
--  出库清空表数据

-- 关闭外键
SET FOREIGN_KEY_CHECKS = 0; 

 --  出库包裹里的产品信息
TRUNCATE TABLE parcelproductqty;

--  包装类型;
-- TRUNCATE table packagematerialtype;

-- TRUNCATE TABLE materialrecord;

-- 包装型号;
-- TRUNCATE table packagematerial;

-- 包裹信息
TRUNCATE TABLE outboundparcel;

-- 出库单增值服务产品项
TRUNCATE TABLE outboundordervasitem;

-- 换标增值服务管理
TRUNCATE TABLE outboundordervalueadded;

--  推荐包材含产品信息
TRUNCATE TABLE recomendmaterialproductqty;

--  推荐包裹信息,含包材信息
TRUNCATE TABLE recomendmaterial;

-- 使用推荐包材的产品信息
TRUNCATE table recomendoutboundord;

-- 出库虚拟包裹信息,在打包确认之前的
TRUNCATE TABLE outboundvirtualparcel;

-- 清空异步表
TRUNCATE table asynnotifyinfo;

-- 清空附件
TRUNCATE table attachedfile;

-- 清空下架单明细
TRUNCATE table offshelforderdetail;

-- 清空下架单
TRUNCATE table offshelforder;

-- 清空出库产品
TRUNCATE table outboundproduct;

-- 清空出库单
TRUNCATE table outboundorder;


-- 波次规则相关表

-- TRUNCATE table warerule;

-- TRUNCATE table warerulebusinesstyperel;

-- TRUNCATE TABLE warerulecontainprodrel;

-- TRUNCATE table wareruleskutyperel;

-- TRUNCATE table wareruletimingdayofweekrel;

-- TRUNCATE table wareruletiming;

TRUNCATE TABLE COP_WAIT;
TRUNCATE TABLE COP_RESPONSE;
TRUNCATE TABLE COP_WORKFLOW_INSTANCE;
TRUNCATE TABLE COP_WORKFLOW_INSTANCE_ERROR;
TRUNCATE TABLE COP_QUEUE;
TRUNCATE TABLE COP_AUDIT_TRAIL_EVENT;


TRUNCATE TABLE inventorylock;

TRUNCATE TABLE manifestinfo;



-- 打开外键
SET FOREIGN_KEY_CHECKS = 1;   



实际物流账号ID

物流账号资源ID

仓库ID







