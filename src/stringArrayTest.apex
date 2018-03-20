public class StringArrayTest {
    public static List<String> generateStringArray(Integer text_num) {
        List<String> texts = new List<String>();
        for(Integer i=0; i<text_num; i++) {
            texts.add('Test ' + i);
        }
        return texts;
    }
}
