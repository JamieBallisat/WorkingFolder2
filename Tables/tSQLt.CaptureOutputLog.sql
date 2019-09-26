CREATE TABLE [tSQLt].[CaptureOutputLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OutputText] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[CaptureOutputLog] ADD CONSTRAINT [PK__CaptureO__3214EC07C4D7A08D] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
