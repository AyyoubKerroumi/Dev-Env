public with sharing class ContactController {
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContacts(){
        return [SELECT Id,Name,Title,Phone,Email from Contact LIMIT 7];
    }
    @AuraEnabled(cacheable = true)
    public static List<Contact> searchContact(String searchKey){
        String key = '%' + searchKey + '%';
        return [SELECT Id,Name,Title,Phone,Email from Contact where Name LIKE :key];
    } 
}
