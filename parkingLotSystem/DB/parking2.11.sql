-------------------------------------------
-- Export file for user PARK             --
-- Created by LHF on 2017/2/12, 10:10:59 --
-------------------------------------------

set define off
spool parking2.11.log

prompt
prompt Creating table USERS
prompt ====================
prompt
create table USERS
(
  id          NUMBER(10) not null,
  name        NVARCHAR2(50) not null,
  realname    NVARCHAR2(50) not null,
  password    NVARCHAR2(100) not null,
  phone       NVARCHAR2(50) not null,
  address     NVARCHAR2(250) not null,
  email       NVARCHAR2(100),
  birthday    DATE,
  status      NUMBER(1) default 0,
  regdate     DATE default sysdate,
  integration NUMBER(10) default 0
)
;
comment on column USERS.id
  is '编号';
comment on column USERS.name
  is '用户名';
comment on column USERS.realname
  is '真实姓名';
comment on column USERS.password
  is '密码';
comment on column USERS.phone
  is '联系电话';
comment on column USERS.address
  is '地址';
comment on column USERS.email
  is '邮箱';
comment on column USERS.birthday
  is '生日';
comment on column USERS.status
  is '身份';
comment on column USERS.regdate
  is '注册日期默认当前系统时间';
comment on column USERS.integration
  is '积分';
alter table USERS
  add primary key (ID);

prompt
prompt Creating table PARKINGLOT
prompt =========================
prompt
create table PARKINGLOT
(
  id       NUMBER(10) not null,
  name     NVARCHAR2(50) not null,
  position NVARCHAR2(500) not null,
  volume   NUMBER(10) not null
)
;
alter table PARKINGLOT
  add primary key (ID);

prompt
prompt Creating table PARKINGSPACE
prompt ===========================
prompt
create table PARKINGSPACE
(
  id      NUMBER(10) not null,
  lot_id  NUMBER(10),
  user_id NUMBER(10),
  intime  TIMESTAMP(6) WITH LOCAL TIME ZONE default sysdate,
  status  NUMBER(10) default 0 not null,
  price   NUMBER(10,2) default 8
)
;
comment on column PARKINGSPACE.id
  is '编号';
comment on column PARKINGSPACE.lot_id
  is '所属车场id';
comment on column PARKINGSPACE.user_id
  is '用户id';
comment on column PARKINGSPACE.intime
  is '车进入时间';
comment on column PARKINGSPACE.status
  is '车位状态';
comment on column PARKINGSPACE.price
  is '收费';
alter table PARKINGSPACE
  add primary key (ID);
alter table PARKINGSPACE
  add foreign key (LOT_ID)
  references PARKINGLOT (ID);
alter table PARKINGSPACE
  add foreign key (USER_ID)
  references USERS (ID);

prompt
prompt Creating table CARRECORD
prompt ========================
prompt
create table CARRECORD
(
  id          NUMBER(10) not null,
  space_id    NUMBER(10) not null,
  user_id     NUMBER(10) not null,
  parkingtime NUMBER(10) not null,
  totalprice  NUMBER(10,2) not null,
  carno       NVARCHAR2(20),
  intime      TIMESTAMP(6) WITH LOCAL TIME ZONE,
  outtime     TIMESTAMP(6) WITH LOCAL TIME ZONE default sysdate
)
;
comment on column CARRECORD.id
  is '主键';
comment on column CARRECORD.space_id
  is '车位外键';
comment on column CARRECORD.user_id
  is '用户外键';
comment on column CARRECORD.parkingtime
  is '停车时间';
comment on column CARRECORD.totalprice
  is '总价格';
comment on column CARRECORD.carno
  is '车牌号';
comment on column CARRECORD.intime
  is '进入时间';
comment on column CARRECORD.outtime
  is '开出时间';
alter table CARRECORD
  add primary key (ID);
alter table CARRECORD
  add foreign key (SPACE_ID)
  references PARKINGSPACE (ID);
