/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2020/9/24 9:43:56                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��Ʒ����') and o.name = 'FK_��Ʒ����_REFERENCE_�ۺ�����¼����')
alter table ��Ʒ����
   drop constraint FK_��Ʒ����_REFERENCE_�ۺ�����¼����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��Ʒ����') and o.name = 'FK_��Ʒ����_REFERENCE_��Ӧ�̲���')
alter table ��Ʒ����
   drop constraint FK_��Ʒ����_REFERENCE_��Ӧ�̲���
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�����') and o.name = 'FK_�����_REFERENCE_�ͻ�����')
alter table �����
   drop constraint FK_�����_REFERENCE_�ͻ�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��ͬ_��Ʒ����') and o.name = 'FK_��ͬ_��Ʒ����_REFERENCE_��ͬ��Լά�޲���')
alter table ��ͬ_��Ʒ����
   drop constraint FK_��ͬ_��Ʒ����_REFERENCE_��ͬ��Լά�޲���
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��ͬ_��Ʒ����') and o.name = 'FK_��ͬ_��Ʒ����_REFERENCE_��Ʒ����')
alter table ��ͬ_��Ʒ����
   drop constraint FK_��ͬ_��Ʒ����_REFERENCE_��Ʒ����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��ͬ��Լά�޲���') and o.name = 'FK_��ͬ��Լά�޲���_REFERENCE_�������')
alter table ��ͬ��Լά�޲���
   drop constraint FK_��ͬ��Լά�޲���_REFERENCE_�������
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��ͬ��Լά�޲���') and o.name = 'FK_��ͬ��Լά�޲���_REFERENCE_�����')
alter table ��ͬ��Լά�޲���
   drop constraint FK_��ͬ��Լά�޲���_REFERENCE_�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('��ͬ��Լά�޲���') and o.name = 'FK_��ͬ��Լά�޲���_REFERENCE_�ͻ�����')
alter table ��ͬ��Լά�޲���
   drop constraint FK_��ͬ��Լά�޲���_REFERENCE_�ͻ�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�����¼����') and o.name = 'FK_�ۺ�����¼����_REFERENCE_�����')
alter table �ۺ�����¼����
   drop constraint FK_�ۺ�����¼����_REFERENCE_�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�����¼����') and o.name = 'FK_�ۺ�����¼����_REFERENCE_��ͬ��Լά�޲���')
alter table �ۺ�����¼����
   drop constraint FK_�ۺ�����¼����_REFERENCE_��ͬ��Լά�޲���
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�����¼����') and o.name = 'FK_�ۺ�����¼����_REFERENCE_��Ʒ����')
alter table �ۺ�����¼����
   drop constraint FK_�ۺ�����¼����_REFERENCE_��Ʒ����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�����¼����') and o.name = 'FK_�ۺ�����¼����_REFERENCE_�ͻ�����')
alter table �ۺ�����¼����
   drop constraint FK_�ۺ�����¼����_REFERENCE_�ͻ�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�ά�޲���') and o.name = 'FK_�ۺ�ά�޲���_REFERENCE_�ۺ�����¼����')
alter table �ۺ�ά�޲���
   drop constraint FK_�ۺ�ά�޲���_REFERENCE_�ۺ�����¼����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�ά�޲���') and o.name = 'FK_�ۺ�ά�޲���_REFERENCE_�������')
alter table �ۺ�ά�޲���
   drop constraint FK_�ۺ�ά�޲���_REFERENCE_�������
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�ۺ�ά�޲���') and o.name = 'FK_�ۺ�ά�޲���_REFERENCE_������Ա����')
alter table �ۺ�ά�޲���
   drop constraint FK_�ۺ�ά�޲���_REFERENCE_������Ա����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('֧��_�����') and o.name = 'FK_֧��_�����_REFERENCE_֧������')
alter table ֧��_�����
   drop constraint FK_֧��_�����_REFERENCE_֧������
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('֧��_�����') and o.name = 'FK_֧��_�����_REFERENCE_�����')
alter table ֧��_�����
   drop constraint FK_֧��_�����_REFERENCE_�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('������Ա����') and o.name = 'FK_������Ա����_REFERENCE_�쵼����')
alter table ������Ա����
   drop constraint FK_������Ա����_REFERENCE_�쵼����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ά�޷�ʽ����') and o.name = 'FK_ά�޷�ʽ����_REFERENCE_�������')
alter table ά�޷�ʽ����
   drop constraint FK_ά�޷�ʽ����_REFERENCE_�������
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ά�޷�ʽ����') and o.name = 'FK_ά�޷�ʽ����_REFERENCE_������Ա����')
alter table ά�޷�ʽ����
   drop constraint FK_ά�޷�ʽ����_REFERENCE_������Ա����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��Ʒ����')
            and   type = 'U')
   drop table ��Ʒ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�����')
            and   type = 'U')
   drop table �����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��Ӧ�̲���')
            and   type = 'U')
   drop table ��Ӧ�̲���
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��ͬ_��Ʒ����')
            and   type = 'U')
   drop table ��ͬ_��Ʒ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��ͬ��Լά�޲���')
            and   type = 'U')
   drop table ��ͬ��Լά�޲���
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�ۺ�����¼����')
            and   type = 'U')
   drop table �ۺ�����¼����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�ۺ�ά�޲���')
            and   type = 'U')
   drop table �ۺ�ά�޲���
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�ͻ�����')
            and   type = 'U')
   drop table �ͻ�����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('֧��_�����')
            and   type = 'U')
   drop table ֧��_�����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('֧������')
            and   type = 'U')
   drop table ֧������
