
select * from Look_Info;

select * from LGBoard_Comment;

select * from Lookgood_Board;

select substring_index(look_coordinates, ',', 1) as x 
from look_info

SELECT distinct regexp_substr(A.TXT, '[^,]+', 1, LEVEL)
FROM (SELECT look_coordinates FROM look_info where look_title='������') A
CONNECT BY LEVEL <= length(regexp_replace(A.TXT, '[^,]'))+1
;

select wish_list from avg_score

SELECT regexp_substr(tel1,'[^,]+',1,1) as x
FROM  (SELECT look_coordinates FROM look_info)






insert into Look_Info values ('B01', 'lim2', '�������', '������� ���ο� ���� ������ ���� ����̴�!���Ƹ��� ���̽�Ű�� �ձ��� ���� �����ֳ̾� ��������(�� ����)�� ����μ� �Ʒ��� �޴� �� �ְ� ����μ��� ����� �����Ѵ�. ����ħ ���� �ҽ����� ������ ��Ʈ���� ������(ũ���� ����)�� ���� �ΰ� ������ ����� �� ������ ������ �Ͼ�� ������ �˰� �ȴ�.  �ŵ��� �ֽ� �ɷ����� ������ ���ϴ� ���� �ڽ��� ������� ������ ���ֳ̾��� ������ ���� ���� ���ĳ��� 1�� ���� ������ ���� ���� ���� �Ѱ���� �پ��µ�', '��������1', '�������.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','15��' );
insert into Look_Info values ('B02', 'lim2', '���̶�', '�ֵ� ����2', '��������2', '���̶�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','15��' );
insert into Look_Info values ('B03', 'lim2', '���̺�', '�ֵ� ����3', '��������3', '���̺�.jpg', '�ִϸ��̼�3', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','12��' );
insert into Look_Info values ('B04', 'lim2', '�ɾ�', '�ֵ� ����4', '��������4', '�ɾ�.jpg', '�ִϸ��̼�4', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','û��' );
insert into Look_Info values ('B05', 'lim2', '�ǳ�', '�ֵ� ����5', '��������5', '�ǳ�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','û��' );

insert into Look_Info values ('B20', 'lim2', '�������', '�ֵ� ����1', '��������1', '�������.jpg', '�ִϸ��̼�2', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','15��' );
insert into Look_Info values ('B21', 'lim2', '���̶�', '�ֵ� ����2', '��������2', '���̶�.jpg', '�ִϸ��̼�2', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','15��' );
insert into Look_Info values ('B22', 'lim2', '���̺�', '�ֵ� ����3', '��������3', '���̺�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','12��' );
insert into Look_Info values ('B23', 'lim2', '�ɾ�', '�ֵ� ����4', '��������4', '�ɾ�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','û��' );
insert into Look_Info values ('B24', 'lim2', '�ǳ�', '�ֵ� ����5', '��������5', '�ǳ�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'movie','û��' );



insert into Look_Info values ('B06', 'lim2', '���̽�', '�ֵ� ����1', '��������1', '���̽�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'tv','û��' );
insert into Look_Info values ('B07', 'lim2', '�ͳ�', '�ֵ� ����2', '��������2', '�ͳ�.jpg', '�ִϸ��̼�', '2017/06/11', '2017/06/13', '�Ǳ�', 'tv','15��' );
insert into Look_Info values ('B08', 'lim2', '��Ÿ��ƽ', '�ֵ� ����3', '��������3', '��Ÿ��ƽ.jpg', '�ִϸ��̼�3', '2017/06/11', '2017/06/13', '�Ǳ�', 'tv','15��' );
insert into Look_Info values ('B09', 'lim2', '�ǰ���', '�ֵ� ����4', '��������4', '�ǰ���.jpg', '�ִϸ��̼�4', '2017/06/11', '2017/06/13', '�Ǳ�', 'tv' ,'15��');


insert into Look_Info values ('B10', 'lim2', '�Ź��ܼ�Ʈ', '�ֵ� ����1', '��������1', '�Ź�.jpg', '�߶��', '2017/06/11', '2017/06/19', '�Ǳ�', 'concert','��ü' );
insert into Look_Info values ('B11', 'lim2', '�������ܼ�Ʈ', '�ֵ� ����2', '��������2', '�������ܼ�Ʈ.jpg', '�߶��', '2017/06/11', '2017/06/13', '�Ǳ�', 'concert','��ü' );
insert into Look_Info values ('B12', 'lim2', '�����������', '�ֵ� ����3', '��������3', '�����������.jpg', '�߶��', '2017/06/11', '2017/06/13', '�Ǳ�', 'concert','��ü' );
insert into Look_Info values ('B13', 'lim2', 'Ŀ�Ǽҳ�', '�ֵ� ����4', '��������4', 'ī�������ܼ�Ʈ.jpg', '�߶��', '2017/06/11', '2017/06/13', '�Ǳ�', 'concert','��ü' );
insert into Look_Info values ('B14', 'lim2', '�ǵ�������', '�ֵ� ����5', '��������5', '�ǵ�������.jpg', '�߶��', '2017/06/11', '2017/06/13', '�Ǳ�', 'concert','��ü' );

delete from look_info where id='lim2';
delete from look_info where look_title='�������'
delete from look_info where look_title='lim2'


insert into LOOKGOOD_BOARD values(1, 'lim2', sysdate, '�ι�������', '��վ��', '�̹���1');
insert into LOOKGOOD_BOARD values(2, 'lim2', sysdate, '�̰ź�����', '��̾���', '�̹���2');
insert into LOOKGOOD_BOARD values(3, 'lim2', sysdate, '���ź�����', '����', '�̹���3');
insert into LOOKGOOD_BOARD values(4, 'lim2', sysdate, '�װź�����', '�׷�����', '�̹���4');

insert into avg_score values('lim2', 'B01', 0, null);

select * from avg_score

create sequence seq_num 
start with 1 
increment BY 1 
maxvalue 10000

drop sequence seq_num;

commit

select * from blog;