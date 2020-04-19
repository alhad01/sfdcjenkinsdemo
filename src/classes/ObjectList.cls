public class ObjectList
{
    public string val { get; set;}
    
    public List<SelectOption> getName()
    {
        List<Schema.SObjectType> obj = Schema.getGlobalDescribe().Values();
        List<SelectOption> options = new List<SelectOption>();
        for(Schema.SObjectType f : obj)
        {
           options.add(new SelectOption(f.getDescribe().getLabel(),f.getDescribe().getLabel()));
        }
        return options;
    }
}