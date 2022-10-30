SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[WebGetTranslatePath](@id uniqueidentifier)
RETURNS TABLE
AS RETURN
	WITH Path AS (
		SELECT ID FROM WebTranslate AS w WHERE ID = @id
        UNION ALL
        SELECT WebTranslate.WebTranslateID AS ID FROM WebTranslate
        INNER JOIN Path ON WebTranslate.ID = Path.ID
        WHERE WebTranslate.WebTranslateID IS NOT NULL
   ) SELECT ID FROM Path;
GO
