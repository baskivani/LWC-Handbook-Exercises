public with sharing class MessageFromApex {
    @AuraEnabled(cacheable=true)
    public static String getInputMessage() {
    return 'Message from Apex Class';
    }
    }