go

if exists (select 1
            from  sysobjects
           where  id = object_id('������Ա����')
            and   type = 'U')
   drop table ������Ա����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ά�޷�ʽ����')
            and   type = 'U')
   drop table ά�޷�ʽ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�������')
            and   type = 'U')
   drop table �������
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�쵼����')
            and   type = 'U')
   drop table �쵼����
go

/*==============================================================*/
/* Table: ��Ʒ����                                                  */
/*==============================================================*/
create table ��Ʒ���� (
   �ۺ�����¼���             int                  null,
   �ۺ�����Ʒ���             int                  not null,
   ��Ӧ�̱��                int                  null,
   �ۺ�����Ʒ��              varchar(20)          null,
   constraint PK_��Ʒ���� primary key (�ۺ�����Ʒ���)
)
go

/*==============================================================*/
/* Table: �����                                                  */
/*==============================================================*/
create table ����� (
   ֧�����                 int                  not null,
   �ͻ����                 int                  null,
   ����                   int                  null,
   ��������                 int                  null,
   ���                   int                  null,
   constraint PK_����� primary key (֧�����)
)
go

/*==============================================================*/
/* Table: ��Ӧ�̲���                                                 */
/*==============================================================*/
create table ��Ӧ�̲��� (
   ��Ӧ�̱��                int                  not null,
   ��Ӧ����                 varchar(20)          null,
   constraint PK_��Ӧ�̲��� primary key (��Ӧ�̱��)
)
go

/*==============================================================*/
/* Table: ��ͬ_��Ʒ����                                               */
/*==============================================================*/
create table ��ͬ_��Ʒ���� (
   ��ͬ���                 int                  null,
   ά�޷�����Ч����             varchar(20)          null,
   ά�޷����ֹ����             varchar(20)          null,
   �ۺ�����Ʒ���             int                  null,
   �۸�                   int                  null,
   ����                   int                  null,
   ����                   int                  null
)
go

/*==============================================================*/
/* Table: ��ͬ��Լά�޲���                                              */
/*==============================================================*/
create table ��ͬ��Լά�޲��� (
   ��ͬ���                 int                  not null,
   ֧�����                 int                  not null,
   �ͻ����                 int                  null,
   ά��������               int                  null,
   ά�޷�����Ч����             varchar(20)          not null,
   ά�޷����ֹ����             varchar(20)          not null,
   constraint PK_��ͬ��Լά�޲��� primary key (��ͬ���, ά�޷�����Ч����, ά�޷����ֹ����)
)
go

/*==============================================================*/
/* Table: �ۺ�����¼����                                              */
/*==============================================================*/
create table �ۺ�����¼���� (
   �ۺ�����¼���             int                  not null,
   ��ͬ���                 int                  null,
   ά�޷�����Ч����             varchar(20)          null,
   ά�޷����ֹ����             varchar(20)          null,
   ֧�����                 int                  null,
   �ͻ����                 int                  null,
   �ۺ�����Ʒ���             int                  null,
   ��������                 int                  null,
   constraint PK_�ۺ�����¼���� primary key (�ۺ�����¼���)
)
go

/*==============================================================*/
/* Table: �ۺ�ά�޲���                                                */
/*==============================================================*/
create table �ۺ�ά�޲��� (
   ά��������               int                  null,
   �ۺ�����¼���             int                  null,
   ������Ա���               int                  null,
   ά�޷�����               int                  null,
   ά�޼�¼���               int                  null
)
go

/*==============================================================*/
/* Table: �ͻ�����                                                  */
/*==============================================================*/
create table �ͻ����� (
   �ͻ����                 int                  not null,
   �ͻ���                  varchar(20)          null,
   �ͻ�����                 varchar(20)          null,
   constraint PK_�ͻ����� primary key (�ͻ����)
)
go

/*==============================================================*/
/* Table: ֧��_�����                                               */
/*==============================================================*/
create table ֧��_����� (
   ֧�����                 int                  null,
   ���_֧�����             int                  null
)
go

/*==============================================================*/
/* Table: ֧������                                                  */
/*==============================================================*/
create table ֧������ (
   ����                   int                  null,
   ֧������                 int                  null,
   ֧�����                 int                  not null,
   ���                   int                  null,
   constraint PK_֧������ primary key (֧�����)
)
go

/*==============================================================*/
/* Table: ������Ա����                                                */
/*==============================================================*/
create table ������Ա���� (
   ������Ա����               varchar(20)          null,
   ������Ա���               int                  not null,
   �쵼���                 int                  null,
   ��ϵ��ʽ                 varchar(20)          null,
   constraint PK_������Ա���� primary key (������Ա���)
)
go

