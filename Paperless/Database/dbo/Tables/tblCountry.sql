CREATE TABLE [dbo].[tblCountry] (
    [countryid]   INT            IDENTITY (1, 1) NOT NULL,
    [countryname] NVARCHAR (200) NOT NULL,
    [isdcode]     NVARCHAR (10)  NULL,
    [isactive]    BIT            NOT NULL,
    [createddate] DATETIME       NULL,
    [modifeddate] DATETIME       NULL,
    CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED ([countryid] ASC)
);

