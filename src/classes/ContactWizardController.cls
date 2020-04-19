public class ContactWizardController {
    
    public ContactWizardController(ApexPages.StandardController controller){}
    
    public Datetime t1;
    public transient Datetime t2;
    
    public DateTime getT1(){
        if(t1==null){
            t1 = System.now();
        }
        return t1;
    }
    
    public DateTime getT2(){
        if(t2==null){
            t2 = System.now();
        }
        return t2;
    }
    
    public PageReference navigateToInformationPage(){
        return Page.ContactInformationPage;
    }
    
    public PageReference navigateToAddressInformationPage(){
        return Page.ContactAddressInformation;
    }
    
    public PageReference navigateToAdditionalInformationPage(){
        return Page.ContactAdditionalInformation;
    }
}