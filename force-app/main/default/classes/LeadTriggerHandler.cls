/**
 * @description       : 
 * @author            : Shastri Bhaarat
 * @group             : 
 * @last modified on  : 06-18-2024
 * @last modified by  : Shastri Bhaarat
**/
public with sharing class LeadTriggerHandler {
    public static void checkLeadEmailOnInsert(List<Lead> leadList) {
		Set<String> newEmailSet = new Set<String>();
		for (Lead leadRec : leadList) {  // 200
			if (String.isNotBlank(leadRec.Email)) {
				newEmailSet.add(leadRec.Email);
			}
		}
		Set<String> emailExist = new Set<String>();
			for (Lead existingLead : [SELECT Id, Email
										FROM Lead
										WHERE Email IN :newEmailSet]) { // 200
				emailExist.add(existingLead.Email);	
		} // End for
			
		for (Lead aLead : leadList) { // 200
			if (emailExist.contains(aLead.Email)) {
				aLead.addError('Duplicate Email!');
			}
		} // End for
	}
}