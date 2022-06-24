module driver

go 1.18

replace github.com/mahldcat/golang.config => C:\src\golang\src\github.com\mahldcat\golang.config
replace github.com/mahldcat/golang.sql => C:\src\golang\src\github.com\mahldcat\golang.sql
require (
	github.com/mahldcat/golang.config v0.0.0-20220624052430-06176be03ccc
	github.com/mahldcat/golang.sql v0.0.0-20220624065331-8a83854b6788

)

require (
	github.com/golang-sql/civil v0.0.0-20190719163853-cb61b32ac6fe // indirect
	github.com/golang-sql/sqlexp v0.1.0 // indirect
	github.com/microsoft/go-mssqldb v0.15.0 // indirect
	golang.org/x/crypto v0.0.0-20220214200702-86341886e292 // indirect
)
