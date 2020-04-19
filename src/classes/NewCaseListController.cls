public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> caseList = New List<Case>();
        caseList = [SELECT Id,CaseNumber
                    FROM Case
                   	WHERE Status = 'New'];
        return caseList;
    }
}