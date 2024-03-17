@isTest
public class BodyMassIndexTest {
 @isTest

    private static void bodyMassIndexPositive(){
    
        integer sayi = 5;
        integer sayi2 = 50;
        Decimal Cevap = BodyMassIndex.bodyMassIndex(160,60);
		//boy 160 ve kilo 60 ise 0.00234375 olmalidir.
		
        system.assertEquals(0.00234375,Cevap,'Cevap bu olmalidir');
        system.assertNotEquals(-1,Cevap,'Cevap bu olmamalidir');
        
        		
		// boy 0'dan kucuk girilmisse asagidaki gibi bir test yazilir.
        Decimal Cevap2 = BodyMassIndex.bodyMassIndex(-1,60);
        system.assertEquals(-1,Cevap2,'Cevap -1 olmalidir');
        system.assertNotEquals(25,Cevap2,'Cevap bu olmamalidir');

        // kilo 0'dan kucuk girilmisse asagidaki gibi bir test yazilir.
        Decimal Cevap3 = BodyMassIndex.bodyMassIndex(160,-50);
        system.assertEquals(-1,Cevap3,'Cevap -1 olmalidir');
        system.assertNotEquals(24,Cevap3,'Cevap bu olmamalidir');

    }
}