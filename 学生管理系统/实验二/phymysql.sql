/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2020/9/24 9:43:56                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('产品部分') and o.name = 'FK_产品部分_REFERENCE_售后服务记录部分')
alter table 产品部分
   drop constraint FK_产品部分_REFERENCE_售后服务记录部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('产品部分') and o.name = 'FK_产品部分_REFERENCE_供应商部分')
alter table 产品部分
   drop constraint FK_产品部分_REFERENCE_供应商部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('付款部分') and o.name = 'FK_付款部分_REFERENCE_客户部分')
alter table 付款部分
   drop constraint FK_付款部分_REFERENCE_客户部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('合同_产品部分') and o.name = 'FK_合同_产品部分_REFERENCE_合同契约维修部份')
alter table 合同_产品部分
   drop constraint FK_合同_产品部分_REFERENCE_合同契约维修部份
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('合同_产品部分') and o.name = 'FK_合同_产品部分_REFERENCE_产品部分')
alter table 合同_产品部分
   drop constraint FK_合同_产品部分_REFERENCE_产品部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('合同契约维修部份') and o.name = 'FK_合同契约维修部份_REFERENCE_零件部分')
alter table 合同契约维修部份
   drop constraint FK_合同契约维修部份_REFERENCE_零件部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('合同契约维修部份') and o.name = 'FK_合同契约维修部份_REFERENCE_付款部分')
alter table 合同契约维修部份
   drop constraint FK_合同契约维修部份_REFERENCE_付款部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('合同契约维修部份') and o.name = 'FK_合同契约维修部份_REFERENCE_客户部分')
alter table 合同契约维修部份
   drop constraint FK_合同契约维修部份_REFERENCE_客户部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后服务记录部分') and o.name = 'FK_售后服务记录部分_REFERENCE_付款部分')
alter table 售后服务记录部分
   drop constraint FK_售后服务记录部分_REFERENCE_付款部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后服务记录部分') and o.name = 'FK_售后服务记录部分_REFERENCE_合同契约维修部份')
alter table 售后服务记录部分
   drop constraint FK_售后服务记录部分_REFERENCE_合同契约维修部份
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后服务记录部分') and o.name = 'FK_售后服务记录部分_REFERENCE_产品部分')
alter table 售后服务记录部分
   drop constraint FK_售后服务记录部分_REFERENCE_产品部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后服务记录部分') and o.name = 'FK_售后服务记录部分_REFERENCE_客户部分')
alter table 售后服务记录部分
   drop constraint FK_售后服务记录部分_REFERENCE_客户部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后维修部分') and o.name = 'FK_售后维修部分_REFERENCE_售后服务记录部分')
alter table 售后维修部分
   drop constraint FK_售后维修部分_REFERENCE_售后服务记录部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后维修部分') and o.name = 'FK_售后维修部分_REFERENCE_零件部分')
alter table 售后维修部分
   drop constraint FK_售后维修部分_REFERENCE_零件部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('售后维修部分') and o.name = 'FK_售后维修部分_REFERENCE_服务人员部分')
alter table 售后维修部分
   drop constraint FK_售后维修部分_REFERENCE_服务人员部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('支付_付款部分') and o.name = 'FK_支付_付款部分_REFERENCE_支付部分')
alter table 支付_付款部分
   drop constraint FK_支付_付款部分_REFERENCE_支付部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('支付_付款部分') and o.name = 'FK_支付_付款部分_REFERENCE_付款部分')
alter table 支付_付款部分
   drop constraint FK_支付_付款部分_REFERENCE_付款部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('服务人员部分') and o.name = 'FK_服务人员部分_REFERENCE_领导部分')
alter table 服务人员部分
   drop constraint FK_服务人员部分_REFERENCE_领导部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('维修方式部分') and o.name = 'FK_维修方式部分_REFERENCE_零件部分')
alter table 维修方式部分
   drop constraint FK_维修方式部分_REFERENCE_零件部分
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('维修方式部分') and o.name = 'FK_维修方式部分_REFERENCE_服务人员部分')
alter table 维修方式部分
   drop constraint FK_维修方式部分_REFERENCE_服务人员部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('产品部分')
            and   type = 'U')
   drop table 产品部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('付款部分')
            and   type = 'U')
   drop table 付款部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('供应商部分')
            and   type = 'U')
   drop table 供应商部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('合同_产品部分')
            and   type = 'U')
   drop table 合同_产品部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('合同契约维修部份')
            and   type = 'U')
   drop table 合同契约维修部份
go

