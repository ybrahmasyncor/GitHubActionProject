public class MovieData {
    public String moviename{set;get;}
    public Integer ticketsavailable {set;get;}
    public Datetime showtime {set;get;}
    public MovieData(){
        moviename='Bahubali';
        ticketsavailable=2;
        showtime=Date.newInstance(2017,05,20);
    }
        
}