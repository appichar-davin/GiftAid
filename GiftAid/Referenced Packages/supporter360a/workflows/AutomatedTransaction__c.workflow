<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <fieldUpdates>
        <fullName>Three_numbers_in_BSB</fullName>
        <description>Pad zero at start of BSB if 2 chars only</description>
        <field xsi:nil="true"/>
        <formula>IF ( LEN(00Nb00000064tC2) = 2, &apos;0&apos; + 00Nb00000064tC2, 00Nb00000064tC2)</formula>
        <name>Three numbers in BSB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Three Numbers in BSB</fullName>
        <actions>
            <name>Three_numbers_in_BSB</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Pad zero at beginning of BSB in case truncated by Excel or similar</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
