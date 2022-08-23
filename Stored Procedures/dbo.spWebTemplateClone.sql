SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spWebTemplateClone] @ID bigint, @newName nvarchar(256)
AS
	SET NOCOUNT ON;  

	DECLARE @CreatedTemplateID bigint;

    INSERT INTO WebViewTemplate 
	(Name, WebViewID, IsUseTranslateKey_ForTitle, WebTranslateID_ForTitle, Title, 
	IsUseTranslateKey_ForBookmarkName, WebTranslateID_ForBookmarkName, BookmarkName,
	IsUseTranslateKey_ForBookmarkDescription, WebTranslateID_ForBookmarkDescription, BookmarkDescription,
	WebIconSvgEnumID_ForBookmark, PermissionObject, TemplateJsonFragment, TemplateJsonFull)

	(SELECT @newName AS Name, WebViewID, IsUseTranslateKey_ForTitle, WebTranslateID_ForTitle, Title, 
	IsUseTranslateKey_ForBookmarkName, WebTranslateID_ForBookmarkName, BookmarkName,
	IsUseTranslateKey_ForBookmarkDescription, WebTranslateID_ForBookmarkDescription, BookmarkDescription,
	WebIconSvgEnumID_ForBookmark, PermissionObject, TemplateJsonFragment, TemplateJsonFull 
	FROM WebViewTemplate WHERE ID = @ID AND IsDeleted = 'N');

	SELECT @CreatedTemplateID = @@IDENTITY;

	INSERT INTO WebViewTemplateName (WebViewTemplateID, LanguageID, BookmarkDescription, BookmarkName, Title, TemplateHtml)
	SELECT WebViewTemplateID = @CreatedTemplateID, LanguageID, BookmarkDescription, BookmarkName, Title, TemplateHtml FROM WebViewTemplateName 
	WHERE WebViewTemplateID = @ID;

	INSERT INTO WebViewTemplateToViewSubTemplateAssociation (WebViewTemplateID, WebViewSubID, WebViewSubTemplateID, IsUse)
	SELECT WebViewTemplateID = @CreatedTemplateID, WebViewSubID, WebViewSubTemplateID, IsUse FROM WebViewTemplateToViewSubTemplateAssociation 
	WHERE WebViewTemplateID = @ID AND IsDeleted = 'N';

	SELECT @CreatedTemplateID AS createdID;
GO
