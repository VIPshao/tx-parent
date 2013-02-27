-- "webdemoģ��:�������߼�  start..."  
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
--****************************************************************************
-- ru_rule_collection���򼯺ϱ�
--****************************************************************************
create table ru_rule_collection
(
	ruleId varchar(64) not null,		   --���򼯺�id
	ruleItemId varchar(64) not null,	   --����������id
	ruleOrder integer not null,			   --���򼯺�˳��
	primary key(ruleId)
);
--****************************************************************************
-- ru_rule_def����ʵ����Ϣ��
--****************************************************************************
--****************************************************************************
-- ru_rule_def����ʵ����Ϣ��
--****************************************************************************
create table ru_rule_def
(
	id	varchar(64) not null,              --����id
	rule varchar(64) not null,             --����Ψһ����
	ruleType varchar(32),				   --�������ͣ�collection,drools...
	serviceType varchar(64),      		   --�����Ӧ��ҵ������
	state varchar(32),					   --����״̬TEST,OPERATION,ERROR,STOP
	name varchar(64),					   --������
	remark varchar(256),				   --����ע
	primary key(id)
);
create unique index idx_rule_def_01 on ru_rule_def(rule,ruleType,serviceType);
-- "webdemoģ��:�������߼�  end..."
