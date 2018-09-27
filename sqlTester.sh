#!/bin/bash
for i in $(ls); do
    DB=./DataBaseNameGoesHere.db
    EXTENSION="${i##*.}"
    FILENAME="${i%.*}"
    if [ $EXTENSION = "sql" ]
        then
            echo $i
            sqlite3 $DB <./$i > $FILENAME.out
    fi
done