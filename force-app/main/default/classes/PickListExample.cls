public class PickListExample {
    public List<SelectOption> options {set;get;}
    public String selected   {set;get;}
    public PickListExample(){
        options=new List<SelectOption>();
        SelectOption n=new SelectOption('none','-None-');
        SelectOption op1=new SelectOption('All','All');
        SelectOption op2=new SelectOption('Today','Today');
        SelectOption op3=new SelectOption('This_Week','This Week');
        SelectOption op4=new SelectOption('Last_Week','Last Week');
        options.add(n);
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
        
    }
    
}