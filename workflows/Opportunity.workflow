<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Oppurtunity_name</fullName>
        <field>Name</field>
        <formula>Account.Name &amp; &quot;_&quot; &amp; Name</formula>
        <name>Oppurtunity name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Oppurtunity name rule</fullName>
        <actions>
            <name>Oppurtunity_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>The name of the Opportunity.  Data entered into this field should follow the following standard:  AccountName_Opportunity</description>
        <formula>NOT(CONTAINS(Name, Account.Name))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
