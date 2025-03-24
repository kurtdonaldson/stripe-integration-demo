public with sharing class StripePaymentHelper {

    @AuraEnabled(cacheable=true)
    public static List<OpportunityLineItem> getOpportunityLineItems(String parentId){

        List<OpportunityLineItem> opportunityLineItems = [SELECT Id, TotalPrice, Name, ProductCode, Product2.Name,  Quantity FROM OpportunityLineItem WHERE OpportunityId = :parentId];

        return opportunityLineItems;
        
    }


    // sendPaymentRequest(String productsJson){

    // }
}