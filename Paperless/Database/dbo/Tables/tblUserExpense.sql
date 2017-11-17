CREATE TABLE [dbo].[tblUserExpense] (
    [userexpenseid]     INT             IDENTITY (1, 1) NOT NULL,
    [userid]            INT             NOT NULL,
    [expensecategoryid] INT             NOT NULL,
    [expensedate]       DATETIME        NOT NULL,
    [amount]            DECIMAL (18, 2) NOT NULL,
    [description]       NVARCHAR (100)  NULL,
    [isactive]          BIT             NOT NULL,
    [createddate]       DATETIME        NULL,
    [modifieddate]      DATETIME        NULL,
    CONSTRAINT [PK_tblUserExpense] PRIMARY KEY CLUSTERED ([userexpenseid] ASC),
    CONSTRAINT [FK_tblUserExpense_tblExpenseCategory] FOREIGN KEY ([expensecategoryid]) REFERENCES [dbo].[tblExpenseCategory] ([expensecategoryid]),
    CONSTRAINT [FK_tblUserExpense_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

