SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spWebTemplateSubClone] @ID bigint, @newName nvarchar(256)
AS
	SET NOCOUNT ON;  

    INSERT INTO WebViewSubTemplate
	(Name, WebViewSubID, TemplateJsonFragment)
	(SELECT @newName AS Name, WebViewSubID, TemplateJsonFragment FROM WebViewSubTemplate WHERE ID = @ID AND IsDeleted = 'N');

	SELECT @@IDENTITY AS createdID;
GO
