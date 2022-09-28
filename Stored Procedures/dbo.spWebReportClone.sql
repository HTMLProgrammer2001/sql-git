SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spWebReportClone] @ID uniqueidentifier, @newName nvarchar(256)
AS
BEGIN
	SET NOCOUNT ON;  

	DECLARE @CreatedReports table(ID uniqueidentifier);

	INSERT INTO WebReport 
	(Name, Code, LanguageID, Rdl, WebReportCategoryID, WebReportCategorySubID)
	OUTPUT inserted.ID INTO @CreatedReports(ID)
	(SELECT @newName AS Name, Code, LanguageID, Rdl, WebReportCategoryID, WebReportCategorySubID FROM WebReport WHERE ID = @ID AND IsDeleted = 'N');

	SELECT ID AS createdID FROM @CreatedReports;
END
GO
