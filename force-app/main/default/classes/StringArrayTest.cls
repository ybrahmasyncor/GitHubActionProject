public class StringArrayTest {
  public static String[] generateStringArray (Integer lenstr){    
        String[] sstring = new String[lenstr]; 

        for (Integer i = 0; i<lenstr; i++) {
            sstring[i] = 'Test ' + i;
        }            

        system.debug('STD_DBG:0:'+sstring);

        return (sstring);

    }
}