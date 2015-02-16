public class VfTestController 
{
    List<ContentDocument> topContent;
    public List<ContentDocument> getTopContent()
    {
        return topContent;
    }

    public PageReference loadDocuments()
    {
        if (topContent == null)
        {
            topContent = [select Id,Title from ContentDocument limit 10];
        }
        return null;
    }
}