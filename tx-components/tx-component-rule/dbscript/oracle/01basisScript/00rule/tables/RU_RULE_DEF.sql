--****************************************************************************
-- ru_rule_def����ʵ����Ϣ��
--****************************************************************************
create table ru_rule_def
(
	id	varchar2(64) not null,              --����id
	rule varchar2(64) not null,             --����Ψһ����
	ruleType varchar2(32),				   --�������ͣ�collection,drools...
	serviceType varchar2(64),      		   --�����Ӧ��ҵ������
	state varchar2(32),					   --����״̬TEST,OPERATION,ERROR,STOP
	name varchar2(64),					   --������
	remark varchar2(4000),				   --����ע
	primary key(id)
);
create unique index idx_rule_def_01 on ru_rule_def(rule,ruleType,serviceType);
