
package petstore;

import com.intuit.karate.junit5.Karate;

class PetstoreRunnerTest {

    @Karate.Test
    Karate testPetstore() {
        return Karate.run("classpath:petstore/petstore.feature");
    }
}