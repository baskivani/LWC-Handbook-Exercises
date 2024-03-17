@isTest(SeeAllData = true)
public class CountOfContactTest {

    @isTest
    private static void contactSayisiTest(){
        
     integer sonuc = CountOfContact.ContactSayisi('0018d00000oCaqPAAS');
        
        system.assertEquals(1,sonuc, 'Burling textile contact sayisi 1dir');
    }
}