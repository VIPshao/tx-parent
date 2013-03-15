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
