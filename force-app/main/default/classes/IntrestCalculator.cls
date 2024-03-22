public class IntrestCalculator {
    public Decimal Amount {set;get;}
    public Decimal Rate {set;get;}
     public Decimal Years {set;get;}
     public Decimal Interest {set;get;}
    public void Calculate(){
        Interest=(Amount*Rate*Years)/100;
        System.debug('Interest Amount is'+Interest);
    }
    public void reset(){
        Amount=null;
        Rate=null;
        Years=null;
        Interest=null;
       system.debug('====>Amount'+Amount); 
        system.debug('====>Rate'+Rate);
        system.debug('====>Years'+Years);
    }
        
}