public class CaseTriggerHandler {

    public static void OnlySystemAdminsDeleteRecords(List<Case> caseList){
    
    	Id currentUserProfileId = UserInfo.getProfileId();
    	Id systemProfileId = [SELECT Id From User WHERE Name = 'System Administrator' Limit 1].id;
        
        for (Case cse :caseList){
            
            if (currentUserProfileId != systemProfileId){
                cse.addError(' You dont have to right to delete records. Go away');
            }
        }
}
}