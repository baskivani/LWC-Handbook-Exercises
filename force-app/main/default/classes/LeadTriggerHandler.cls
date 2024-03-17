public class LeadTriggerHandler {
    
    public static void IndustryValidation(list<Lead> leadList){
        // If a new Lead is created or updated and if 'Industry' field is null, give a warning.
        
        for (Lead led : leadList){
            
            if(led.Industry==null || led.Status =='Working - Contacted'){
                led.addError('You have to select a value');
            } 
        }
        
    }

    public static void RestoredLead(list<lead> leadList){
        
        for (lead led :leadList){
            system.debug('You undeleted ' + led.id );
            led.Description = 'This record is coming from recyle bin.';
        }
        
    }
    public static void ValidationInStatus(list<Lead> leadList, Map<id,Lead> oldLeadMap){
        
        for (Lead newLead : leadList){
            
            Lead oldLead = oldLeadMap.get(newLead.id);
            if(oldLead.Status=='Open - Not Contacted' && newLead.Status=='Closed - Not Converted'){
                newLead.addError('It is an error');
                
                
            }
        }
        
    }
    
    public static void SourceControl(List<Lead> leadList){
        
        for (Lead newLead : leadList){
            if(newLead.LeadSource==null) {
                newLead.LeadSource='Other';
            }
        }
    }
    public static void createNewTask(list<Lead> leadList){
    
   List <Task> taskList = new List<Task> ();
    for (Lead newLead : leadList) {
        Task newTask = new Task ();
        newTask.OwnerId =newLead.OwnerId;
        newTask.Subject = 'This is a new task';
        newTask.Priority = 'Normal';
        newTask.WhoId = newLead.id;
        newTask.ActivityDate = system.today().addDays(5); 
        taskList.add(newTask);
        
    }
    insert taskList;
}
}