CREATE TABLE [dbo].[tblMaritalStatus] (
    [maritalstatusid]   INT            IDENTITY (1, 1) NOT NULL,
    [maritalstatusname] NVARCHAR (100) NOT NULL,
    [isactive]          BIT            NOT NULL,
    [createddate]       DATETIME       NULL,
    [modifieddate]      DATETIME       NULL,
    CONSTRAINT [PK_tblMaritalStatus] PRIMARY KEY CLUSTERED ([maritalstatusid] ASC)
);

