-- Read data from Registry

-- Declare variable
DECLARE @return_value int
DECLARE @return_data nvarchar(4000)

EXEC
@return_value = master.dbo.xp_instance_regread
@rootkey,@key,@key_name,
@return_data output, 'no_output'
IF @return_data is not null
BEGIN
EXEC master..xp_regread @rootkey,@key,@key_name,
@value= @key_data OUTPUT
END
ELSE
BEGIN
EXEC master..xp_regwrite
@rootkey,@key,@key_name ,@type= @key_type,@value = @key_default
EXEC master..xp_regread @rootkey,@key,@key_name,
@value= @key_data OUTPUT
END
