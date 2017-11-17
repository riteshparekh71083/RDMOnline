CREATE TABLE [dbo].[tblUserPhoto] (
    [userphotoid]  INT            IDENTITY (1, 1) NOT NULL,
    [userid]       INT            NOT NULL,
    [path]         NVARCHAR (200) NULL,
    [isactive]     BIT            NOT NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblUserPhoto] PRIMARY KEY CLUSTERED ([userphotoid] ASC),
    CONSTRAINT [FK_tblUserPhoto_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

