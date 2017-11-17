CREATE TABLE [dbo].[tblUserDetail] (
    [userdetailid]    INT            IDENTITY (1, 1) NOT NULL,
    [userid]          INT            NOT NULL,
    [firstname]       NVARCHAR (100) NOT NULL,
    [middleinitials]  NVARCHAR (3)   NULL,
    [lastname]        NVARCHAR (100) NULL,
    [emailaddress]    NVARCHAR (50)  NOT NULL,
    [dateofbirth]     DATETIME       NOT NULL,
    [maritalstatusid] INT            NULL,
    [genderid]        INT            NULL,
    [isactive]        BIT            NOT NULL,
    [createddate]     DATETIME       NULL,
    [modifieddate]    DATETIME       NULL,
    CONSTRAINT [PK_tblUserDetail] PRIMARY KEY CLUSTERED ([userdetailid] ASC),
    CONSTRAINT [FK_tblUserDetail_tblGender] FOREIGN KEY ([genderid]) REFERENCES [dbo].[tblGender] ([genderid]),
    CONSTRAINT [FK_tblUserDetail_tblMaritalStatus] FOREIGN KEY ([maritalstatusid]) REFERENCES [dbo].[tblMaritalStatus] ([maritalstatusid]),
    CONSTRAINT [FK_tblUserDetail_tblUser] FOREIGN KEY ([userid]) REFERENCES [dbo].[tblUser] ([userid])
);