if exists (select 1
            from  sysobjects
           where  id = object_id('售后服务记录部分')
            and   type = 'U')
   drop table 售后服务记录部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('售后维修部分')
            and   type = 'U')
   drop table 售后维修部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('客户部分')
            and   type = 'U')
   drop table 客户部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('支付_付款部分')
            and   type = 'U')
   drop table 支付_付款部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('支付部分')
            and   type = 'U')
   drop table 支付部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('服务人员部分')
            and   type = 'U')
   drop table 服务人员部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('维修方式部分')
            and   type = 'U')
   drop table 维修方式部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('零件部分')
            and   type = 'U')
   drop table 零件部分
go

if exists (select 1
            from  sysobjects
           where  id = object_id('领导部分')
            and   type = 'U')
   drop table 领导部分
go

/*==============================================================*/
/* Table: 产品部分                                                  */
/*==============================================================*/
create table 产品部分 (
   售后服务记录编号             int                  null,
   售后服务产品编号             int                  not null,
   供应商编号                int                  null,
   售后服务产品名              varchar(20)          null,
   constraint PK_产品部分 primary key (售后服务产品编号)
)
go

/*==============================================================*/
/* Table: 付款部分                                                  */
/*==============================================================*/
create table 付款部分 (
   支付编号                 int                  not null,
   客户编号                 int                  null,
   数量                   int                  null,
   付款日期                 int                  null,
   金额                   int                  null,
   constraint PK_付款部分 primary key (支付编号)
)
go

/*==============================================================*/
/* Table: 供应商部分                                                 */
/*==============================================================*/
create table 供应商部分 (
   供应商编号                int                  not null,
   供应商名                 varchar(20)          null,
   constraint PK_供应商部分 primary key (供应商编号)
)
go

/*==============================================================*/
/* Table: 合同_产品部分                                               */
/*==============================================================*/
create table 合同_产品部分 (
   合同编号                 int                  null,
   维修服务生效日期             varchar(20)          null,
   维修服务截止日期             varchar(20)          null,
   售后服务产品编号             int                  null,
   价格                   int                  null,
   打折                   int                  null,
   数量                   int                  null
)
go

/*==============================================================*/
/* Table: 合同契约维修部份                                              */
/*==============================================================*/
create table 合同契约维修部份 (
   合同编号                 int                  not null,
   支付编号                 int                  not null,
   客户编号                 int                  null,
   维修零件编号               int                  null,
   维修服务生效日期             varchar(20)          not null,
   维修服务截止日期             varchar(20)          not null,
   constraint PK_合同契约维修部份 primary key (合同编号, 维修服务生效日期, 维修服务截止日期)
)
go

/*==============================================================*/
/* Table: 售后服务记录部分                                              */
/*==============================================================*/
create table 售后服务记录部分 (
   售后服务记录编号             int                  not null,
   合同编号                 int                  null,
   维修服务生效日期             varchar(20)          null,
   维修服务截止日期             varchar(20)          null,
   支付编号                 int                  null,
   客户编号                 int                  null,
   售后服务产品编号             int                  null,
   服务类型                 int                  null,
   constraint PK_售后服务记录部分 primary key (售后服务记录编号)
)
go

/*==============================================================*/
/* Table: 售后维修部分                                                */
/*==============================================================*/
create table 售后维修部分 (
   维修零件编号               int                  null,
   售后服务记录编号             int                  null,
   服务人员编号               int                  null,
   维修服务编号               int                  null,
   维修记录编号               int                  null
)
go

/*==============================================================*/
/* Table: 客户部分                                                  */
/*==============================================================*/
create table 客户部分 (
   客户编号                 int                  not null,
   客户名                  varchar(20)          null,
   客户需求                 varchar(20)          null,
   constraint PK_客户部分 primary key (客户编号)
)
go

/*==============================================================*/
/* Table: 支付_付款部分                                               */
/*==============================================================*/
create table 支付_付款部分 (
   支付编号                 int                  null,
   付款部_支付编号             int                  null
)
go

/*==============================================================*/
/* Table: 支付部分                                                  */
/*==============================================================*/
create table 支付部分 (
   数量                   int                  null,
   支付日期                 int                  null,
   支付编号                 int                  not null,
   金额                   int                  null,
   constraint PK_支付部分 primary key (支付编号)
)
go

/*==============================================================*/
/* Table: 服务人员部分                                                */
/*==============================================================*/
create table 服务人员部分 (
   服务人员姓名               varchar(20)          null,
   服务人员编号               int                  not null,
   领导编号                 int                  null,
   联系方式                 varchar(20)          null,
   constraint PK_服务人员部分 primary key (服务人员编号)
)
go

