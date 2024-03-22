public class Calculator {
    public Integer aval 	{set;get;}
    public Integer bval 	{set;get;}
    public Integer result 	{set;get;}
    public void add(){
        result=aval+bval;
    }
    public void mul(){
        result=aval*bval;
    }
    public void cancel(){
        aval=null;
        bval=null;
        result=null;
    }
}