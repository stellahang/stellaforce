public class CalloutWebService {

    @future(callout=true)
    public static void callWS1 (String id, String accountNumber)
    { 
            
            // TODO: Declare a new variable called "port" of type 
            onboardingSalesforceCom.GetCommisionsPort port = new onboardingSalesforceCom.GetCommisionsPort();
            
            // TODO: Declare a variable called "Result" of type onboardingSalesforceCom.getCommissionsResponse
            // TODO: Initialize this variable the result of calling the method ValidateAddresses method of the "port" variable, passing the listAddress variable.
            onboardingSalesforceCom.getCommissionsResponse result = new onboardingSalesforceCom.getCommissionsResponse();
            Result.return_x = port.getCommissions(id,accountNumber);

             
            system.debug('Callout result...' + result.return_x);
}
}