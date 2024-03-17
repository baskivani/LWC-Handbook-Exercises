trigger ContactTrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  {
        	
      // ContactTriggerHandler.SalesRepr(Trigger.New,Trigger.newMap);   
		ContactTriggerHandler.AddAnAccount(Trigger.New);
        ContactTriggerHandler.NameEmailPhoneControl(Trigger.New,Trigger.OldMap);
        }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  { 
        
        }
        WHEN AFTER_INSERT   { 
            
            
        ContactTriggerHandler.NumberOfContacts(Trigger.new);
        }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   {
        ContactTriggerHandler.NumberOfContacts(Trigger.old);
            
        }
        WHEN AFTER_UNDELETE { }
 
    }
}