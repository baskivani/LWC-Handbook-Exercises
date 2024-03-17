trigger LeadTrigger on Lead (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
        
           // LeadTriggerHandler.IndustryValidation(Trigger.New);
            LeadTriggerHandler.SourceControl(Trigger.New);
        }
        WHEN BEFORE_UPDATE  {
    	
           // LeadTriggerHandler.IndustryValidation(Trigger.New);
            LeadTriggerHandler.ValidationInStatus(Trigger.New, Trigger.oldMap);

        }
        WHEN BEFORE_DELETE  {
         LeadTriggerHandler.IndustryValidation(Trigger.New);
        }
        WHEN AFTER_INSERT   {
        	
           // LeadTriggerHandler.createNewTask(Trigger.New);
        }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { 
        	
            LeadTriggerHandler.RestoredLead(Trigger.new);
        }
 
    }
}