use dbe873e7e5cf7946deaa5ea63600f04b8f;

if(OBJECT_ID('Comment') is not null)         drop table Comment;
if(OBJECT_ID('Issue_Tag') is not null)		 drop table Issue_Tag;
if(OBJECT_ID('Issue') is not null)           drop table Issue;
if(OBJECT_ID('State') is not null)           drop table State;
if(OBJECT_ID('Project_Tag') is not null)	 drop table Project_Tag;
if(OBJECT_ID('Project') is not null)         drop table Project;

create Table Project
(
	name varchar(30) not null primary key,
	creationDate datetime not null
);

create Table Project_Tag
(
	name varchar(30) references Project(name),
	tag varchar(30) not null,
	primary key(name,tag)
)

create Table State
(
	state varchar(20) not null primary key
)

create Table Issue
(
	name varchar(30) references Project(name),
	id int not null,
	primary key (name,id),
	title varchar(100) not null,	
	description varchar(500) not null,
	creationDate datetime not null,
	state varchar(20) references State(state) default 'open'
);

create Table Issue_Tag
(
	name varchar(30) not null,
	id int not null,
	foreign key (name,id) references Issue(name,id),
	tag varchar(30) not null,
	foreign key (name,tag) references Project_Tag(name,tag)
)

create Table Comment
(
	name varchar(30),
	issue_id int not null,	
	foreign key (name,issue_id) references Issue(name,id),
	id int not null,
	primary key(name,issue_id,id),
	text varchar(200) not null,
	creationDate datetime not null,
	modifiedDate datetime default null
)

insert into State values('open');
insert into State values('closed');

--project 1
insert into Project(name,creationDate) values ('proj1', GETUTCDATE());

insert into Project_Tag(name,tag) values ('proj1','feature');
insert into Project_Tag(name,tag) values ('proj1','error');
insert into Project_Tag(name,tag) values ('proj1','backlog');

insert into Issue(name,id,title,description,creationDate,state) values ('proj1', 1, 'issue1', 'this is project 1, issue 1', GETUTCDATE(), 'closed');
insert into Issue_Tag(name,id,tag) values ('proj1',1,'feature');
insert into Issue_Tag(name,id,tag) values ('proj1',1,'error');
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,1,'this is comment 1 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,2,'this is comment 2 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,3,'this is comment 3 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,4,'this is comment 4 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,5,'this is comment 5 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,6,'this is comment 6 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,7,'this is comment 7 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,8,'this is comment 8 for project 1, issue 1',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 1,9,'this is comment 9 for project 1, issue 1',GETUTCDATE());

insert into Issue(name,id,title,description,creationDate) values ('proj1', 2,'issue2', 'this is project 1, issue 2', GETUTCDATE());
insert into Issue_Tag(name,id,tag) values ('proj1',2,'feature');
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,1,'this is comment 1 for project 1, issue 2',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,2,'this is comment 2 for project 1, issue 2',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,3,'this is comment 3 for project 1, issue 2',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,4,'this is comment 4 for project 1, issue 2',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,5,'this is comment 5 for project 1, issue 2',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 2,6,'this is comment 6 for project 1, issue 2',GETUTCDATE());

insert into Issue(name,id,title,description,creationDate,state) values ('proj1', 3,'issue3', 'this is project 1, issue 3', GETUTCDATE(), 'closed');
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 3,1,'this is comment 1 for project 1, issue 3',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 3,2,'this is comment 2 for project 1, issue 3',GETUTCDATE());
insert into Comment(name,issue_id,id,text,creationDate) values('proj1', 3,3,'this is comment 3 for project 1, issue 3',GETUTCDATE());

--project 2
insert into Project(name,creationDate) values ('proj2', GETUTCDATE());
insert into Issue(name,id,title,description,creationDate) values ('proj2', 1,'issue1', 'this is project 2, issue 1', GETUTCDATE());
insert into Issue(name,id,title,description,creationDate) values ('proj2', 2,'issue2', 'this is project 2, issue 2', GETUTCDATE());

--project 3
insert into Project(name,creationDate) values ('proj3', GETUTCDATE());
insert into Issue(name,id,title,description,creationDate,state) values ('proj3', 1,'issue1', 'this is project 3, issue 1', GETUTCDATE(), 'closed');
insert into Issue(name,id,title,description,creationDate) values ('proj3', 2,'issue2', 'this is project 3, issue 2', GETUTCDATE());

--project 4
insert into Project(name,creationDate) values ('proj4', GETUTCDATE());
insert into Issue(name,id,title,description,creationDate) values ('proj4', 1,'issue1', 'this is project 4, issue 1', GETUTCDATE());