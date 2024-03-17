@isTest
public class AccountTestTriggerTest {
    
    @isTest
    Private Static Void BeforeInsertTest(){
        
        Account acc = new Account();
        acc.Name = 'AAA';
        
        insert acc;

        account sonHal = [Select Id from Account Where id =:acc.id];
        Assert.areEqual('AAA Inserted',sonHal.Name);
        
    }
    
 @isTest
    Private Static Void BeforeUpdateTest(){
        Account acc = new Account();
        acc.Name = 'AAA';
        acc.Phone ='1234';
        
        insert acc; 
        
        acc.Phone = '55666';
        update acc;
        
                account sonHal = [Select Id from Account Where id =:acc.id];

                Assert.areEqual('AAA Inserted',sonHal.Name);

        
    }
}