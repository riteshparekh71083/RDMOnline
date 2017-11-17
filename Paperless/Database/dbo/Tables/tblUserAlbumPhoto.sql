CREATE TABLE [dbo].[tblUserAlbumPhoto] (
    [useralbumphotoid] INT            IDENTITY (1, 1) NOT NULL,
    [useralbumid]      INT            NOT NULL,
    [userid]           INT            NOT NULL,
    [photoname]        NVARCHAR (100) NULL,
    [isactive]         BIT            NOT NULL,
    [createddate]      DATETIME       NULL,
    [modifieddate]     DATETIME       NULL,
    CONSTRAINT [PK_tblUserAlbumPhoto] PRIMARY KEY CLUSTERED ([useralbumphotoid] ASC),
    CONSTRAINT [FK_tblUserAlbumPhoto_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid]),
    CONSTRAINT [FK_tblUserAlbumPhoto_tblUserAlbum] FOREIGN KEY ([useralbumid]) REFERENCES [dbo].[tblUserAlbum] ([useralbumid])
);

