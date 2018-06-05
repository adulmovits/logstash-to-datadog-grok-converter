#!/bin/bash

#OS X
while read -r LogstashVar DDVar
do
sed -i '' -e "s/\(%{\)\($LogstashVar:\)/\1$DDVar:/g" logstashgrok.txt
done < logstashtoDDmappings.txt

#Linux
#while read -r LogstashVar DDVar
#do
#sed -i -e "s/\(%{\)\($LogstashVar:\)/\1$DDVar:/g" logstashgrok.txt
#done < logstashtoDDmappings.txt
