--****************************************************************************
-- ru_drools_resource drools������Դ�洢
--****************************************************************************
create table ru_drools_resource
(
	ruleId varchar(64),					   --����id
	resoucePath varchar(128),			   --����·��
	package varchar(256),				   --�������ڰ���
	bytes BLOB,						   	   --�����ļ���
    primary key (ruleId)
);
