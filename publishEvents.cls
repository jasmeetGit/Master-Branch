public class publishEvents{
    @auraEnabled
    public static String fireEventMethod(String message){
        Notification__e new = new Notification__e();
        new.message__c = message;
        EventBus.publish(new);
        return 'succeeded';
    }

}
