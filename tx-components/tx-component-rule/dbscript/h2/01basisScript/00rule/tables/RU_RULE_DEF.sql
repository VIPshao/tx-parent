--****************************************************************************
-- ru_rule_def����ʵ����Ϣ��
--****************************************************************************
create table ru_rule_def
(
	id	varchar(64) not null,              --����id
	rule varchar(64),             		   --������
	ruleType varchar(32),				   --�������ͣ�collection,drools...
	serviceType varchar(64),      		   --�����Ӧ��ҵ������
	state varchar(32),					   --����״̬TEST,OPERATION,ERROR,STOP
	primary key(id)
);
create unique index idx_rule_def_01 on ru_rule_def(rule,ruleType,serviceType);
