CREATE TABLE [dbo].[tblState] (
    [stateid]      INT            IDENTITY (1, 1) NOT NULL,
    [statename]    NVARCHAR (200) NOT NULL,
    [countryid]    INT            NOT NULL,
    [isactive]     BIT            NOT NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED ([stateid] ASC),
    CONSTRAINT [FK_tblState_tblCountry] FOREIGN KEY ([countryid]) REFERENCES [dbo].[tblCountry] ([countryid])
);

