import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.assertEquals;

public class TestApp {
    public static void main(String[] args) {

        testGet();

    }

    private static void testGet() {

        String address = "http://simplerestcontroller:8000";

        RestTemplate restTemplate = new RestTemplate();
        Map<String, String> vars = new HashMap<String, String>();
        String result = restTemplate.getForObject(address, String.class, vars);

        assertEquals("holocaustical", result);
    }
}
