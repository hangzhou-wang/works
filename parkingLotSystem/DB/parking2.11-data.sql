prompt PL/SQL Developer import file
prompt Created on 2017年2月12日 by LHF
set feedback off
set define off
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for PARKINGLOT...
alter table PARKINGLOT disable all triggers;
prompt Disabling triggers for PARKINGSPACE...
alter table PARKINGSPACE disable all triggers;
prompt Disabling triggers for CARRECORD...
alter table CARRECORD disable all triggers;
prompt Disabling triggers for LOSTANDFOUND...
alter table LOSTANDFOUND disable all triggers;
prompt Disabling triggers for NOTICE...
alter table NOTICE disable all triggers;
prompt Disabling triggers for PRICETYPE...
alter table PRICETYPE disable all triggers;
prompt Disabling triggers for REPORTS...
alter table REPORTS disable all triggers;
prompt Disabling triggers for SCHEDULE...
alter table SCHEDULE disable all triggers;
prompt Loading USERS...
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (28, 'test', '测试1', 'zzzzzz', '18237182923', '郑州', null, null, 3, to_date('27-12-2016', 'dd-mm-yyyy'), 50);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (24, 'wmj', '王梦杰', 'qqqqqq', '13674951372', '金水区政七街', 'wangmengjie@163.com', to_date('06-09-1994', 'dd-mm-yyyy'), 3, to_date('23-12-2016', 'dd-mm-yyyy'), 483);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (30, 'test3', '测试3', 'zzzzzz', '18237182923', '浙江', null, null, 0, to_date('27-12-2016', 'dd-mm-yyyy'), 11);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (1, 'whz', '王杭州', 'admin', '18237182923', '文化路80号', 'wbaozhou@163.com', to_date('01-03-1997', 'dd-mm-yyyy'), 1, to_date('01-12-2013', 'dd-mm-yyyy'), 391);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (2, 'yhw', '杨汉武', '123', '13654521548', '南阳市内乡飞龙大道102号', 'yanghanwu@163.com', to_date('01-10-1998', 'dd-mm-yyyy'), 0, to_date('14-08-2016', 'dd-mm-yyyy'), 66);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (3, 'tt', '天天', '456', '15613245647', '管城区商城路50号', 'tt@163.com', to_date('13-08-1995', 'dd-mm-yyyy'), 0, to_date('23-04-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (4, 'lhf', '廖海峰', '789', '16416484521', '信阳市大学路77号', 'liaohaifeng@163.com', to_date('24-05-1998', 'dd-mm-yyyy'), 1, to_date('04-07-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (5, 'qzj', '秦振军', '456132', '15648641548', '安阳市农业路33号', 'qinzhenjun@163.com', to_date('09-07-1997', 'dd-mm-yyyy'), 3, to_date('22-05-2016', 'dd-mm-yyyy'), 1);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (6, 'chb', '陈寒冰', '78456', '15649871878', '洛阳市黄河路46号', 'chenhanbing@163.com', to_date('16-06-1993', 'dd-mm-yyyy'), 3, to_date('27-01-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (7, 'mm', '美美', '456188', '13745648125', '商丘市金水大道89号', 'meimei@163.com', to_date('29-09-1992', 'dd-mm-yyyy'), 0, to_date('01-01-2016', 'dd-mm-yyyy'), 13);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (8, 'nn', '诺诺', '123564', '13845648545', '开封市今明广场56号', 'nuonuo@163.com', to_date('18-02-1991', 'dd-mm-yyyy'), 1, to_date('23-03-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (9, 'eh', '二哈', '456123', '13215465487', '焦作市农科路33号', 'erha@163.com', to_date('26-09-1989', 'dd-mm-yyyy'), 0, to_date('27-05-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (32, 'test4', '测试4', 'aaaaaa', '18237182923', '河南', null, null, 3, to_date('28-12-2016', 'dd-mm-yyyy'), 3);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (34, '丹麦国王', '孔书丹', 'whzbz894', '18238466646', '富阳市三山镇', null, null, 0, to_date('29-12-2016', 'dd-mm-yyyy'), 4);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (29, 'test2', '测试2', 'zzzzzz', '18237182923', '太康', null, null, 3, to_date('27-12-2016', 'dd-mm-yyyy'), 10);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (33, 'test5', '测试', 'zzzzzz', '15158817536', '浙江', null, null, 3, to_date('28-12-2016', 'dd-mm-yyyy'), 1);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (44, 'admin', '念芝', 'zzzzzz', '18237182923', '周口市太康县', '2787430894@qq.com', null, 0, to_date('06-01-2017', 'dd-mm-yyyy'), 1);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (47, 'test7', '测试7', 'zzzzzz', '18237182923', '东风路', null, null, 2, to_date('08-01-2017', 'dd-mm-yyyy'), 3);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (43, 'test6', '测试6', 'zzzzzz', '18237192837', '郑州', null, null, 2, to_date('06-01-2017', 'dd-mm-yyyy'), 2);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (42, 'w', 'ww', '999999999', '18237182923', 'w', null, null, 2, to_date('05-01-2017', 'dd-mm-yyyy'), 1);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (82, 'test10', '测试10', '111111', '18237182923', '中原区', '12145431@qq.com', null, 0, to_date('10-02-2017', 'dd-mm-yyyy'), 1);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (62, 'sa', '天天', '111111', '18237182923', ' 郑州市金水区东风路文化路', '1213232@qq.com', null, 3, to_date('07-02-2017', 'dd-mm-yyyy'), 76);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (63, 'ni', '测试9', '111111', '18237182923', '东风路', '321@qq.com', null, 0, to_date('07-02-2017', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (84, 'dd', 'hghg', '222222', '18237182923', '东风路', '222@qq.com', null, 3, to_date('11-02-2017', 'dd-mm-yyyy'), 2);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (35, 'GenTle', '迈克尔', '111111', '13674951372', '长安路', null, null, 0, to_date('29-12-2016', 'dd-mm-yyyy'), 8);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (36, '念芝', '詹姆斯', '111111', '13676024022', '信息学院路', null, null, 0, to_date('29-12-2016', 'dd-mm-yyyy'), 0);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (37, '牵我的手', '胡世杰', '111111', '15294635877', '信息学院路', null, null, 3, to_date('29-12-2016', 'dd-mm-yyyy'), 3);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (38, '村长', '陈宁', '111111', '15936876885', '二七广场解放路', null, null, 3, to_date('29-12-2016', 'dd-mm-yyyy'), 14);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (39, '康龙', '李怀康', '111111', '18239327307', '二七广场解放路', null, null, 0, to_date('29-12-2016', 'dd-mm-yyyy'), 3);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (40, '朱哥很帅', '朱稳发', '111111', '18236149642', '新乡市', 'zwenfa@163.cn', null, 0, to_date('29-12-2016', 'dd-mm-yyyy'), 7);
insert into USERS (id, name, realname, password, phone, address, email, birthday, status, regdate, integration)
values (64, '曲奇饼干', '天天兄弟', '111111', '13564789321', '郑州金水区创新大厦', 'tiantian@163.com', null, 0, to_date('08-02-2017', 'dd-mm-yyyy'), 1);
commit;
prompt 31 records loaded
prompt Loading PARKINGLOT...
insert into PARKINGLOT (id, name, position, volume)
values (1, '秋名山', '河南财经政法大学进门右拐', 100);
insert into PARKINGLOT (id, name, position, volume)
values (2, '共青湖畔', '共青湖四周', 200);
insert into PARKINGLOT (id, name, position, volume)
values (3, '财富风尚', '财富风尚门口', 70);
insert into PARKINGLOT (id, name, position, volume)
values (4, '天地会', '河南财经政法大学5号宿舍楼下', 200);
insert into PARKINGLOT (id, name, position, volume)
values (24, '五指山', '西游记第52章', 200);
commit;
prompt 5 records loaded
prompt Loading PARKINGSPACE...
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (83, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (84, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (85, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (81, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (82, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (86, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (87, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (88, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (89, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (90, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (91, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (92, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (93, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (94, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (95, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (96, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (97, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (98, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (99, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (100, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (101, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (102, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (103, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (104, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (105, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (106, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (107, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (108, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (109, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (110, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (111, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (112, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (113, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (114, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (115, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (116, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (117, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (118, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (119, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (120, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (121, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (122, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (123, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (124, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (125, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (126, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (127, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (128, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (129, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (130, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (131, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (132, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (133, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (134, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (135, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (186, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (1, 1, null, null, 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (2, 2, 84, to_timestamp('11-02-2017 11:43:01.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (3, 3, null, null, 1, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (4, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (5, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (6, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (7, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (8, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (9, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (10, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (11, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (12, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (13, 1, null, null, 1, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (14, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (15, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (16, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (17, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (18, 1, 30, to_timestamp('06-01-2017 17:05:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (19, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (20, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (21, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (22, 1, 37, to_timestamp('11-02-2017 09:40:45.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (23, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (24, 1, 40, to_timestamp('11-02-2017 11:51:42.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (25, 1, 2, to_timestamp('11-02-2017 10:44:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (26, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (27, 1, 39, to_timestamp('09-02-2017 22:55:58.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (28, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (29, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (30, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (31, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (32, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (33, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (34, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (35, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (36, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (37, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (38, 1, 7, to_timestamp('06-01-2017 17:06:30.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (39, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (40, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (41, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (42, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (43, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (44, 1, null, null, 0, 8);
commit;
prompt 100 records committed...
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (45, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (46, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (47, 1, null, null, 1, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (48, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (49, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (50, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (51, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (52, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (53, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (54, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (55, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (56, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (57, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (58, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (59, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (60, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (61, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (62, 2, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (63, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (64, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (65, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (66, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (67, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (68, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (69, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (70, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (71, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (72, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (73, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (74, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (75, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (76, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (77, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (78, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (79, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (80, 3, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (137, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (138, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (139, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (140, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (141, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (142, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (143, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (144, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (154, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (155, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (156, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (157, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (158, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (159, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (160, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (161, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (205, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (206, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (227, 24, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (228, 24, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (229, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (225, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (226, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (136, 1, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (145, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (146, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (147, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (148, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (149, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (150, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (151, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (152, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (153, 4, null, null, 0, 8);
insert into PARKINGSPACE (id, lot_id, user_id, intime, status, price)
values (185, 1, null, null, 0, 8);
commit;
prompt 170 records loaded
prompt Loading CARRECORD...
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (31, 8, 44, 0, 8, null, to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-01-2017 19:06:14.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (49, 27, 35, 0, 8, null, to_timestamp('14-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('14-01-2017 12:05:21.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (113, 2, 62, 5, 40, null, to_timestamp('10-02-2017 16:00:50.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('10-02-2017 22:00:42.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (114, 2, 62, 0, 8, null, to_timestamp('10-02-2017 22:02:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('10-02-2017 22:02:26.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (116, 5, 40, 36, 288, null, to_timestamp('09-02-2017 22:56:58.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('11-02-2017 11:50:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into CARRECORD (id, space_id, user_id, parkingtime, totalprice, carno, intime, outtime)
values (117, 24, 40, 0, 8, null, to_timestamp('11-02-2017 11:51:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('11-02-2017 11:51:12.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
commit;
prompt 6 records loaded
prompt Loading LOSTANDFOUND...
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (32, 'kjbsakjfkaj', 'fdsadga', 35, 1, to_date('05-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (33, 'dsafda', 'fdsafsa', 35, 1, to_date('05-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (37, '女友织的围巾', '女朋友辛辛苦苦没日没夜给我织的围巾，我竟然弄丢了，我该死，是我不对。我回家一定得跪方便面不能碎', 39, 0, to_date('14-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (72, '戴尔笔记本', '型号S2-780,灰色外壳、黑色键盘底板、蓝色USB内接口、AMD1000型号超级显卡。希望捡到的车友能够及时归还给失主', 1, 0, to_date('10-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (73, '绿色书包一个', '书包颜色是黑色绿色相间，里面有一个红色钱包。钱包里面有2000块钱。希望捡到的车友能将书包及里面的财务归还，我会给你500块钱以示感谢', 38, 1, to_date('10-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (12, '眼镜盒', '绿色', 1, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (13, '天线宝宝', '毛绒娃娃，赏金100万', 1, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (16, '一个人', '长得很帅' || chr(13) || '' || chr(10) || '', 28, 1, to_date('27-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (17, '一只狗', '贵妃犬，性格凶猛' || chr(13) || '' || chr(10) || '', 29, 1, to_date('27-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (18, '一包烟', '中华', 28, 1, to_date('28-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (20, '夏季', '圣诞节安徽的会计阿卡', 31, 1, to_date('28-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (21, '天天', '没有特点', 33, 1, to_date('28-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (36, 'kjk', 'f''fe', 1, 1, to_date('14-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (52, '无线键鼠', '昨天买的，联想牌儿的，外包装还没有拆除。希望捡到的车友联系我一下，谢谢啦', 62, 1, to_date('08-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (53, 'sdas', 'dsadada', 62, 1, to_date('09-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (76, '38万人民币', '捡到的人你可能都不相信，38万真的是很多钱。希望你能尽快归还，我会分给你5万的，真的很多钱有没有', 37, 1, to_date('11-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (1, '真皮钱包', '灰色钱包一个，装有身份证银行卡，5000元现金', 24, 0, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (2, '身份证', '身份证姓名为：王杭州', 1, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (3, '笔记本电脑', '深黑色lenovo G50', 2, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (4, '车钥匙', '宝马X6', 3, 0, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (5, '苹果手机一台', 'iphone7Plus', 4, 0, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (6, '眼睛', '宝士达太阳镜', 5, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (7, '高档水杯', '红色水杯一个', 6, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (8, '欧款风衣', '深黑色华萨尼风衣一件', 7, 0, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (9, 'SIM卡', 'SIM卡一个', 8, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (10, '皮包', '女士蓝色皮包一个', 9, 1, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (11, '苹果手机一台', '联想Y700，黑红', 1, 0, to_date('26-12-2016 22:19:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (19, '小鸡', '黑色的', 31, 1, to_date('28-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (34, '帽子', '红色花边，是12岁生日妈妈送我的' || chr(13) || '' || chr(10) || '生日礼物，希望捡到的人能告诉我一声，我愿意花重金交换' || chr(13) || '' || chr(10) || '', 2, 1, to_date('08-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (35, '帽子', '红色花边，是12岁生日是妈妈送我的生日礼物，希望捡到的人能告诉我一声，我愿意花重金交换', 2, 0, to_date('08-01-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (74, '沃尔什黑色吹风机', '2009年在澳洲路由的时候买的，价值100美元。希望捡到的车友能将其归还给我，谢谢了', 62, 0, to_date('10-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (75, 'dfsbsfdb', 'dsgfsd', 62, 1, to_date('10-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (77, 'jjjkjj', 'jlnnlnl', 84, 1, to_date('11-02-2017', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (23, '一个女人', '很漂亮', 37, 1, to_date('29-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (24, '一个脸', '嗯嗯', 2, 1, to_date('29-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (25, '两本书', 'ACCP7.0', 2, 1, to_date('29-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (14, '貂皮大衣', '我天天穿', 1, 1, to_date('26-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (15, '单反相机', '很贵的', 1, 1, to_date('26-12-2016', 'dd-mm-yyyy'));
insert into LOSTANDFOUND (id, name, description, user_id, status, publishdate)
values (22, '真皮钱包', '里面没有现金，只有身份证还有一张未婚妻照片', 34, 0, to_date('29-12-2016', 'dd-mm-yyyy'));
commit;
prompt 39 records loaded
prompt Loading NOTICE...
insert into NOTICE (id, title, content, publishdate)
values (4, '车位排放(普通)，普通车辆必须遵从相关规定', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || ' 其余车位遵循从里到外顺序停放，未按规定停放车辆，我公司将处以50元~200元不等罚款，屡教不改者，将扣留车辆。并处5000元一下罚款，一年内不可在本停车场停车，第二年将交1000元保证金才可停入本停车场，再有发现违规，将终身禁停。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。' || chr(13) || '' || chr(10) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '', to_date('09-01-2017', 'dd-mm-yyyy'));
insert into NOTICE (id, title, content, publishdate)
values (5, '车辆停放标准安排', '车辆停放一律头超外车尾朝里停放，车辆如头朝内，车尾朝外，一律按违规处理。未按规定停放车辆，我公司将处以500元~2000元不等罚款，屡教不改者，将扣留车辆。并处5000元一下罚款，一年内不可在本停车场停车，第二年将交2000元保证金才可停入本停车场，再有发现违规，将终身禁停。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('11-02-2016 13:13:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (6, '停车区域警示线或停止线停放要求条例', '停车仪之外区域一律不准停车，不得妨碍他人停车路线，不可跨越停止线，如有违规，我公司将处以50元~200元不等罚款，屡教不改者，将扣留车辆。并处5000元一下罚款，一年内不可在本停车场停车，第二年将交3000元保证金才可停入本停车场，再有发现违规，将终身禁停。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('12-05-2016 07:22:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (7, '工作人员指挥(保安及工作人员)条例规定', '日常遵循保安的临时指挥停放，如有不听工作人员指挥的。将被驱离停车场，一星期内不得再次停入本停车场，情节严重者：如有殴打工作人员，我公司将依照法律追究当事人刑事责任，并赔偿工作人员。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('12-10-2016 09:53:18', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (8, '罚款违规，（普通用户违规及VIP车辆违规详情）', '如有不按规定停车的车辆，将会收到违规停车通知书，受到相应罚款。普通违法一次，除扣违规罚金外，另扣20积分。VIP客户将扣除少许罚金外，另外扣除5积分。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('06-09-2016 14:53:46', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (9, '收费条款详情（临时停车，周期停车，长期停车）', '本停车场除特定节假日不提供顾客免费停车，特定节假日（10.1-10.7），元旦（01.01），详细停车请参照第15条例。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('09-04-2016 16:33:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (10, '被盗理赔条款详情（如被盗或者被划，丢失车内物品）', '如车辆在本停车场被盗，或者遭到恶意破坏，本停车场一律赔偿。并追究当事人责任，' || chr(10) || '如在本停车场丢失物品，由本公司先赔付当事人，并报警，如车辆被损伤。当事人报保险公司，4S店修理，费用先由本公司现行垫付。情节严重车辆，将全额赔付，详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('09-07-2016 12:54:51', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (11, '停车场安全设备管理详情', '本停车场全方位360无死角摄像头，24小时开启，并有保安在保卫科随时待命，遇到突发状况，我公司，将第一时间挽救用户财产，不惜一切代价，如有畏首畏尾者，将扣除本月全部工资，立马辞退。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('09-08-2016 15:22:57', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (12, '高薪招聘公告（美女，模特，空姐优先）', '我公司招收 18岁~25 之间员工。要求五官端正，热爱工作（美女，模特，空姐优先），愿苦愿劳，服从领导，应届毕业生即可面试工作，无需工作经验，无需闲杂技术，另外本公司有技校考核，根据工作不同，可奖励员工。工资待遇面谈，详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('07-07-2016 11:11:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (13, '免费停车日期公告（指定时间内停放有效）', '停车场只在国庆节（10.1-10.7）及元旦当天（01.01），停车场一律免费停车，过期不候，如过了特定假日，车辆未开走，将按正常收费标准收费。请谨慎停放时间。过期车辆丢失物品，我公司将不付任何责任。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('02-07-2016 14:45:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (14, '会员充值优惠活动（充的越多，福利越多。）', '本公司办理VIP，享受8.8折优惠活动，充值多多，奖励多多(最低充值额度为1000元)，充1000送500，充2000送600，充3000送700，一次类推。充万元用户将送1月免费停车VIP卡。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('03-07-2016 13:23:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (15, '停车场收费详情（参照第9条收费条款）', '在本停车场停车，临时停车，24小时之内5元，24小时之外一小时追加1元，周期停车。七天内（168小时之内）200元停车费，如到期，将按一小时一元停车费叠加。长期停车，一月为500元停车费，年卡为5000元停车。欠费将不得停车。详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('07-08-2016 09:52:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (1, '全国范围内雾霾（真爱生命，小心驾驶）', '望各位车友小心驾驶，注意安全，详情情况请咨询本公司电话：0371-65321548。谢谢合作，你的支持是我们进步的动力。', to_date('25-12-2016 11:12:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (2, '停车须知要求', '近期发现有个别车友在车场内乱扔垃圾，希望各位能够自觉地维护车场内良好的卫生环境', to_date('25-12-2016 11:12:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (3, '车位排放(vip)', '固定车位仅供固定车辆停放', to_date('23-12-2016 11:13:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into NOTICE (id, title, content, publishdate)
values (20, '元旦放假通知', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || ' ' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || ' 放假时间31号到2号，请同学们有事儿没事儿回家看看，别老上网打游戏' || chr(13) || '' || chr(10) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(13) || '' || chr(10) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '', to_date('07-02-2017', 'dd-mm-yyyy'));
commit;
prompt 16 records loaded
prompt Loading PRICETYPE...
insert into PRICETYPE (id, price)
values (1, 8);
insert into PRICETYPE (id, price)
values (2, 12);
insert into PRICETYPE (id, price)
values (3, 6);
commit;
prompt 3 records loaded
prompt Loading REPORTS...
insert into REPORTS (id, time, money)
values (56, to_date('02-10-2017 11:16:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (65, to_date('02-10-2017 01:41:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (66, to_date('02-10-2017 01:50:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (70, to_date('02-10-2017 14:08:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (20, to_date('14-01-2017 12:04:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (54, to_date('02-10-2017 11:05:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (71, to_date('02-10-2017 14:10:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (21, to_date('07-02-2017 07:27:21', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (23, to_date('08-02-2017 12:19:44', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (24, to_date('09-02-2017 02:03:05', 'dd-mm-yyyy hh24:mi:ss'), 300);
insert into REPORTS (id, time, money)
values (28, to_date('09-02-2017 03:51:34', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (29, to_date('09-02-2017 03:52:49', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (30, to_date('09-02-2017 03:57:46', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (41, to_date('09-02-2017 07:09:48', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (42, to_date('09-02-2017 07:24:47', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (43, to_date('09-02-2017 07:50:43', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (45, to_date('14-01-2017 12:06:10', 'dd-mm-yyyy hh24:mi:ss'), 5760);
insert into REPORTS (id, time, money)
values (46, to_date('09-02-2017 08:47:41', 'dd-mm-yyyy hh24:mi:ss'), 192);
insert into REPORTS (id, time, money)
values (58, to_date('02-10-2017 11:41:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (59, to_date('02-10-2017 11:46:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (60, to_date('02-10-2017 11:49:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (6, to_date('01-02-2017', 'dd-mm-yyyy'), 200);
insert into REPORTS (id, time, money)
values (7, to_date('03-02-2017', 'dd-mm-yyyy'), 200);
insert into REPORTS (id, time, money)
values (8, to_date('01-03-2017', 'dd-mm-yyyy'), 300);
insert into REPORTS (id, time, money)
values (9, to_date('23-03-2017', 'dd-mm-yyyy'), 400);
insert into REPORTS (id, time, money)
values (10, to_date('22-04-2017', 'dd-mm-yyyy'), 100);
insert into REPORTS (id, time, money)
values (11, to_date('02-05-2017', 'dd-mm-yyyy'), 100);
insert into REPORTS (id, time, money)
values (12, to_date('05-07-2017', 'dd-mm-yyyy'), 700);
insert into REPORTS (id, time, money)
values (13, to_date('03-09-2017', 'dd-mm-yyyy'), 1220);
insert into REPORTS (id, time, money)
values (14, to_date('03-11-2017', 'dd-mm-yyyy'), 110);
insert into REPORTS (id, time, money)
values (15, to_date('04-11-2017', 'dd-mm-yyyy'), 510);
insert into REPORTS (id, time, money)
values (16, to_date('01-04-2017', 'dd-mm-yyyy'), 1000);
insert into REPORTS (id, time, money)
values (17, to_date('01-06-2017', 'dd-mm-yyyy'), 2000);
insert into REPORTS (id, time, money)
values (18, to_date('01-05-2017', 'dd-mm-yyyy'), 2000);
insert into REPORTS (id, time, money)
values (19, to_date('01-12-2017', 'dd-mm-yyyy'), 200);
insert into REPORTS (id, time, money)
values (47, to_date('02-10-2017 10:21:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (48, to_date('02-10-2017 10:28:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (49, to_date('02-10-2017 10:37:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (50, to_date('02-10-2017 10:39:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (51, to_date('02-10-2017 10:42:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (52, to_date('02-10-2017 10:43:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (53, to_date('02-10-2017 10:57:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (61, to_date('02-10-2017 11:50:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (62, to_date('02-10-2017 12:01:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (63, to_date('02-10-2017 01:30:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (64, to_date('02-10-2017 01:37:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (72, to_date('02-10-2017 15:57:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (73, to_date('02-10-2017 22:00:00', 'dd-mm-yyyy hh24:mi:ss'), 40);
insert into REPORTS (id, time, money)
values (74, to_date('02-10-2017 22:02:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (75, to_date('02-11-2017 11:47:00', 'dd-mm-yyyy hh24:mi:ss'), 168);
insert into REPORTS (id, time, money)
values (76, to_date('02-11-2017 11:49:00', 'dd-mm-yyyy hh24:mi:ss'), 288);
insert into REPORTS (id, time, money)
values (77, to_date('02-11-2017 11:51:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (22, to_date('08-02-2017 09:30:53', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (25, to_date('09-02-2017 02:23:26', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (26, to_date('09-02-2017 03:35:34', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (27, to_date('09-02-2017 03:37:22', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (55, to_date('02-10-2017 11:14:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (57, to_date('02-10-2017 11:22:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (67, to_date('02-10-2017 01:51:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (68, to_date('02-10-2017 01:55:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (69, to_date('02-10-2017 14:04:00', 'dd-mm-yyyy hh24:mi:ss'), 8);
insert into REPORTS (id, time, money)
values (5, to_date('12-01-2017 05:10:43', 'dd-mm-yyyy hh24:mi:ss'), 500);
insert into REPORTS (id, time, money)
values (44, to_date('09-02-2017 07:55:21', 'dd-mm-yyyy hh24:mi:ss'), 8);
commit;
prompt 63 records loaded
prompt Loading SCHEDULE...
insert into SCHEDULE (id, space_id, carno, user_id, sctime, arrivetime)
values (12, 2, null, 28, to_timestamp('06-01-2017 04:10:29.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-01-2017 03:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SCHEDULE (id, space_id, carno, user_id, sctime, arrivetime)
values (23, 47, null, 34, to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SCHEDULE (id, space_id, carno, user_id, sctime, arrivetime)
values (21, 3, null, 24, to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into SCHEDULE (id, space_id, carno, user_id, sctime, arrivetime)
values (22, 13, null, 5, to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-01-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
commit;
prompt 4 records loaded
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for PARKINGLOT...
alter table PARKINGLOT enable all triggers;
prompt Enabling triggers for PARKINGSPACE...
alter table PARKINGSPACE enable all triggers;
prompt Enabling triggers for CARRECORD...
alter table CARRECORD enable all triggers;
prompt Enabling triggers for LOSTANDFOUND...
alter table LOSTANDFOUND enable all triggers;
prompt Enabling triggers for NOTICE...
alter table NOTICE enable all triggers;
prompt Enabling triggers for PRICETYPE...
alter table PRICETYPE enable all triggers;
prompt Enabling triggers for REPORTS...
alter table REPORTS enable all triggers;
prompt Enabling triggers for SCHEDULE...
alter table SCHEDULE enable all triggers;
set feedback on
set define on
prompt Done.
