create database HotelSystem
go
use HotelSystem

--创建用户表
create table UserInfo
(
	Id			int identity primary key,	--编号 
	UserName	varchar(50),		--用户名
	PassWord	varchar(50),		--密码
	LoginTime	datetime,				--登录时间
	IsEnable	bit					--是否启用
)
insert into UserInfo values('zhangsan','111111',Getdate(),1)
insert into UserInfo values('lisi','222222',Getdate(),0)

--创建房态表
create table RoomState
(
	Id		int identity primary key,		--编号
	Name	varchar(20),					--房态名称
	Remark  varchar(100)					--备注
)
insert into RoomState values('入住干净房','')
insert into RoomState values('空闲干净房','')
insert into RoomState values('空闲脏房','')
insert into RoomState values('维修房','')
insert into RoomState values('预定房','')

--创建房间类型表
create table RoomType
(
	Id			int identity primary key,		--编号
	Name		varchar(20),		--类型名
	Price		int,			--房价
	Remark		varchar(100)		--备注
)
insert RoomType values('标准房',111,'')
insert RoomType values('大床房',222,'')
insert RoomType values('单人房',55,'')
insert RoomType values('行政房',388,'')
insert RoomType values('总统套房',9988,'')

--创建房间信息表
create table RoomInfo
(
	Id			int identity primary key,		--编号
	Name		varchar(20),				--房间名称
	RStateId	int,		--房态id
	RTypeId		int,		--房间类型id
	Remark		varchar(100)		--备注
)
insert RoomInfo values('1001',1,2,'')
insert RoomInfo values('2001',2,3,'')
insert RoomInfo values('3001',3,4,'')
insert RoomInfo values('4001',4,5,'')

--创建入住信息表
create table UseRoom
(
	Id				int identity primary key,	--编号
	UserName		varchar(20),			--入住用户
	IDType			varchar(20),			--证件类型
	IDNum			varchar(40),			--证件号
	Phone			varchar(20),			--电话号
	RoomId			int,					--房间编号
	CheckInTime		datetime,				--入住时间
	CheckOutTime	datetime,				--离开时间
	Deposit			int,					--预交押金
	Remark		varchar(100)		--备注
)