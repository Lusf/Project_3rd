
/* db 수정 시, 구글 스프레드시트도 같이 수정할 것!!
 * 수정 된 부분에 주석으로 표시. */

select * from USERTABLE

drop table usertable;

create table usertable(
  id varchar2(20) constraint id_pk primary key,
  password varchar2(20),
  tell varchar2(20),
  user_pic varchar2(50),
  user_code varchar2(20),
  travel_like varchar2(20),
  tasty_like varchar2(20),
  look_like varchar2(20),
  point number(10)
);


drop table authorities;

CREATE TABLE AUTHORITIES(
	USERNAME VARCHAR2(20) NOT NULL,
	ROLE VARCHAR(30) NOT NULL,
	CONSTRAINT MEMBER_AUTHORITIES_FK FOREIGN KEY(USERNAME) REFERENCES usertable(ID),
	CONSTRAINT AUTHORITIES_PK PRIMARY KEY(USERNAME,ROLE)
);


drop table blog;

create table blog(
  id primary key constraint id_blog_fk references usertable(id),
  blog_title varchar2(30),
  blog_cont varchar2(200),
  blog_num number(4),
  category varchar2(20),
  blog_img varchar2(50)
);


drop table avg_score;

create table avg_score(
  id primary key constraint id_score_fk references usertable(id),
  content_code varchar2(20),
  score number(4),
  wish_list varchar2(20)
);


drop table matching_board;

create table matching_board(
  id primary key constraint id_mb_fk references usertable(id),
  mb_num number(4),
  mb_date varchar2(20),
  mb_title varchar2(30),
  mb_cont varchar2(200),
  mb_link varchar2(30),
  mb_img varchar2(50),
  content_code varchar2(20),
  max_persons number(4)
);


drop table message;

create table message(
  id primary key constraint id_msg_fk references usertable(id),
  to_id varchar2(20),
  msg_title varchar2(30),
  msg_cont varchar2(200),
  msg_date varchar2(20),
  msg_check number(2)
);


drop table user_grade;

create table user_grade(
  grade_name varchar2(20) constraint grade_name_pk primary key,
  min_point number(4),
  max_point number(4)
);


drop table course;

create table course(
  user_id varchar2(20) constraint id_course_fk references usertable(id),
  course_name varchar2(20),
  content_code varchar2(20),
  course_order number(4),
  constraint course_pk primary key(user_id,course_name)
);


drop table travelge_info;

create table travelge_info(
  content_code varchar2(20) constraint content_code_ti_pk primary key,
  travelge_name varchar2(20),
  travelge_addr varchar2(50),
  travelge_description varchar2(200),
  travelge_theme varchar2(20),
  travelge_region varchar2(20),
  travelge_coordinates varchar2(20)
);


drop table travelge_recommandation;

create table travelge_recommandation(
  content_code constraint content_code_fk references travelge_info(content_code),
  recommandation_title varchar2(50),
  recommandation_description varchar2(200)
);


drop table restaurant_info;

select * from restaurant_info;

create table restaurant_info(
  content_code varchar2(20) constraint content_code_ri_pk primary key,
  restaurant_name varchar2(30),
  address varchar2(50),
  category varchar2(20),
   id constraint id_restaurant_info_fk references usertable(id)
);

insert into restaurant_INFO 	values ('a','a','a','a','a');

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


drop table look_info;

create table look_info(
  content_code varchar2(20) constraint content_code_li_pk primary key,
  look_title varchar2(50),
  look_story varchar2(200),
  look_maker varchar2(20),
  look_img varchar2(50),
  look_genre varchar2(20),
  look_startdate varchar2(20),
  look_lastdate varchar2(20),
  look_loca varchar2(20),
  look_cate varchar2(20)
);


drop table lookgood_board;

create table lookgood_board(
  lgb_num number(4) constraint lgb_num_pk primary key,
  id constraint id_lgb_fk references usertable(id),
  lgb_date varchar2(20),
  lgb_title varchar2(50),
  lgb_cont varchar2(200),
  lgb_img varchar2(50)
);


drop table lgboard_comment;

create table lgboard_comment(
  id constraint id_lgbc_fk references usertable(id),
  lgb_num constraint lgb_num_fk references lookgood_board(lgb_num),
  lgbcom_num number(4) constraint lgbcom_num_pk primary key,
  lgbcom_date varchar2(20),
  lgb_comment varchar2(200)
);


select   content_CODE,  RESTAURANT_NAME, ADDRESS, CATEGORY   from Restaurant_INFO   ;