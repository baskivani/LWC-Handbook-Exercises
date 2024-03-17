public class OppurtunityTriggerHandler {
    
    public static void UpdateStage(List<Opportunity> oppList, Map<id,Opportunity> oldOppMap){
        // When the Opp Stage updated to "Negotion/Review" create a new task for owner.
        List <Task> taskList = new List<Task> ();

        for (Opportunity opp : oppList) {
            
            Opportunity oldOpportunity = oldOppMap.get(opp.id);
            
            if (oldOpportunity.StageName!='Negotiation/Review' && opp.StageName=='Negotiation/Review' ){
                
      Task newTask = new Task ();
        newTask.OwnerId =opp.OwnerId;
        newTask.Subject = 'This is a new task for updated Stage field';
        newTask.Priority = 'Normal';
        newTask.Whatid = opp.id;
        newTask.ActivityDate = system.today().addDays(5); 
        taskList.add(newTask);
        
    }
    insert taskList;
            }
        }
    public static void PreventDelete(List<Opportunity> oppList){
       //Prevent Opportunity if Stage Name is Closed Won. 
        for (Opportunity opp : oppList){
            if(opp.StageName=='Closed Won'){
                
                opp.StageName.addError(' You can not delete this record');
            }
        }
        
    }
       
    public static void whoUpdated (list<Opportunity> oppList){
        
        String userName = system.userInfo.getName();
        Date todaysDate = system.today();
        for (Opportunity opp : oppList) {
            opp.Description = 'This record has been updated by ' + userName + ' on ' + todaysDate;
            
            
        }
    }
    
 public static void CreateATask (list<Opportunity> oppList){
 			
     	List<Task> tskList = new List<Task>();
     
     for (Opportunity opp : oppList){
         
         Task tskRecord = new Task();
         tskRecord.Description = 'Please investigate why the opporunity was deleted';
         tskRecord.Subject = ' An oppurtunity has been deleted';
         tskRecord.ActivityDate = system.today();
         tskRecord.Status = 'Not Started';
         tskRecord.Priority = 'High';
         tskRecord.Whatid = opp.id;
         tskRecord.OwnerId=opp.Account.OwnerId;
         tskList.add(tskRecord);
         
     }
     if(!tskList.isEmpty()){
         
         insert tskList;
     }
    }
    
}