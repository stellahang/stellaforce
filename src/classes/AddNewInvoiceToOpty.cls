public with sharing class AddNewInvoiceToOpty {

    public String InvoiceDiscount { get; set; }
    public String InvoiceProducts { get; set; }
    public String InvoiceZipcode { get; set; }
    public String InvoiceState { get; set; }
    public String InvoiceCity { get; set; }
    public String InvoiceStreet1 { get; set; }
    public String OptyId = ApexPages.currentPage().getParameters().get('OptyId');

    public AddNewInvoiceToOpty(){

        System.Debug('2222222 OptyId: ' + OptyId);

        Opportunity[] OptyInfo = [SELECT Name, AccountId FROM Opportunity WHERE Id = :OptyId];
        System.Debug('2222222 Opty Record: ' + OptyInfo);
        System.Debug('2222222 Opty Name: ' + OptyInfo[0].Name);

        List<Account> AcctInfo = [SELECT BillingAddress, Default_Discount_Code__c, Name FROM Account WHERE Id = :OptyInfo[0].AccountId];
        for (Account acct : AcctInfo) {
            Address addr = acct.BillingAddress;
            System.Debug('2222222 Street: ' + addr.getStreet() );
            System.Debug('2222222 City: ' + addr.getCity() );
            System.Debug('2222222 State: ' + addr.getState() );
            System.Debug('2222222 Zipcode: ' + addr.getPostalCode() );
            System.Debug('2222222 Default Discound Code: ' + acct.Default_Discount_Code__c);
            System.Debug('2222222 Account Name: ' + acct.Name);
            InvoiceStreet1 = addr.getStreet();
            InvoiceCity = addr.getCity();
            InvoiceState = addr.getState();
            InvoiceZipcode = addr.getPostalCode();
            InvoiceDiscount = acct.Default_Discount_Code__c;
        }  
        List<OpportunityLineItem> OliInfo = [SELECT Description, Name, PricebookEntryId, ProductCode FROM OpportunityLineItem WHERE OpportunityId = :OptyId];
        integer i = 0;
        for (OpportunityLineItem Oli : OliInfo) {
            System.Debug('2222222 Line Item: ' + i + ' - ' + Oli);
            System.Debug('2222222 Prod Name: ' + i + ' - ' + Oli.Name.replace(OptyInfo[0].Name, ''));
            if (i > 0) 
                InvoiceProducts = InvoiceProducts + ',' + Oli.Name.replace(OptyInfo[0].Name, '');
            else
                InvoiceProducts = Oli.Name.replace(OptyInfo[0].Name, '');
            i++;
        }  
    }

 //   public PageReference CreateTheInvoice() {

    //    List<Invoice__c> newToInsert = new List<Invoice__c>();
    //    for (integer i=0; i<1; i++) {
  //          Invoice__c newInvoice = new Invoice__c();
  //          newInvoice.Invoice_City__c = InvoiceCity;
  //          newInvoice.Invoice_Street_1__c = InvoiceStreet1;
  //          newInvoice.Invoice_State__c = InvoiceState;
  //          newInvoice.Invoice_Zip__c = InvoiceZipcode;
  //          newInvoice.Discount_Code__c = InvoiceDiscount;
  //          newInvoice.Products__c = InvoiceProducts;
  //          newInvoice.Opportunity__c = OptyId;
    //        newToInsert.add(newInvoice);
    //    }
  //      try {
    //        insert newToInsert;
  //          insert newInvoice;
   //     }
   //     catch (system.Dmlexception e){
   //         system.Debug(e);
   //     }
   //     System.Debug('2222222 In PageRef, OptyId: ' + OptyId);
   //     PageReference createPR = new PageReference('/' + OptyId);
   //     System.Debug('2222222 Create PageReference: ' + createPR);
   //     createPR.setRedirect(true);
   //     return createPR;
    
   // }
 
    public PageReference CancelTheInvoice() {
        
        System.Debug('2222222 In PageRef, OptyId: ' + OptyId);
        PageReference cancelPR = new PageReference('/' + OptyId);
        System.Debug('2222222 Cancel PageReference: ' + cancelPR);
        cancelPR.setRedirect(true);
        return cancelPR;
        
    }

}