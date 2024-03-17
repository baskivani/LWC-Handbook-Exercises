public class AccountTriggerHandler {

    public static void createNewContact(list<Account> accList){
         List <Contact> cntList = new List <Contact> ();
            for (Account acc : accList) {
                
                Contact newContact= new Contact();
                newContact.LastName= 'AAA cnt of ' + acc.Name;
                newContact.AccountId=acc.id;
                cntList.add(newContact);
                
            }
            insert cntList;
    }
/***********************************************************************************/
    public static void IndustryControl(list<Account> accList){
             for (Account acc : accList){
                
                if (acc.Industry==null){
                    acc.Industry='Banking';
                }
            }

        } 
 /***********************************************************************************/
    public static void IndustryControl2(list<Account> acclist, Map<id, Account> oldAccountMap){
        
         for (Account acc: acclist){
                
                Account oldAccount= oldAccountMap.get(acc.id);
                if(oldAccount.Industry!='Education'){
              
                    acc.Industry='Education';
 }
            }
    }
               Static boolean flag=True;
				static integer counter=0;
/***********************************************************************************/
    public static void accRecursionExample (list<Account> accTriggerList){
        
        if(counter<10){
            counter=counter+1;
            //flag=false;
          list<Account> accList = new list <Account> ();
        
            for (Account acc: accTriggerList) {
                               
                Account accNew = new Account( Name = 'ABC ');
                accList.add(accNew);
                            }
            insert accList;
          
    }
    }
/***********************************************************************************/
     public static void WritetoDescriptionofContact(list<Account> accList, Map<id,Account> newAccountMap){
         
         Set <id> accidleri = newAccountMap.keySet();
         
         list <Contact> cntList = [Select id from Contact Where AccountId IN: accidleri];
         for (Contact cnt : cntList) {
             
             cnt.Description= 'This record is coming from Recyle Bin';
             
         }
        update cntList;
    }
/***********************************************************************************/    
    public static void OldPhone(List<Account> accList, Map<id,Account> oldMap){
        
        for (Account acc : accList){
         Account oldacc = oldMap.get(acc.id);
            if (oldacc.Phone!=acc.Phone &&  oldacc.Old_Phone__c.length()<250){
                if(acc.Old_Phone__c!=null){
            acc.Old_Phone__c = oldacc.Phone + ',' +acc.Old_Phone__c;
            
                } else {
                    acc.Old_Phone__c = oldacc.Phone;
                    
                }
            }   
        }
    }
/***********************************************************************************/    
    public static void changeShippingAddress(List<Account> accList){
      // Write a trigger on Account, when an account is inserted, automatically account billing
      // address should populate into the account shipping address.  
        for (Account acc : accList){
            if (acc.BillingCity!=null) {
          acc.ShippingCity = acc.BillingCity ;
          }
           if (acc.BillingStreet!=null) {
          acc.ShippingStreet = acc.BillingStreet;
           }
  		 if (acc.BillingState!=null) {
          acc.ShippingState = acc.BillingState;
			}
   		 if (acc.BillingPostalCode!=null) {
          acc.ShippingPostalCode = acc.BillingPostalCode;
            } 
    	 if (acc.BillingCountry!=null) {
           acc.ShippingCountry = acc.BillingCountry; 
           }
             accList.add(acc);
         
        }
        insert accList;
    }
  /***********************************************************************************/
   public static void handleOwnership(List<Account> accList, Map<id,Account> oldMap){
        
        for (Account acc : accList){
   Account oldacc = oldMap.get(acc.id);
	
	if (acc.Industry=='Agriculture' && acc.Type=='Prospect'){
	if (oldacc.Ownership!= acc.Ownership && acc.Ownership=='Private'){
		acc.addError('You can not change the ownership');
}
}
            
        }
  
    }

/***********************************************************************************/    
    public static void  UpdateContactsOnAccountWebsiteChange (List<Account> accList, Map<id,Account> oldMap){
    // List to store updated Contacts
    List<Contact> updatedContacts = new List<Contact>();

    // Iterate through updated Accounts
    for (Account updatedAccount : accList) {
        // Check if the website has been changed
        if (oldMap.get(updatedAccount.Id).Phone != updatedAccount.Website) {
            // Query for related Contacts
            List<Contact> relatedContacts = [SELECT Id, Phone FROM Contact WHERE AccountId = :updatedAccount.Id];

            // Update the website on Contacts
            for (Contact con : relatedContacts) {
                con.Phone = updatedAccount.Phone;
                updatedContacts.add(con);
            }
        }
    }

    // Update Contacts
    if (!updatedContacts.isEmpty()) {
        update updatedContacts;
    }
}
    public static void  CreateNContacts(List<Account> accList){
        
	List<Contact> cntList = new List<Contact>();       
        
        		for (Account acc : accList){
            if (acc.Create_N_Contacts__c!=null){
           
          for (Integer i= 0 ; i<acc.Create_N_Contacts__c ; i++) {
                        
    		 Contact conRecord = new Contact();
        	conRecord.LastName = acc.Name+i;
            conRecord.AccountId = acc.id;
            cntList.add(conRecord);
                }
            }
        }
        if (cntList.isEmpty()){
        insert cntList;
        }
    }

}