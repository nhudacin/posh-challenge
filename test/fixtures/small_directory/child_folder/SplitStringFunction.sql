create FUNCTION [dbo].[SplitString]
(
    @sString varchar(5000),
    @cDelimiter char(1)
)
RETURNS @tParts TABLE ( part varchar(5000) )
AS
BEGIN
    if @sString is null return
    declare     @iStart int,
                @iPos int
    if substring( @sString, 1, 1 ) = @cDelimiter 
    begin
        set     @iStart = 2
        insert into @tParts
        values( null )
    end
    else 
        set     @iStart = 1
    while 1=1
    begin
        set     @iPos = charindex( @cDelimiter, @sString, @iStart )
        if @iPos = 0
                set     @iPos = len( @sString )+1
        if @iPos - @iStart > 0                  
                insert into @tParts
                values  ( substring( @sString, @iStart, @iPos-@iStart ))
        else
                insert into @tParts
                values( null )
        set     @iStart = @iPos+1
        if @iStart > len( @sString ) 
                break
    end
    RETURN

END