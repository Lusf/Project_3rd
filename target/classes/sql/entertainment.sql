
select * from Look_Info;

select * from LGBoard_Comment;

select * from Lookgood_Board;

insert into Look_Info values ('B01', 'lim2', '원더우먼', '주디가 좋아1', '감독누구1', '원더우먼.jpg', '애니매이션1', '2017/06/11', '2017/06/13', '판교', 'movie' );
insert into Look_Info values ('B02', 'lim2', '미이라', '주디가 좋아2', '감독누구2', '미이라.jpg', '애니매이션2', '2017/06/11', '2017/06/13', '판교', 'movie' );
insert into Look_Info values ('B03', 'lim2', '베이블레', '주디가 좋아3', '감독누구3', '베이블레.jpg', '애니매이션3', '2017/06/11', '2017/06/13', '판교', 'movie' );
insert into Look_Info values ('B04', 'lim2', '심야', '주디가 좋아4', '감독누구4', '심야.jpg', '애니매이션4', '2017/06/11', '2017/06/13', '판교', 'movie' );
insert into Look_Info values ('B05', 'lim2', '악녀', '주디가 좋아5', '감독누구5', '악녀.jpg', '애니매이션5', '2017/06/11', '2017/06/13', '판교', 'movie' );


insert into Look_Info values ('B06', 'lim2', '보이스', '주디가 좋아1', '감독누구1', '보이스.jpg', '애니매이션1', '2017/06/11', '2017/06/13', '판교', 'tv' );
insert into Look_Info values ('B07', 'lim2', '터널', '주디가 좋아2', '감독누구2', '터널.jpg', '애니매이션2', '2017/06/11', '2017/06/13', '판교', 'tv' );
insert into Look_Info values ('B08', 'lim2', '판타스틱', '주디가 좋아3', '감독누구3', '판타스틱.jpg', '애니매이션3', '2017/06/11', '2017/06/13', '판교', 'tv' );
insert into Look_Info values ('B09', 'lim2', '피고인', '주디가 좋아4', '감독누구4', '피고인.jpg', '애니매이션4', '2017/06/11', '2017/06/13', '판교', 'tv' );


insert into Look_Info values ('B10', 'lim2', '거미콘서트', '주디가 좋아1', '감독누구1', '거미.jpg', '발라드', '2017/06/11', '2017/06/19', '판교', 'concert' );
insert into Look_Info values ('B11', 'lim2', '나윤권콘서트', '주디가 좋아2', '감독누구2', '나윤권콘서트.jpg', '발라드', '2017/06/11', '2017/06/13', '판교', 'concert' );
insert into Look_Info values ('B12', 'lim2', '볼빨간사춘기', '주디가 좋아3', '감독누구3', '볼빨간사춘기.jpg', '발라드', '2017/06/11', '2017/06/13', '판교', 'concert' );
insert into Look_Info values ('B13', 'lim2', '커피소년', '주디가 좋아4', '감독누구4', '카페투어콘서트.jpg', '발라드', '2017/06/11', '2017/06/13', '판교', 'concert' );
insert into Look_Info values ('B14', 'lim2', '악동뮤지션', '주디가 좋아5', '감독누구5', '악동뮤지션.jpg', '발라드', '2017/06/11', '2017/06/13', '판교', 'concert' );

delete from look_info where id='lim2';


insert into LOOKGOOD_BOARD values(1, 'lim2', sysdate, '두번보세요', '재밌어요', '이미지1');
insert into LOOKGOOD_BOARD values(2, 'lim2', sysdate, '이거보세요', '재미없어', '이미지2');
insert into LOOKGOOD_BOARD values(3, 'lim2', sysdate, '저거보세요', '꿀잼', '이미지3');
insert into LOOKGOOD_BOARD values(4, 'lim2', sysdate, '그거보세요', '그렇구나', '이미지4');

insert into avg_score values('lim2', 'B01', 0, null);

select * from avg_score

create sequence seq_num 
start with 1 
increment BY 1 
maxvalue 10000

drop sequence seq_num;

commit