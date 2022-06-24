package main

import (
	"fmt"
	"log"

	"github.com/mahldcat/golang.config"
	"github.com/mahldcat/golang.sql"
)

func main() {

	conf, err := config.GetConfiguration()

	if err != nil {
		log.Fatal(err)
		return
	}

	conStr := conf.Connection

	db, err := golangdb.GetDb(conStr)

	if err != nil {
		log.Fatal(err)
		return
	}

	ct,err:= golangdb.GetTaskCt(db)
	
	fmt.Printf("There are %d rows in the task table",ct)


}
