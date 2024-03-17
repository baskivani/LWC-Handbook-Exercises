trigger CaseTrigger on Case (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  { 
             CaseTriggerHandler.OnlySystemAdminsDeleteRecords(Trigger.New);

        }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }
}