/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2020/10/2 20:27:36                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('课程') and o.name = 'FK_课程_REFERENCE_教师')
alter table 课程
   drop constraint FK_课程_REFERENCE_教师
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('选课') and o.name = 'FK_选课_REFERENCE_学生')
alter table 选课
   drop constraint FK_选课_REFERENCE_学生
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('选课') and o.name = 'FK_选课_REFERENCE_课程')
alter table 选课
   drop constraint FK_选课_REFERENCE_课程
go

if exists (select 1
            from  sysobjects
           where  id = object_id('学生')
            and   type = 'U')
   drop table 学生
go

if exists (select 1
            from  sysobjects
           where  id = object_id('教师')
            and   type = 'U')
   drop table 教师
go

if exists (select 1
            from  sysobjects
           where  id = object_id('课程')
            and   type = 'U')
   drop table 课程
go

if exists (select 1
            from  sysobjects
           where  id = object_id('选课')
            and   type = 'U')
   drop table 选课
go

/*==============================================================*/
/* Table: 学生                                                    */
/*==============================================================*/
create table 学生 (
   学号                   int                  not null,
   学生姓名                 varchar(20)          null,
   性别                   varchar(20)          null,
   年龄                   int                  null,
   所在系                  varchar(20)          null,
   constraint PK_学生 primary key (学号)
)
go

/*==============================================================*/
/* Table: 教师                                                    */
/*==============================================================*/
create table 教师 (
   教师编号                 int                  not null,
   教师名                  varchar(20)          not null,
   教师性别                 varchar(20)          null,
   教师所在院系               varchar(20)          null,
   constraint PK_教师 primary key (教师编号, 教师名)
)
go

/*==============================================================*/
/* Table: 课程                                                    */
/*==============================================================*/
create table 课程 (
   课程编号                 int                  not null,
   教师编号                 int                  null,
   教师名                  varchar(20)          null,
   课程名                  varchar(20)          null,
   学分                   int                  null,
   时间                   varchar(20)          null,
   constraint PK_课程 primary key (课程编号)
)
go

/*==============================================================*/
/* Table: 选课                                                    */
/*==============================================================*/
create table 选课 (
   学号                   int                  null,
   课程编号                 int                  null,
   成绩                   int                  null
)
go

alter table 课程
   add constraint FK_课程_REFERENCE_教师 foreign key (教师编号, 教师名)
      references 教师 (教师编号, 教师名)
go

alter table 选课
   add constraint FK_选课_REFERENCE_学生 foreign key (学号)
      references 学生 (学号)
go

alter table 选课
   add constraint FK_选课_REFERENCE_课程 foreign key (课程编号)
      references 课程 (课程编号)
go