alter table CARRECORD
  add foreign key (USER_ID)
  references USERS (ID);

prompt
prompt Creating table LOSTANDFOUND
prompt ===========================
prompt
create table LOSTANDFOUND
(
  id          NUMBER(10) not null,
  name        NVARCHAR2(100) not null,
  description NVARCHAR2(500) not null,
  user_id     NUMBER(10) not null,
  status      NUMBER(10) default 0 not null,
  publishdate DATE default sysdate
)
;
comment on column LOSTANDFOUND.status
  is '失物状态';
comment on column LOSTANDFOUND.publishdate
  is '发布日期';
alter table LOSTANDFOUND
  add primary key (ID);

prompt
prompt Creating table NOTICE
prompt =====================
prompt
create table NOTICE
(
  id          NUMBER(10) not null,
  title       NVARCHAR2(100) not null,
  content     NVARCHAR2(1000) not null,
  publishdate DATE default sysdate
)
;
alter table NOTICE
  add primary key (ID);

prompt
prompt Creating table PRICETYPE
prompt ========================
prompt
create table PRICETYPE
(
  id    NUMBER(10) not null,
  price NUMBER(10,2) not null
)
;
comment on column PRICETYPE.id
  is '类型id';
comment on column PRICETYPE.price
  is '价格';
alter table PRICETYPE
  add primary key (ID);

prompt
prompt Creating table REPORTS
prompt ======================
prompt
create table REPORTS
(
  id    NUMBER(10) not null,
  time  DATE,
  money NUMBER(10,2)
)
;
comment on table REPORTS
  is '报表';
comment on column REPORTS.id
  is '主键';
comment on column REPORTS.time
  is '日期';
comment on column REPORTS.money
  is '收益';
alter table REPORTS
  add constraint REPORTID primary key (ID);

prompt
prompt Creating table SCHEDULE
prompt =======================
prompt
create table SCHEDULE
(
  id         NUMBER(10) not null,
  space_id   NUMBER(10) not null,
  carno      NVARCHAR2(100),
  user_id    NUMBER(10) not null,
  sctime     TIMESTAMP(6) WITH LOCAL TIME ZONE default sysdate,
  arrivetime TIMESTAMP(6) WITH LOCAL TIME ZONE
)
;
comment on column SCHEDULE.id
  is '编号';
comment on column SCHEDULE.space_id
  is '车位id';
comment on column SCHEDULE.carno
  is '车牌号';
comment on column SCHEDULE.user_id
  is '用户id';
comment on column SCHEDULE.sctime
  is '预定时间';
comment on column SCHEDULE.arrivetime
  is '预计到达时间';
alter table SCHEDULE
  add primary key (ID);
alter table SCHEDULE
  add foreign key (SPACE_ID)
  references PARKINGSPACE (ID);
alter table SCHEDULE
  add foreign key (USER_ID)
  references USERS (ID);

prompt
prompt Creating sequence LOST_SEQ
prompt ==========================
prompt
create sequence LOST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 92
increment by 1
cache 20;

prompt
prompt Creating sequence NOTICE_SEQ
prompt ============================
prompt
create sequence NOTICE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 76
increment by 1
cache 20;

prompt
prompt Creating sequence PARKINGLOT_SEQ
prompt ================================
prompt
create sequence PARKINGLOT_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 44
increment by 1
cache 20;

prompt
prompt Creating sequence PARKINGSPACE_SEQ
prompt ==================================
prompt
create sequence PARKINGSPACE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 245
increment by 1
cache 20;

prompt
prompt Creating sequence RECORD_SEQ
prompt ============================
prompt
create sequence RECORD_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence REPORT_SEQ
prompt ============================
prompt
create sequence REPORT_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence SCH_SEQ
prompt =========================
prompt
create sequence SCH_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence USERS_SEQ
prompt ===========================
prompt
create sequence USERS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 102
increment by 1
cache 20;


spool off
