CREATE TABLE [dbo].[table1] (
    [Id]       INT        NOT NULL IDENTITY,
    [Aveilble] TINYINT    NULL,
    [Status]   INT        NULL,
    [Password] VARCHAR(50) NULL,
    [Name]     VARCHAR(50)      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

