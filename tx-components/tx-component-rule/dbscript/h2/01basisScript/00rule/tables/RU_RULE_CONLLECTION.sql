--****************************************************************************
-- ru_rule_collection���򼯺ϱ�
--****************************************************************************
create table ru_rule_collection
(
	ruleId varchar(64) not null,		   --���򼯺�id
	ruleOrder integer not null,			   --���򼯺�˳��

	id	varchar(64) not null,              --����id
	name varchar(64),             		   --������
	ruleType varchar(32),				   --�������ͣ�collection,drools...
	serviceType varchar(64),      		   --�����Ӧ��ҵ������
	state varchar(32) not null,            --����״̬:����֧�֣�����̬����Ӫ̬������״̬
	primary key(id)
);
