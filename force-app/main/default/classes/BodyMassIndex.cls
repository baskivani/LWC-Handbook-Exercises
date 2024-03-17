public class BodyMassIndex {
    
    public static Decimal bodyMassIndex(decimal boy, decimal kilo){
        decimal sonuc;
        if (boy>0 && kilo>0){
            try{
         sonuc =kilo/(boy*boy);
            }
            catch (Exception e){
                system.debug('There is an error'+e.getmessage());
            }

        } 
        else {
            sonuc = -1;
        }
                            return sonuc;

    }

}