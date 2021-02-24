import org.junit.Test;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Tests {

    @Test
    public void testGet() {

        String address = "http://rest-deployment-service:8000";

        RestTemplate restTemplate = new RestTemplate();
        Map<String, String> vars = new HashMap<String, String>();
        String result = restTemplate.getForObject(address, String.class, vars);

        assertEquals("sup boomer", result);
    }
    @Test
    public void testGet2() {

        String address = "http://rest-deployment-service:8000";

        RestTemplate restTemplate = new RestTemplate();
        Map<String, String> vars = new HashMap<String, String>();
        String result = restTemplate.getForObject(address, String.class, vars);

        assertEquals("sup boomer", result);
    }
}
