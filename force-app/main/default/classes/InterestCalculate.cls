public class InterestCalculate {
    public Integer Amount {set;get;}
    public Integer Years {set;get;}
    public Decimal Rate {set;get;}
    public Decimal Interest {set;get;}
    public void Calculate(){
        Interest=(Amount*Years*Rate)/100;
    }
    public void Cancel(){
        Amount=null;
        Years=null;
        Rate=null;
        Interest=null;
    }
}