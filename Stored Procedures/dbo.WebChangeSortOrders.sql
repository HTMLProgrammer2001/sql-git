SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE Procedure [dbo].[WebChangeSortOrders] @tableName nvarchar(50), @idToChange bigint, @operation int, @appType int, @updateUser bigint
AS
BEGIN
 --one-up (1)
--one-down (2)
--to-first (3)
--to-last (4)

declare @sql nvarchar(max)
declare @newSortOrder nvarchar(max)
declare @columnName nvarchar(11)
declare @conditionGroup nvarchar(max) = ''

declare @metricTypeId nvarchar(10)
declare @itemPropertyId nvarchar(10)
declare @itemHierarchy1Id nvarchar(10)
declare @itemHierarchy2Id nvarchar(10)
declare @itemHierarchy3Id nvarchar(10)
declare @itemHierarchy4Id nvarchar(10)

IF @tableName = 'MetricType'
	SET @columnName = 'MetricOrder'
ELSE
	SET @columnName = 'SortOrder'


IF @tableName = 'MetricValue'
BEGIN
	SELECT @metricTypeId = MetricTypeId
        FROM MetricValue
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND MetricTypeId = ' + @metricTypeId
END
ELSE IF @tableName = 'ItemPropertyValue'
BEGIN
	SELECT @itemPropertyId = ItemPropertyID
        FROM ItemPropertyValue
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND ItemPropertyID = ' + @itemPropertyId
END
ELSE IF @tableName = 'ItemHierarchy2'
BEGIN
	SELECT @itemHierarchy1Id = ItemHierarchy1ID
        FROM ItemHierarchy2
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND ItemHierarchy1ID = ' + @itemHierarchy1Id
END
ELSE IF @tableName  = 'ItemHierarchy3'
BEGIN
	SELECT @itemHierarchy1Id = ItemHierarchy1ID, @itemHierarchy2Id = ItemHierarchy2ID
        FROM ItemHierarchy3
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND ItemHierarchy1ID = ' + @itemHierarchy1Id + ' AND ItemHierarchy2ID = ' + @itemHierarchy2Id
END
ELSE IF @tableName = 'ItemHierarchy4'
BEGIN
	SELECT @itemHierarchy1Id =ItemHierarchy1ID, @itemHierarchy2Id =ItemHierarchy2ID, @itemHierarchy3Id =ItemHierarchy3ID
        FROM ItemHierarchy4
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND ItemHierarchy1ID = ' + @itemHierarchy1Id + ' AND ItemHierarchy2ID = ' + @itemHierarchy2Id +
                              ' AND ItemHierarchy3ID = ' + @itemHierarchy3Id
END
ELSE IF @tableName = 'ItemHierarchy5'
BEGIN
	SELECT @itemHierarchy1Id = ItemHierarchy1ID, @itemHierarchy2Id = ItemHierarchy2ID,
               @itemHierarchy3Id = ItemHierarchy3ID, @itemHierarchy4Id = ItemHierarchy4ID
        FROM ItemHierarchy5
        WHERE ID = @idToChange

        SET @conditionGroup = ' AND ItemHierarchy1ID = ' + @itemHierarchy1Id + ' AND ItemHierarchy2ID = ' + @itemHierarchy2Id +
                              ' AND ItemHierarchy3ID = ' + @itemHierarchy3Id + ' AND ItemHierarchy4ID = ' + @itemHierarchy4Id
END

SET @sql = 'declare @sortOrder int = (SELECT ' + @columnName + ' FROM  ' + @tableName + ' where ID = @idToChange)
			declare @id bigint
			declare @newSortOrder int '

IF @operation = 1
SET @sql = CONCAT(@sql, 'SET @newSortOrder = (SELECT MAX(SortOrder) FROM [',@tableName,'] where IsDeleted = ''N'' AND ',@columnName,'<  @sortOrder ',@conditionGroup,')',
                        'SET @id = (SELECT ID FROM ', @tableName, ' where ', @columnName , ' = @newSortOrder ' , @conditionGroup , ');
			UPDATE ib SET ib.' + @columnName + ' = o.' + @columnName + ', ib.Version = ib.Version + 1, ib.guid = newid(), ib.AppType = @appType, ib.UpdateUser = @updateUser FROM ', @tableName, ' ib INNER JOIN ', @tableName,
			' o on ((ib.ID = @id and o.ID = @idToChange) or	(ib.ID = @idToChange and o.ID = @id));')
ELSE IF @operation = 2
SET @sql = CONCAT(@sql,'SET @newSortOrder = (SELECT MIN(SortOrder) FROM [',@tableName,'] where IsDeleted = ''N'' AND ',@columnName,'>  @sortOrder ',@conditionGroup,')',
                       'SET @id = (SELECT ID FROM ', @tableName, ' where IsDeleted = ''N'' AND ' + @columnName + ' = @newSortOrder ' +@conditionGroup +');
			UPDATE ib SET ib.' + @columnName + ' = o.' + @columnName + ', ib.Version = ib.Version + 1, ib.guid = newid(), ib.AppType = @appType, ib.UpdateUser = @updateUser FROM ', @tableName, ' ib INNER JOIN ', @tableName,
			' o on ((ib.ID = @id and o.ID = @idToChange) or	(ib.ID = @idToChange and o.ID = @id));')
ELSE IF @operation = 3
SET @sql = CONCAT(@sql, ' SET @newSortOrder = (SELECT min(' + @columnName + ') from ', @tableName, ' WHERE 1=1 ' , @conditionGroup , ');
			UPDATE ', @tableName, ' SET ' + @columnName + ' = ' + @columnName + ' + 1, Version = Version + 1,
			GUID = newid(), AppType = @appType, UpdateUser = @updateUser WHERE ' + @columnName + ' <= @sortOrder AND ID <> @idToChange' + @conditionGroup + ';
			UPDATE ', @tableName, ' SET ' + @columnName + ' = @newSortOrder, Version = Version + 1,
			GUID = newid(), AppType = @appType, UpdateUser = @updateUser WHERE ID = @idToChange;');
ELSE IF @operation = 4
SET @sql = CONCAT(@sql, 'SET @newSortOrder = (SELECT max(' + @columnName + ') from ', @tableName, ' WHERE 1=1 ' + @conditionGroup + ');
			UPDATE ', @tableName, ' SET ' + @columnName + ' = ' + @columnName + ' - 1, Version = Version + 1,
			GUID = newid(), AppType = @appType, UpdateUser = @updateUser WHERE ' + @columnName + ' >= @sortOrder AND ID <> @idToChange' + @conditionGroup + ';
			UPDATE ', @tableName, ' SET ' + @columnName + ' = @newSortOrder, Version = Version + 1,
			GUID = newid(), AppType = @appType, UpdateUser = @updateUser WHERE ID = @idToChange;');
EXECUTE sp_executesql @sql, N'@idToChange bigint, @appType int, @updateUser bigint', @idToChange = @idToChange, @appType = @appType, @updateUser = @updateUser

END
GO
