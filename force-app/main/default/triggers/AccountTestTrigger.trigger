trigger AccountTestTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
      SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  {
        
            For (Account acc : Trigger.New){
                string space =' ';
                acc.Name= acc.Name+ space+ 'Inserted';
            }
        }
        WHEN BEFORE_UPDATE  {
            
        For (Account acc : Trigger.New){
                string space =' ';
                acc.Name= acc.Name+ space+'Updated';
            }
        }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   { }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
 
    }
}