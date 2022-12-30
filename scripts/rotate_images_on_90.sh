#! /bin/bash
for szFile in *.JPG
do 
    convert "$szFile" -rotate 90 /tmp/"$(basename "$szFile")" ; 
done

