

update omniv5_core.resappresource r set  r.resourceOrder=13 where r.id=101651;

INSERT INTO omniv5_core.accountroleapprespermit (accountRoleid,appResourceId,permitType,createdDate,createdBy,modifiedDate,modifiedBy)
SELECT 39 ,id ,'ALLOW',CURDATE(),-99999,CURDATE(),-99999 FROM resappresource r where  r.id=101651;
