
select * from Look_Info;

select * from LGBoard_Comment;

select * from Lookgood_Board;

insert into Look_Info values ('B01', 'lim2', '주토피아', '주디가 좋아', '감독누구', '이미지', '장르', '2017/06/11', '2017/06/13', '판교', '카테고리' );

insert into LOOKGOOD_BOARD values(1, 'lim2', sysdate, '두번보세요', '재밌어요', '이미지1');
insert into LOOKGOOD_BOARD values(2, 'lim2', sysdate, '이거보세요', '재미없어', '이미지2');
insert into LOOKGOOD_BOARD values(3, 'lim2', sysdate, '저거보세요', '꿀잼', '이미지3');
insert into LOOKGOOD_BOARD values(4, 'lim2', sysdate, '그거보세요', '그렇구나', '이미지4');

commit