SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spWebReportClone] @ID bigint, @newName nvarchar(256)
AS
BEGIN
	SET NOCOUNT ON;  

	DECLARE @CreatedTemplateID bigint;

    INSERT INTO WebReport 
	(Name, Code, LanguageID, Rdl, WebReportCategoryID, WebReportCategorySubID)
	(SELECT @newName AS Name, Code, LanguageID, Rdl, WebReportCategoryID, WebReportCategorySubID FROM WebReport WHERE ID = @ID AND IsDeleted = 'N');

	SELECT @@IDENTITY AS createdID;
END
GO
