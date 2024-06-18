/**
 * @description       : Create contact when Account AnnualRevenue is greter then or equal to 500000
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : Shastri Bhaarat
**/
public with sharing class AccountTriggerHandler {
    public static void createCon(List<Account> acctList) {
        List<Contact> insertConList = new List<Contact>();
        for (Account acct : acctList) {
            if (acct.AnnualRevenue >= 500000) {
                Contact con = new Contact();
                con.FirstName = 'Test';
                con.LastName =  'Con';
                con.AccountId = acct.Id;
                insertConList.add(con);
            }
        }
        if (insertConList.size() > 0) {
            insert insertConList;
        }
    }
}