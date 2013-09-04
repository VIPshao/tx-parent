--****************************************************************************
-- ��������ƴ洢
--****************************************************************************
create table ru_rule_pro_value
(
	ruleId varchar(64) not null,		   		  --��Ӧ����id
	paramKey varchar(64) not null,				  --��Ӧ����key
	simpleRulePropertyParam varchar(64) not null, --��Ӧ����
	paramValueOrdered integer default 0 not null, --��Ӧ��������ֵ
	paramValue varchar(2000),					  --��Ӧ����ֵ
	primary key(ruleId)
);
--����ͬһ������ͬ���ԣ���ͬ�����ֵ��ֻ����һ��
create unique index idx_rule_pro_value_01 on ru_rule_pro_value(ruleId,paramKey,paramValueOrdered);
create unique index idx_rule_pro_value_02 on ru_rule_pro_value(ruleId,simpleRulePropertyParam,paramValueOrdered,paramValueOrdered);
