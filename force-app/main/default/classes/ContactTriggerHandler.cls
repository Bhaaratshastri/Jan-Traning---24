/**
 * @description       : 
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : Shastri Bhaarat
**/
public with sharing class ContactTriggerHandler {
    public static void updateTitle(List<Contact> conList) {
        for (Contact con : conList) {
            if (String.isBlank(con.Title)) {
                con.Title = 'Bussiness User';
            }
        }
    }
}