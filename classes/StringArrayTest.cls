public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer arg){
        List<String> results = new List<String>();

        for(Integer i=0; i < arg; i++){
            results.add('Test ' + i);
        }
        
        return results;
    }
}