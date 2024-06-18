/**
 * @description       : 
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : Shastri Bhaarat
**/
trigger AccountTrigger on Account (after insert) {
    AccountTriggerHandler.createCon(Trigger.new);
}//End Trigger