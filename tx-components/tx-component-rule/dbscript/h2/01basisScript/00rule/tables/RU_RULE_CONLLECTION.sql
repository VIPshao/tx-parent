--****************************************************************************
-- ru_rule_collection���򼯺ϱ�
--****************************************************************************
create table ru_rule_collection
(
	ruleId varchar(64) not null,		   --���򼯺�id
	ruleItemId varchar(64) not null,	   --����������id
	ruleOrder integer not null,			   --���򼯺�˳��
	primary key(id)
);
