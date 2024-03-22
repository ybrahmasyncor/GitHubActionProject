public class SoqlExample2 {
    public List<OptyWrapper> optyList {Set;get;}
    public String stage {set;get;}
    public boolean flag {set;get;}
    public void query(){
        List<Opportunity> myList=[select id,name,stageName,closeDate,Amount from Opportunity where stageName=:stage];
        optyList=new List<OptyWrapper>();
        for(Opportunity op :myList){
            OptyWrapper p=new OptyWrapper();
            p.opty=op;
            p.flag=false;
            optyList.add(p);
        }
    }
}