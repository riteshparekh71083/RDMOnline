CREATE TABLE [dbo].[tblUserAddress] (
    [useraddressid] INT            IDENTITY (1, 1) NOT NULL,
    [userid]        INT            NOT NULL,
    [address1]      NVARCHAR (100) NOT NULL,
    [address2]      NVARCHAR (100) NULL,
    [address3]      NVARCHAR (100) NULL,
    [postcode]      NVARCHAR (50)  NOT NULL,
    [isactive]      BIT            NOT NULL,
    [countryid]     INT            NULL,
    [stateid]       INT            NULL,
    [cityid]        INT            NULL,
    [createddate]   DATETIME       NULL,
    [modifieddate]  DATETIME       NULL,
    CONSTRAINT [PK_tblUserAddress] PRIMARY KEY CLUSTERED ([useraddressid] ASC),
    CONSTRAINT [FK_tblUserAddress_tblCity] FOREIGN KEY ([cityid]) REFERENCES [dbo].[tblCity] ([cityid]),
    CONSTRAINT [FK_tblUserAddress_tblCountry] FOREIGN KEY ([countryid]) REFERENCES [dbo].[tblCountry] ([countryid]),
    CONSTRAINT [FK_tblUserAddress_tblState] FOREIGN KEY ([stateid]) REFERENCES [dbo].[tblState] ([stateid]),
    CONSTRAINT [FK_tblUserAddress_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

