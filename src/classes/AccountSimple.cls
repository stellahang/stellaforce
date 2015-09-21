public class AccountSimple {
public Flow.Interview.Customer_Service myflow {get;set;}
public String AccountName;
public String ContactFirstName1;
public String ContactLastName1;
public String BillingMonth;
public String LastPaymentDate;
public String TerminationReason;
public String TerminationDate;
public String ProductCode;
public String ProductFamily;
public String ServiceType;
public String ContactID;
public String AccountID;

public String getAccountName() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.AccountName;
}

public String getAccountID() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.AccountID;
}    
    
public String getContactID() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ContactID;
}     
    
public String getContactFirstName1() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ContactFirstName1;
}

    
public String getContactLastName1() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ContactLastName1;
}    
    
public String getBillingMonth() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.BillingMonth;
}    
 
public String getLastPaymentDate() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.LastPaymentDate;
}        
 
public String getTerminationReason() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.TerminationReason;
}      
    
public String getTerminationDate() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.TerminationDate;
}     

public String getProductCode() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ProductCode;
}   
    
public String getProductFamily() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ProductFamily;
}       
 
public String ServiceType() {
// Access flow variables as simple member variables with get/set methods 
if(myflow==null) return 'na';
else return  myflow.ServiceType;
}  
    
//public PageReference CreateCase() {

//            Case newCase = new Case() ;
//            newCase.account = myflow.AccountNumber;
    
//      Contact ContactInfo = [SELECT Name FROM contact WHERE Id = :myflow.ContactID];
//            newCase.contact = ContactInfo;
//            newCase.subject = myflow.ServiceType;
    //        newToInsert.add(newInvoice);
    //    }
//        try {
    //        insert newToInsert;
//            insert newCase;
        }
//        catch (system.Dmlexception e){
//            system.Debug(e);
//        }
//        PageReference createPR = new PageReference('/' + newCase.Id);
//        createPR.setRedirect(true);
//        return createPR;

//    }    

//}