trigger OppurtunityTrigger on Opportunity (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { }
        WHEN BEFORE_UPDATE  {
        	
            OppurtunityTriggerHandler.whoUpdated(Trigger.New);
        }
        WHEN BEFORE_DELETE  {
        
            //OppurtunityTriggerHandler.PreventDelete(Trigger.New);
        }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { 
        
            OppurtunityTriggerHandler.UpdateStage(Trigger.New, Trigger.oldMap);
            
            Set<Id> accIds = Trigger.oldMap.keyset();
            
            List<Opportunity> oppList = [Select Id,Name From Opportunity Where AccountId = :accIds];
            
            for (Opportunity opp: oppList){
                
            }
        }
        WHEN AFTER_DELETE   { 
        	OppurtunityTriggerHandler.CreateATask(Trigger.Old);
        }
        WHEN AFTER_UNDELETE { }
 
    }
   
}