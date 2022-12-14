SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[WebGetMenuPath](@id uniqueidentifier)
RETURNS TABLE
AS RETURN
	WITH Path AS (
		SELECT ID FROM WebMenu AS w WHERE ID = @id
        UNION ALL
        SELECT WebMenu.WebMenuID AS ID FROM WebMenu
        INNER JOIN Path ON WebMenu.ID = Path.ID
        WHERE WebMenu.WebMenuID IS NOT NULL
   ) SELECT ID FROM Path;
GO
