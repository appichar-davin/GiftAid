<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <fieldUpdates>
        <fullName>Set_Start_Date_RGLI</fullName>
        <description>Set Process From date on RGLI to today if upgrade status is set to successful and date is blank</description>
        <field xsi:nil="true"/>
        <formula>TODAY()</formula>
        <name>Set Start Date RGLI</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>RGLI%3A Set End Date</fullName>
        <actions>
            <name>Set_Start_Date_RGLI</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets end of date of RGLI when upgrade is set to unsuccessful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RGLI%3A Set Start Date</fullName>
        <actions>
            <name>Set_Start_Date_RGLI</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <description>Sets start of date of RGLI when upgrade is set to successful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
