public class PickListExample1 {
    public List<SelectOption> options {set;get;}
    public String selected   {set;get;}
    public PickListExample1(){
        options=new List<SelectOption>();
        SelectOption n=new SelectOption('none','-None-');
        SelectOption op1=new SelectOption('Telangana','Hyderabad');
        SelectOption op2=new SelectOption('Karnataka','Banglore');
        SelectOption op3=new SelectOption('Andhrapradesh','Amaravathi');
        SelectOption op4=new SelectOption('Tamilanadu','Chennai');
        options.add(n);
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
        
    }
    
}