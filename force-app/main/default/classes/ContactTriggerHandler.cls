public class ContactTriggerHandler {
    
    public static void NumberOfContacts(List<Contact> cntList){
        
        Set<Id> accIdleri = new Set<Id>();
        for (Contact cnt : cntList){
            if (cnt.AccountId!=null){
                accIdleri.add(cnt.AccountId);
            }
        }                
              list <Account> accList = [SELECT Id, Name,NumberOfContacts__c , (SELECT Id From Contacts) From Account WHERE id IN : accIdleri];
                for (Account acc: accList ){
                    acc.NumberOfContacts__c = acc.contacts.size();
                }
          update accList;  
    }
    
   /*
     public static Void SalesRepr(List<Contact> cntList){
        	
       Map <id,User> newMap = new Map();
        newMap = ([SELECT id, LastName, FirstName, Name From User]);
        for (Contact cnt : cntList){
            
             User myUser = newMap.get(cnt.Ownerid);
            
            
            cnt.Sales_Repr__c = myUser.lastName + ' ' + myUser.FirstName;
        }
        
        update cntList;
    }
*/
    public static void AddAnAccount(List<Contact> cntList){
    
        for (Contact cnt : cntList){
            if (cnt.AccountId==null){
                cnt.addError('You have to add an Account');
            }
        }
    }
        
    public static void NameEmailPhoneControl(List<Contact> cntList, Map<id,Contact> oldMap){
        
        for (Contact cnt : cntList){
         Contact oldcnt =oldMap.get(cnt.id);
            
            if (oldcnt.Name==cnt.Name || oldcnt.Email==cnt.Email || oldcnt.Phone==cnt.Phone){
                
                cnt.addError('You have to select different name,email or phone');
            }
           
        }
    }
}