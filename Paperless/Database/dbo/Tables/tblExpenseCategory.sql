CREATE TABLE [dbo].[tblExpenseCategory] (
    [expensecategoryid]   INT            IDENTITY (1, 1) NOT NULL,
    [expensecategoryname] NVARCHAR (100) NOT NULL,
    [isactive]            BIT            NOT NULL,
    [createddate]         DATETIME       NULL,
    [modifieddate]        DATETIME       NULL,
    CONSTRAINT [PK_tblExpenseCategory] PRIMARY KEY CLUSTERED ([expensecategoryid] ASC)
);

