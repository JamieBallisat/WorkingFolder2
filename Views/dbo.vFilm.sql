SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vFilm] AS
SELECT film.FilmName, Film.ReleaseYear, LeadActor.LeadActorName, [location].[Country/State]
FROM dbo.Film 
	INNER JOIN dbo.LeadActor ON [dbo].[Film].LeadActorID = LeadActor.LeadActorID
	INNER JOIN dbo.[location] ON [dbo].[Film].FilmLocationID = [location].FilmLocationID
GO
