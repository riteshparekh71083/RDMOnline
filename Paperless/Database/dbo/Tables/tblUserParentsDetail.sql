CREATE TABLE [dbo].[tblUserParentsDetail] (
    [userparentsid]      INT            IDENTITY (1, 1) NOT NULL,
    [userid]             INT            NOT NULL,
    [fathersfirstname]   NVARCHAR (100) NULL,
    [fatherslastname]    NVARCHAR (100) NULL,
    [fathersdateofbirth] DATETIME       NULL,
    [mothersfirstname]   NVARCHAR (100) NULL,
    [mothersmaidenname]  NVARCHAR (100) NULL,
    [mothersdateofbirth] DATETIME       NULL,
    [isactive]           BIT            NOT NULL,
    [createddate]        DATETIME       NULL,
    [modifieddate]       DATETIME       NULL,
    CONSTRAINT [PK_tblUserParentsDetail] PRIMARY KEY CLUSTERED ([userparentsid] ASC),
    CONSTRAINT [FK_tblUserParentsDetail_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

