# logstash-to-datadog-grok-converter

Simple converter that maps any inconsistencies (ie. upper case vs. lower case, differing filter names) between the Logstash grok syntax to the Datadog grok syntax.

An example of this is: Logstash uses filter names such as "INT" vs. Datadog's "integer" 

## Steps to Convert Grok Patterns
1. List out the Logstash grok patterns you would like to convert into the **logstashgrok.txt** file (there are soem examples already in there - these can be removed if not relevant).

2. Add any additional Logstash-to-Datadog mappings to the **logstashtoDDmappings.txt** file - some common examples are already in this file.
  
    Use the following syntax in **logstashtoDDmappings.txt**:
`<logstashSyntax><tab><datadogSyntax>`

3. Run **./convert.sh**

    The **logstashgrok.txt** file will now contain Datadog friendly grok patterns.
