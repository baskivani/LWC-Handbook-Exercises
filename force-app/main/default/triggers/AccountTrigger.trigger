trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
            //AccountTriggerHandler.changeShippingAddress(Trigger.New);
           AccountTriggerHandler.IndustryControl(Trigger.New);
          //  AccountTriggerHandler.accRecursionExample(Trigger.New);
        }
        WHEN BEFORE_UPDATE  {
           AccountTriggerHandler.IndustryControl2(Trigger.new,Trigger.oldMap);
            AccountTriggerHandler.OldPhone(Trigger.New, Trigger.oldMap);
            AccountTriggerHandler.handleOwnership(Trigger.New, Trigger.OldMap);
        }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   {
            
         AccountTriggerHandler.createNewContact(Trigger.New);
         //AccountTriggerHandler.CreateNContacts(Trigger.New);
        }
        WHEN AFTER_UPDATE   {
        AccountTriggerHandler.UpdateContactsOnAccountWebsiteChange(Trigger.New, Trigger.oldMap);
       AccountTriggerHandler.CreateNContacts(Trigger.New);

        }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { 
        
            AccountTriggerHandler.WritetoDescriptionofContact(Trigger.New, Trigger.newMap);
        }
 
    }
}