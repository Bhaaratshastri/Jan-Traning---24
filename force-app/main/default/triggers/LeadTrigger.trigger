/**
 * @description       : 
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : Shastri Bhaarat
**/
trigger LeadTrigger on Lead (before insert) {
   LeadTriggerHandler.checkLeadEmailOnInsert(Trigger.new);
} // End trigger