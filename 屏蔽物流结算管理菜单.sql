-- 屏蔽物流结算管理菜单功能
update accountroleapprespermit set permittype='NOTALLOW' 
where appResourceId in ( select id from resappresource where resourcename ='wmsapp.APP_MENU.outbound.manifestmanagement');
