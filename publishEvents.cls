public class publishEvents{
    @auraEnabled
    public static String fireEventMethod(String message){
        Notification__e n = new Notification__e();
        n.message__c = message;
        EventBus.publish(n);
        return 'success';
    }

}