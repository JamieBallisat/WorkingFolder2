CREATE TABLE [dbo].[LeadActor]
(
[LeadActorID] [int] NOT NULL,
[LeadActorName] [nvarchar] (30) COLLATE Latin1_General_CI_AS NOT NULL,
[DateOfBirth] [nchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[Nationality] [nchar] (20) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LeadActor] ADD CONSTRAINT [PK_LeadActor] PRIMARY KEY CLUSTERED  ([LeadActorID]) ON [PRIMARY]
GO
