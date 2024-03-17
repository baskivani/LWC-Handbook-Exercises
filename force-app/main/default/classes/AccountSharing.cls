public with sharing class AccountSharing {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
    return [SELECT Id, Name, Type, Rating, Phone FROM Account];
     }
    }
