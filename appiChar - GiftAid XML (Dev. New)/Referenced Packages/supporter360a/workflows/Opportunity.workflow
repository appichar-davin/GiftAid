<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <fieldUpdates>
        <fullName>Anonymous_TRUE</fullName>
        <field xsi:nil="true"/>
        <literalValue>1</literalValue>
        <name>Anonymous=TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Stage_Closed_Won</fullName>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Opportunity Stage = Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Anonymous Flag</fullName>
        <actions>
            <name>Anonymous_TRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Checks the Anonymous Flag if the Account is marked as Anonymous</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity - Change Stage to Closed Won</fullName>
        <actions>
            <name>Opportunity_Stage_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.HasOpportunityLineItem</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>If balance due = 0 and has OLI records.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
