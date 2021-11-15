/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2020/10/2 20:27:36                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�γ�') and o.name = 'FK_�γ�_REFERENCE_��ʦ')
alter table �γ�
   drop constraint FK_�γ�_REFERENCE_��ʦ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ѡ��') and o.name = 'FK_ѡ��_REFERENCE_ѧ��')
alter table ѡ��
   drop constraint FK_ѡ��_REFERENCE_ѧ��
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ѡ��') and o.name = 'FK_ѡ��_REFERENCE_�γ�')
alter table ѡ��
   drop constraint FK_ѡ��_REFERENCE_�γ�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ѧ��')
            and   type = 'U')
   drop table ѧ��
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��ʦ')
            and   type = 'U')
   drop table ��ʦ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�γ�')
            and   type = 'U')
   drop table �γ�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ѡ��')
            and   type = 'U')
   drop table ѡ��
go

/*==============================================================*/
/* Table: ѧ��                                                    */
/*==============================================================*/
create table ѧ�� (
   ѧ��                   int                  not null,
   ѧ������                 varchar(20)          null,
   �Ա�                   varchar(20)          null,
   ����                   int                  null,
   ����ϵ                  varchar(20)          null,
   constraint PK_ѧ�� primary key (ѧ��)
)
go

/*==============================================================*/
/* Table: ��ʦ                                                    */
/*==============================================================*/
create table ��ʦ (
   ��ʦ���                 int                  not null,
   ��ʦ��                  varchar(20)          not null,
   ��ʦ�Ա�                 varchar(20)          null,
   ��ʦ����Ժϵ               varchar(20)          null,
   constraint PK_��ʦ primary key (��ʦ���, ��ʦ��)
)
go

/*==============================================================*/
/* Table: �γ�                                                    */
/*==============================================================*/
create table �γ� (
   �γ̱��                 int                  not null,
   ��ʦ���                 int                  null,
   ��ʦ��                  varchar(20)          null,
   �γ���                  varchar(20)          null,
   ѧ��                   int                  null,
   ʱ��                   varchar(20)          null,
   constraint PK_�γ� primary key (�γ̱��)
)
go

/*==============================================================*/
/* Table: ѡ��                                                    */
/*==============================================================*/
create table ѡ�� (
   ѧ��                   int                  null,
   �γ̱��                 int                  null,
   �ɼ�                   int                  null
)
go

alter table �γ�
   add constraint FK_�γ�_REFERENCE_��ʦ foreign key (��ʦ���, ��ʦ��)
      references ��ʦ (��ʦ���, ��ʦ��)
go

alter table ѡ��
   add constraint FK_ѡ��_REFERENCE_ѧ�� foreign key (ѧ��)
      references ѧ�� (ѧ��)
go

alter table ѡ��
   add constraint FK_ѡ��_REFERENCE_�γ� foreign key (�γ̱��)
      references �γ� (�γ̱��)
go

