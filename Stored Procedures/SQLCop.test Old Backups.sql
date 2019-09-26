SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [SQLCop].[test Old Backups]
AS
BEGIN
	-- Written by George Mastros
	-- February 25, 2012
	
	SET NOCOUNT ON
	
	Declare @Output VarChar(max)
    Set @Output = ''

    Select  @Output = @Output + 'Outdated Backup For '+ D.Name + Char(13) + Char(10)
    FROM    master..sysdatabases As D         
            Left Join msdb.dbo.backupset As B             
              On  B.database_name = D.Name             
              And B.type = 'd' 
    WHERE   D.Status & 512 = 0 
    GROUP BY D.Name 
    Having Coalesce(DATEDIFF(D, Max(backup_finish_date), Getdate()), 1000) > 7 
    ORDER BY D.Name
                   
	If @Output > '' 
		Begin
			Set @Output = Char(13) + Char(10) 
						  + 'For more information:  '
						  + 'https://github.com/red-gate/SQLCop/wiki/Old-backups'
						  + Char(13) + Char(10) 
						  + Char(13) + Char(10) 
						  + @Output
			EXEC tSQLt.Fail @Output
		End  
END;
GO
