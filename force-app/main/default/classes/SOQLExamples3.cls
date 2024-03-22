public class SOQLExamples3 {
    public List<SelectOption> options {set;get;}
    public List<Account> accs {set;get;}
    public SOQLExamples3()
    {
        accs=[select name,industry,rating,type from Account];
        options=new List<SelectOption>();
        SelectOption n=new SelectOption('None','-None-');
        options.add(n);
        List<Integer> rows=new List<Integer>{1,5,10,15,20,25};
            for(Integer i=0;i<rows.size();i++){
				SelectOption op=new SelectOption(String.valueOf(rows[i]),string.valueOf(rows[i]));
                options.add(op);
            }
        
        
    }
}