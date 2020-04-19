public class VesselTriggerHandler {
    public static Boolean created = false;
    public static void createRelatedVessel(){
        
        if(created==false){
        Vessel__c vessel = new Vessel__c();
        vessel.Name = 'Test Vessel from Trigger';
        vessel.Description__c = 'This is recursion example';
        created = true;
        insert vessel;
        }
        
    }
}