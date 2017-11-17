CREATE TABLE [dbo].[tblCity] (
    [cityid]       INT            IDENTITY (1, 1) NOT NULL,
    [cityname]     NVARCHAR (200) NOT NULL,
    [stateid]      INT            NOT NULL,
    [code]         NVARCHAR (10)  NULL,
    [isactive]     BIT            NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED ([cityid] ASC),
    CONSTRAINT [FK_tblCity_tblState] FOREIGN KEY ([stateid]) REFERENCES [dbo].[tblState] ([stateid])
);

