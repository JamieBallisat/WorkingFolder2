CREATE TABLE [dbo].[Film]
(
[FilmID] [int] NOT NULL,
[FilmName] [nchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ReleaseYear] [int] NOT NULL,
[Genre] [nchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[Rating] [nchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[LeadActorID] [int] NOT NULL,
[FilmLocationID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Film] ADD CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED  ([FilmID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Film] ADD CONSTRAINT [FK_Film_LeadActor] FOREIGN KEY ([LeadActorID]) REFERENCES [dbo].[LeadActor] ([LeadActorID])
GO
ALTER TABLE [dbo].[Film] ADD CONSTRAINT [FK_Film_location1] FOREIGN KEY ([FilmLocationID]) REFERENCES [dbo].[FilmLocation] ([FilmLocationID])
GO