/*==============================================================*/
/* Table: ά�޷�ʽ����                                                */
/*==============================================================*/
create table ά�޷�ʽ���� (
   ������Ա���               int                  null,
   ά��������               int                  null
)
go

/*==============================================================*/
/* Table: �������                                                  */
/*==============================================================*/
create table ������� (
   ά��������               int                  not null,
   ά�������                varchar(20)          null,
   constraint PK_������� primary key (ά��������)
)
go

/*==============================================================*/
/* Table: �쵼����                                                  */
/*==============================================================*/
create table �쵼���� (
   �쵼���                 int                  not null,
   �쵼����                 varchar(20)          null,
   constraint PK_�쵼���� primary key (�쵼���)
)
go

alter table ��Ʒ����
   add constraint FK_��Ʒ����_REFERENCE_�ۺ�����¼���� foreign key (�ۺ�����¼���)
      references �ۺ�����¼���� (�ۺ�����¼���)
go

alter table ��Ʒ����
   add constraint FK_��Ʒ����_REFERENCE_��Ӧ�̲��� foreign key (��Ӧ�̱��)
      references ��Ӧ�̲��� (��Ӧ�̱��)
go

alter table �����
   add constraint FK_�����_REFERENCE_�ͻ����� foreign key (�ͻ����)
      references �ͻ����� (�ͻ����)
go

alter table ��ͬ_��Ʒ����
   add constraint FK_��ͬ_��Ʒ����_REFERENCE_��ͬ��Լά�޲��� foreign key (��ͬ���, ά�޷�����Ч����, ά�޷����ֹ����)
      references ��ͬ��Լά�޲��� (��ͬ���, ά�޷�����Ч����, ά�޷����ֹ����)
go

alter table ��ͬ_��Ʒ����
   add constraint FK_��ͬ_��Ʒ����_REFERENCE_��Ʒ���� foreign key (�ۺ�����Ʒ���)
      references ��Ʒ���� (�ۺ�����Ʒ���)
go

alter table ��ͬ��Լά�޲���
   add constraint FK_��ͬ��Լά�޲���_REFERENCE_������� foreign key (ά��������)
      references ������� (ά��������)
go

alter table ��ͬ��Լά�޲���
   add constraint FK_��ͬ��Լά�޲���_REFERENCE_����� foreign key (֧�����)
      references ����� (֧�����)
go

alter table ��ͬ��Լά�޲���
   add constraint FK_��ͬ��Լά�޲���_REFERENCE_�ͻ����� foreign key (�ͻ����)
      references �ͻ����� (�ͻ����)
go

alter table �ۺ�����¼����
   add constraint FK_�ۺ�����¼����_REFERENCE_����� foreign key (֧�����)
      references ����� (֧�����)
go

alter table �ۺ�����¼����
   add constraint FK_�ۺ�����¼����_REFERENCE_��ͬ��Լά�޲��� foreign key (��ͬ���, ά�޷�����Ч����, ά�޷����ֹ����)
      references ��ͬ��Լά�޲��� (��ͬ���, ά�޷�����Ч����, ά�޷����ֹ����)
go

alter table �ۺ�����¼����
   add constraint FK_�ۺ�����¼����_REFERENCE_��Ʒ���� foreign key (�ۺ�����Ʒ���)
      references ��Ʒ���� (�ۺ�����Ʒ���)
go

alter table �ۺ�����¼����
   add constraint FK_�ۺ�����¼����_REFERENCE_�ͻ����� foreign key (�ͻ����)
      references �ͻ����� (�ͻ����)
go

alter table �ۺ�ά�޲���
   add constraint FK_�ۺ�ά�޲���_REFERENCE_�ۺ�����¼���� foreign key (�ۺ�����¼���)
      references �ۺ�����¼���� (�ۺ�����¼���)
go

alter table �ۺ�ά�޲���
   add constraint FK_�ۺ�ά�޲���_REFERENCE_������� foreign key (ά��������)
      references ������� (ά��������)
go

alter table �ۺ�ά�޲���
   add constraint FK_�ۺ�ά�޲���_REFERENCE_������Ա���� foreign key (������Ա���)
      references ������Ա���� (������Ա���)
go

alter table ֧��_�����
   add constraint FK_֧��_�����_REFERENCE_֧������ foreign key (֧�����)
      references ֧������ (֧�����)
go

alter table ֧��_�����
   add constraint FK_֧��_�����_REFERENCE_����� foreign key (���_֧�����)
      references ����� (֧�����)
go

alter table ������Ա����
   add constraint FK_������Ա����_REFERENCE_�쵼���� foreign key (�쵼���)
      references �쵼���� (�쵼���)
go

alter table ά�޷�ʽ����
   add constraint FK_ά�޷�ʽ����_REFERENCE_������� foreign key (ά��������)
      references ������� (ά��������)
go

alter table ά�޷�ʽ����
   add constraint FK_ά�޷�ʽ����_REFERENCE_������Ա���� foreign key (������Ա���)
      references ������Ա���� (������Ա���)
go

