CREATE TABLE [dbo].[tblUserSiblingDetail] (
    [usersiblingid]      INT            IDENTITY (1, 1) NOT NULL,
    [userid]             INT            NOT NULL,
    [siblingtypeid]      INT            NOT NULL,
    [siblingfirstname]   NVARCHAR (100) NULL,
    [siblinglastname]    NVARCHAR (100) NULL,
    [sibligndateofbirth] DATETIME       NULL,
    [isactive]           BIT            NOT NULL,
    [createddate]        DATETIME       NULL,
    [modifieddate]       DATETIME       NULL,
    CONSTRAINT [PK_tblUserSiblingDetail] PRIMARY KEY CLUSTERED ([usersiblingid] ASC),
    CONSTRAINT [FK_tblUserSiblingDetail_tblSiblingType] FOREIGN KEY ([siblingtypeid]) REFERENCES [dbo].[tblSiblingType] ([siblingtypeid]),
    CONSTRAINT [FK_tblUserSiblingDetail_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

