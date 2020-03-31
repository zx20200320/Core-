create database HotelSystem
go
use HotelSystem

--�����û���
create table UserInfo
(
	Id			int identity primary key,	--��� 
	UserName	varchar(50),		--�û���
	PassWord	varchar(50),		--����
	LoginTime	datetime,				--��¼ʱ��
	IsEnable	bit					--�Ƿ�����
)
insert into UserInfo values('zhangsan','111111',Getdate(),1)
insert into UserInfo values('lisi','222222',Getdate(),0)

--������̬��
create table RoomState
(
	Id		int identity primary key,		--���
	Name	varchar(20),					--��̬����
	Remark  varchar(100)					--��ע
)
insert into RoomState values('��ס�ɾ���','')
insert into RoomState values('���иɾ���','')
insert into RoomState values('�����෿','')
insert into RoomState values('ά�޷�','')
insert into RoomState values('Ԥ����','')

--�����������ͱ�
create table RoomType
(
	Id			int identity primary key,		--���
	Name		varchar(20),		--������
	Price		int,			--����
	Remark		varchar(100)		--��ע
)
insert RoomType values('��׼��',111,'')
insert RoomType values('�󴲷�',222,'')
insert RoomType values('���˷�',55,'')
insert RoomType values('������',388,'')
insert RoomType values('��ͳ�׷�',9988,'')

--����������Ϣ��
create table RoomInfo
(
	Id			int identity primary key,		--���
	Name		varchar(20),				--��������
	RStateId	int,		--��̬id
	RTypeId		int,		--��������id
	Remark		varchar(100)		--��ע
)
insert RoomInfo values('1001',1,2,'')
insert RoomInfo values('2001',2,3,'')
insert RoomInfo values('3001',3,4,'')
insert RoomInfo values('4001',4,5,'')

--������ס��Ϣ��
create table UseRoom
(
	Id				int identity primary key,	--���
	UserName		varchar(20),			--��ס�û�
	IDType			varchar(20),			--֤������
	IDNum			varchar(40),			--֤����
	Phone			varchar(20),			--�绰��
	RoomId			int,					--������
	CheckInTime		datetime,				--��סʱ��
	CheckOutTime	datetime,				--�뿪ʱ��
	Deposit			int,					--Ԥ��Ѻ��
	Remark		varchar(100)		--��ע
)