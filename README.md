# golang.driver
Driver/main app

This is just my first attempt at an application that goes beyond your hello world stuff

1. reading in configuration data from a json file
2. figuring out some of the semantics for working with MSSQL (and fetching data from this thing)
3. separating the config and mssql code in separate modules 

General Behavior is:
1. Have an MSSQL db configured with a Tasks table
```SQL
CREATE TABLE [Tasks](
	[id] [uniqueidentifier] NULL,
	[msg] [nvarchar](2048) NULL,
	[lastupdate] [datetime] NULL,
	[status] [nvarchar](50) NULL,
	[percentcomplete] [int] NULL
 ) 
 ```
2. Generate a configuration.json file with "Connection" : "<<MSSQL CONNECTION STRING>>"
3. This should read in the  connection string from the  configuration.json file
4. This gets passed to a function that returns a DB object
5. This  db object gets used in a function that returns the count of rows in that Tasks table

Next step(s) will be to return the entries mapped into golang structs

