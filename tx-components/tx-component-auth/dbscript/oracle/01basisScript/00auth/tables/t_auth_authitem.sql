--****************************************************************************
-- Ȩ�����t_auth_authitem
--****************************************************************************
create table t_auth_authitem
(
  id varchar2(64) not null,				--Ȩ����Ψһ��key 
  parentId varchar2(64),				--����Ȩ��id
  name varchar2(256),					--Ȩ������ 
  description varchar2(1024),			--Ȩ����Ŀ����
  authType varchar2(64) not null, 		--Ȩ������
  isViewAble number(1) default 1,		--�Ƿ�ɼ�
  isEditAble number(1) default 1,		--�Ƿ�ɱ༭
  isValid number(1) default 1,			--isValid
  primary key(id)
);

comment on table t_auth_authitem is 'Ȩ�������Ϣ��';
comment on column t_auth_authitem.id is 'Ȩ����Ψһ��key ';
comment on column t_auth_authitem.parentId is '����Ȩ��id';
comment on column t_auth_authitem.name is 'Ȩ������ ';
comment on column t_auth_authitem.description is 'Ȩ����Ŀ����';
comment on column t_auth_authitem.authType is 'Ȩ������';
comment on column t_auth_authitem.isViewAble is '�Ƿ�ɼ� 0:���ɼ� 1���ɼ�';
comment on column t_auth_authitem.isEditAble is '�Ƿ�ɱ༭ 0:���ɱ༭ 1���ɱ༭';
comment on column t_auth_authitem.isValid is '�Ƿ���Ч  0:��Ч 1����Ч';
