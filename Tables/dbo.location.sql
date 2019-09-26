CREATE TABLE [dbo].[location]
(
[FilmLocationID] [int] NOT NULL,
[Country/State] [nchar] (30) COLLATE Latin1_General_CI_AS NOT NULL,
[Continent] [nchar] (20) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[location] ADD CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED  ([FilmLocationID]) ON [PRIMARY]
GO
