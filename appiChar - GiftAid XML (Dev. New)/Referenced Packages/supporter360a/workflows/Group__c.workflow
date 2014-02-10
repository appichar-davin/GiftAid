<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <fieldUpdates>
        <fullName>CreateAccount</fullName>
        <field xsi:nil="true"/>
        <literalValue>1</literalValue>
        <name>Create Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Create One-2-One Account For Groups</fullName>
        <actions>
            <name>CreateAccount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
