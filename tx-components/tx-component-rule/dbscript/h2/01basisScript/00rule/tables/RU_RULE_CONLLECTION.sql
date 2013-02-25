--****************************************************************************
-- ru_rule_collection规则集合表
--****************************************************************************
create table ru_rule_collection
(
	ruleId varchar(64) not null,		   --规则集合id
	ruleOrder integer not null,			   --规则集合顺序

	id	varchar(64) not null,              --规则id
	name varchar(64),             		   --规则名
	ruleType varchar(32),				   --规则类型：collection,drools...
	serviceType varchar(64),      		   --规则对应的业务类型
	state varchar(32) not null,            --规则状态:用以支持，测试态，运营态等流程状态
	primary key(id)
);
