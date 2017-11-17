CREATE TABLE [dbo].[tblUser] (
    [userid]       INT           IDENTITY (1, 1) NOT NULL,
    [username]     NVARCHAR (50) NOT NULL,
    [password]     NVARCHAR (50) NOT NULL,
    [isactive]     BIT           NOT NULL,
    [createddate]  DATETIME      NULL,
    [modifieddate] DATETIME      NULL,
    CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED ([userid] ASC)
);

