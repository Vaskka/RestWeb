package com.vaskka.fun.restweb.RestWeb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Calendar;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestWebApplicationTests {

	@Test
	public void contextLoads() {


	}


	@Test
	public void test() {

		Date date = java.util.Calendar.getInstance(java.util.Locale.CHINA).getTime();

		Calendar rightNow = Calendar.getInstance();
		rightNow.setTime(date);
		rightNow.add(Calendar.HOUR, 24);
		Date validTime = rightNow.getTime();

		System.out.println(validTime.compareTo(date));
	}

}
