CREATE TABLE [dbo].[tblUserMenuMapping] (
    [usermenumappingid] INT      IDENTITY (1, 1) NOT NULL,
    [userid]            INT      NOT NULL,
    [menuid]            INT      NOT NULL,
    [isactive]          BIT      NOT NULL,
    [createddate]       DATETIME NULL,
    [modifieddate]      DATETIME NULL,
    CONSTRAINT [PK_tblUserMenuMapping] PRIMARY KEY CLUSTERED ([usermenumappingid] ASC),
    CONSTRAINT [FK_tblUserMenuMapping_tblMenu] FOREIGN KEY ([menuid]) REFERENCES [dbo].[tblMenu] ([menuid]),
    CONSTRAINT [FK_tblUserMenuMapping_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

