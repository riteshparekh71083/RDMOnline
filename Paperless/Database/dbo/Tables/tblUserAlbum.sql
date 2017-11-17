CREATE TABLE [dbo].[tblUserAlbum] (
    [useralbumid]  INT            IDENTITY (1, 1) NOT NULL,
    [userid]       INT            NOT NULL,
    [albumname]    NVARCHAR (150) NOT NULL,
    [isactive]     BIT            NOT NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblUserAlbum] PRIMARY KEY CLUSTERED ([useralbumid] ASC),
    CONSTRAINT [FK_tblUserAlbum_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

