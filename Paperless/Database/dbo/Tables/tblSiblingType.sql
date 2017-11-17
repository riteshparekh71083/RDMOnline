CREATE TABLE [dbo].[tblSiblingType] (
    [siblingtypeid]   INT            IDENTITY (1, 1) NOT NULL,
    [siblingtypename] NVARCHAR (100) NOT NULL,
    [isactive]        BIT            NOT NULL,
    [createddate]     DATETIME       NULL,
    [modifieddate]    DATETIME       NULL,
    CONSTRAINT [PK_tblSiblingType] PRIMARY KEY CLUSTERED ([siblingtypeid] ASC)
);

