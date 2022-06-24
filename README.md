# golang.driver
## Driver/main app

Purpose: This is just my first attempt at an application that goes beyond your hello world stuff, namely I wanted to figure out how to 
1. Drive things via a separate configuration data file (JSON is easiest ATM)
2. Figuring out some of the semantics for working with MSSQL (and fetching data from this thing)--and with an example table that uses some of the more obnoxious data types like UUID and date time
3. How to separate this stuff so that I have modules for driving this stuff, handling configs, and handling SQL 

## Usage (to get this running)
1. Have an MSSQL db handy, and create a Tasks table on it:
```SQL
CREATE TABLE [Tasks](
	[id] [uniqueidentifier] NULL,
	[msg] [nvarchar](2048) NULL,
	[lastupdate] [datetime] NULL,
	[status] [nvarchar](50) NULL,
	[percentcomplete] [int] NULL
 ) 
 ```
2. Generate a configuration.json file that contains the entry 
```JSON
"Connection" : "<<MSSQL CONNECTION STRING>>"
```
3. This should read in the  connection string from the  configuration.json file
4. This gets passed to a function that returns a DB object
5. This  db object gets used in a function that returns the count of rows in that Tasks table

## Next step(s)
1. Add/Modify the fetch function to return an array (slice) of entries mapped into golang structs
2. Add a corpus of sprocs to the DBMS to handle the CRUD ops  
3. Wire up these calls to the sprocs as additional functions
4. Figure out how to wire this up into an openAPI compliant REST service
5. Unit testing...
6. CI/CD with Github actions?

