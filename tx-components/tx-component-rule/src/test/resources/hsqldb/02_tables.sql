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
--****************************************************************************
-- ��������ƴ洢
--****************************************************************************
create table ru_rule_pro_byte
(
	ruleId varchar(64) not null,		   		  --��Ӧ����id
	paramKey varchar(64) not null,				  --��Ӧ����key
	simpleRulePropertyParam varchar(64) not null, --��Ӧ������
	paramValueOrdered integer default 0 not null, --��Ӧ��������ֵ
	paramValue blob,							  --��Ӧ����ֵ
	primary key(ruleId)
);
--����ͬһ������ͬ���ԣ���ͬ�����ֵ��ֻ����һ��
create unique index idx_rule_pro_byte_01 on ru_rule_pro_byte(ruleId,paramKey,paramValueOrdered);
create unique index idx_rule_pro_byte_02 on ru_rule_pro_byte(ruleId,simpleRulePropertyParam,paramValueOrdered);
--****************************************************************************
-- ��������ƴ洢
--****************************************************************************
create table ru_rule_pro_value
(
	ruleId varchar(64) not null,		   		  --��Ӧ����id
	paramKey varchar(64) not null,				  --��Ӧ����key
	simpleRulePropertyParam varchar(64) not null,	  --��Ӧ����
	paramValueOrdered integer default 0 not null, --��Ӧ��������ֵ
	paramValue varchar(2000),					  --��Ӧ����ֵ
	primary key(ruleId)
);
--����ͬһ������ͬ���ԣ���ͬ�����ֵ��ֻ����һ��
create unique index idx_rule_pro_value_01 on ru_rule_pro_value(ruleId,paramKey,paramValueOrdered);
create unique index idx_rule_pro_value_02 on ru_rule_pro_value(ruleId,simpleRulePropertyParam,paramValueOrdered,paramValueOrdered);
