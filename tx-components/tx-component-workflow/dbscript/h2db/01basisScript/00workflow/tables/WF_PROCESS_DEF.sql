--****************************************************************************
-- workflow����ʵ����Ϣ��
--****************************************************************************
create table wf_process_def
(
	id	varchar(64) not null,              --���̶���id:��ϵͳ������
	key varchar(64) not null,
	name varchar(64) not null,
	
	isValid integer not null,
	loginName varchar(64) not null,
	password varchar(64) not null,
	primary key(id)
);
    
    /** ���̶���key:��Ӧactiviti�е�key */
    private String key;
    
    /** ������ */
    private String name;
    
    /** ������� */
    private String category;
    
    /** ���̰汾�� */
    private String version;
    
    /** ���̶����Ӧ��ҵ������ */
    private String serviceType;
    
    /** ����״̬:����֧�֣�����̬����Ӫ̬������״̬ */
    private String state = WorkFlowConstants.PROCESS_DEFINITION_STATE_TEST;
create index idx_demo_01 on wd_demo(lastupdatedate);
create unique index idx_demo_02 on wd_demo(loginName);

