global class BatchSchedule implements Schedulable {
    
    global void execute(SchedulableContext sc)
    {     
        // Instantiate the batch class
 TestApexBatch myBatch = new TestApexBatch();
 
        database.executeBatch(myBatch,250);

}
}