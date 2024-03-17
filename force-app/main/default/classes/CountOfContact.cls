public class CountOfContact {
    
    public static integer ContactSayisi(string accId){
        integer contactSayisi;
        string gelenId = accId;
        if(accId.length()==18){
        contactSayisi = [Select Count() From Contact Where AccountId =:gelenId];
        } 
        else {
           contactSayisi = -1; 
            
        }
        
        
        
        return contactSayisi;
    }
    public static List<Contact> ContactListesi(id accId){
            List<Contact> cntList = new  List<Contact>();

    			return cntList;
    }

}