/*==============================================================*/
/* Table: 维修方式部分                                                */
/*==============================================================*/
create table 维修方式部分 (
   服务人员编号               int                  null,
   维修零件编号               int                  null
)
go

/*==============================================================*/
/* Table: 零件部分                                                  */
/*==============================================================*/
create table 零件部分 (
   维修零件编号               int                  not null,
   维修零件名                varchar(20)          null,
   constraint PK_零件部分 primary key (维修零件编号)
)
go

/*==============================================================*/
/* Table: 领导部分                                                  */
/*==============================================================*/
create table 领导部分 (
   领导编号                 int                  not null,
   领导姓名                 varchar(20)          null,
   constraint PK_领导部分 primary key (领导编号)
)
go

alter table 产品部分
   add constraint FK_产品部分_REFERENCE_售后服务记录部分 foreign key (售后服务记录编号)
      references 售后服务记录部分 (售后服务记录编号)
go

alter table 产品部分
   add constraint FK_产品部分_REFERENCE_供应商部分 foreign key (供应商编号)
      references 供应商部分 (供应商编号)
go

alter table 付款部分
   add constraint FK_付款部分_REFERENCE_客户部分 foreign key (客户编号)
      references 客户部分 (客户编号)
go

alter table 合同_产品部分
   add constraint FK_合同_产品部分_REFERENCE_合同契约维修部份 foreign key (合同编号, 维修服务生效日期, 维修服务截止日期)
      references 合同契约维修部份 (合同编号, 维修服务生效日期, 维修服务截止日期)
go

alter table 合同_产品部分
   add constraint FK_合同_产品部分_REFERENCE_产品部分 foreign key (售后服务产品编号)
      references 产品部分 (售后服务产品编号)
go

alter table 合同契约维修部份
   add constraint FK_合同契约维修部份_REFERENCE_零件部分 foreign key (维修零件编号)
      references 零件部分 (维修零件编号)
go

alter table 合同契约维修部份
   add constraint FK_合同契约维修部份_REFERENCE_付款部分 foreign key (支付编号)
      references 付款部分 (支付编号)
go

alter table 合同契约维修部份
   add constraint FK_合同契约维修部份_REFERENCE_客户部分 foreign key (客户编号)
      references 客户部分 (客户编号)
go

alter table 售后服务记录部分
   add constraint FK_售后服务记录部分_REFERENCE_付款部分 foreign key (支付编号)
      references 付款部分 (支付编号)
go

alter table 售后服务记录部分
   add constraint FK_售后服务记录部分_REFERENCE_合同契约维修部份 foreign key (合同编号, 维修服务生效日期, 维修服务截止日期)
      references 合同契约维修部份 (合同编号, 维修服务生效日期, 维修服务截止日期)
go

alter table 售后服务记录部分
   add constraint FK_售后服务记录部分_REFERENCE_产品部分 foreign key (售后服务产品编号)
      references 产品部分 (售后服务产品编号)
go

alter table 售后服务记录部分
   add constraint FK_售后服务记录部分_REFERENCE_客户部分 foreign key (客户编号)
      references 客户部分 (客户编号)
go

alter table 售后维修部分
   add constraint FK_售后维修部分_REFERENCE_售后服务记录部分 foreign key (售后服务记录编号)
      references 售后服务记录部分 (售后服务记录编号)
go

alter table 售后维修部分
   add constraint FK_售后维修部分_REFERENCE_零件部分 foreign key (维修零件编号)
      references 零件部分 (维修零件编号)
go

alter table 售后维修部分
   add constraint FK_售后维修部分_REFERENCE_服务人员部分 foreign key (服务人员编号)
      references 服务人员部分 (服务人员编号)
go

alter table 支付_付款部分
   add constraint FK_支付_付款部分_REFERENCE_支付部分 foreign key (支付编号)
      references 支付部分 (支付编号)
go

alter table 支付_付款部分
   add constraint FK_支付_付款部分_REFERENCE_付款部分 foreign key (付款部_支付编号)
      references 付款部分 (支付编号)
go

alter table 服务人员部分
   add constraint FK_服务人员部分_REFERENCE_领导部分 foreign key (领导编号)
      references 领导部分 (领导编号)
go

alter table 维修方式部分
   add constraint FK_维修方式部分_REFERENCE_零件部分 foreign key (维修零件编号)
      references 零件部分 (维修零件编号)
go

alter table 维修方式部分
   add constraint FK_维修方式部分_REFERENCE_服务人员部分 foreign key (服务人员编号)
      references 服务人员部分 (服务人员编号)
go

