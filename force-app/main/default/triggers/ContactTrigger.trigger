/**
 * @description       : 
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : Shastri Bhaarat
**/
trigger ContactTrigger on Contact (before insert) {
    ContactTriggerHandler.updateTitle(Trigger.new);
}