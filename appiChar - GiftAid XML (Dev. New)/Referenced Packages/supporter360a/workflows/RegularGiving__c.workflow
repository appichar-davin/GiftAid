<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <fieldUpdates>
        <fullName>RGLI_Update_Convert_Field</fullName>
        <field xsi:nil="true"/>
        <literalValue>1</literalValue>
        <name>RGLI: Update Convert Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>RGLI%3A Trigger Conversion</fullName>
        <actions>
            <name>RGLI_Update_Convert_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>If a line item is added this will trigger the conversion process to make sure the original record is pulled over to a RGLI</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
