
/* db ���� ��, ���� ���������Ʈ�� ���� ������ ��!!
 * ���� �� �κп� �ּ����� ǥ��. */


drop table restaurant;

select * from restaurant;

select * from usertable;

create table restaurant(
  content_code varchar2(30) constraint content_code_ri_pk primary key,
  restaurant_name varchar2(30),
  restaurant_info varchar2(2000),
  category varchar2(50),
  category2 varchar2(50),
  restaurant_address varchar2(200),
  restaurant_coordinates varchar2(200),
  restaurant_pic varchar2(50),
  id constraint id_restaurant_fk references usertable(id)
);

insert into restaurant 	values ('C_SU_0001','�����̳�','����','�ѽ�','���ܸ�','ĸó.png','1111');
commit
drop table hot_deal;

create table hot_deal(
  code varchar2(20) constraint hd_code_pk primary key,
  product varchar2(20),
  price number(10),
  quantity number(4),
  start_date varchar2(20),
  end_date varchar2(20),
  detail varchar2(200)
);


drop table tasty_onair;

create table tasty_onair(
  bj_name varchar2(20),
  room_name varchar2(20),
  room_info varchar2(200)
);


select   content_CODE,  RESTAURANT_NAME, ADDRESS, CATEGORY   from Restaurant_INFO   ;