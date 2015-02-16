<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>new acc rule</fullName>
        <actions>
            <name>New_acc</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.BillingCity</field>
            <operation>equals</operation>
            <value>Delhi</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>New_acc</fullName>
        <assignedTo>ralph.j@tcs.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>djcopsjkcfopsdkcf</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>New acc</subject>
    </tasks>
</Workflow>
