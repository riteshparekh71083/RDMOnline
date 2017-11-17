CREATE TABLE [dbo].[tblMenu] (
    [menuid]       INT            IDENTITY (1, 1) NOT NULL,
    [parentmenuid] INT            NULL,
    [menuname]     NVARCHAR (100) NULL,
    [link]         NVARCHAR (100) NULL,
    [isactive]     BIT            NOT NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblMenu] PRIMARY KEY CLUSTERED ([menuid] ASC),
    CONSTRAINT [FK_tblMenu_tblMenu1] FOREIGN KEY ([parentmenuid]) REFERENCES [dbo].[tblMenu] ([menuid])
);

