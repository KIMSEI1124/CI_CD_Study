package com.cicd.backend;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class AppTest {

    @Test
    void run() {
        boolean b = true;
        assertThat(b).isTrue();
    }


}
