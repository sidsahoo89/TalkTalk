public with sharing class wrapper_test_controller{

    public wrapper_test_controller(
ApexPages.StandardController controller) {

    }

public list<wrapperclass> wrapperelement_for_contact{get;set;}
public list<wrapperclass> wrapperelement_for_opportunity{get;set;}
list<contact> object1 = [select id,name from contact where contact.accountid=:ApexPages.currentPage().getParameters().get('Id') ];
list<opportunity> object2 = [select id,name from opportunity where opportunity.accountid=:ApexPages.currentPage().getParameters().get('Id')];

public list<wrapperclass> getaccountwrapperret(){
wrapperelement_for_contact = new list<wrapperclass>();
for(contact obj1: object1){
wrapperelement_for_contact.add(new wrapperclass(obj1));
}
return wrapperelement_for_contact;
}
public list<wrapperclass> getcontactwrapperret(){
wrapperelement_for_opportunity = new list<wrapperclass>();
for(opportunity obj2: object2){
wrapperelement_for_opportunity.add(new wrapperclass(obj2));
}
return wrapperelement_for_opportunity;
}
public class wrapperclass{
public contact object_contact_1{get;set;}
public opportunity object_opportunity_2{get;set;}

public wrapperclass(contact obj1){
this.object_contact_1 = (obj1);
}
public wrapperclass(opportunity obj2){
this.object_opportunity_2 = (obj2);}
}
}