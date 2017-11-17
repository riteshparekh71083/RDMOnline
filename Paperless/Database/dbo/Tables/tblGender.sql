CREATE TABLE [dbo].[tblGender] (
    [genderid]     INT            IDENTITY (1, 1) NOT NULL,
    [gendername]   NVARCHAR (100) NOT NULL,
    [isactive]     BIT            NOT NULL,
    [createddate]  DATETIME       NULL,
    [modifieddate] DATETIME       NULL,
    CONSTRAINT [PK_tblGender] PRIMARY KEY CLUSTERED ([genderid] ASC)
);

