--****************************************************************************
-- ru_rule_def����ʵ����Ϣ��
--****************************************************************************
create table ru_rule_def
(
	id	varchar(64) not null,              --����id
	name varchar(64),             		   --������
	ruleType varchar(32),				   --�������ͣ�collection,drools...
	serviceType varchar(64),      		   --�����Ӧ��ҵ������
	state varchar(32) not null,            --����״̬:����֧�֣�����̬����Ӫ̬������״̬
	primary key(id)
);
