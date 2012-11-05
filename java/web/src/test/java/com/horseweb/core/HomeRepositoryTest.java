package com.horseweb.core;

import com.horseweb.core.domain.Home;
import com.horseweb.core.repository.HomeRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:45 AM
 * To change this template use File | Settings | File Templates.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext-test.xml"})
public class HomeRepositoryTest {

    @Autowired
    private HomeRepository homeRepository;


    @Test
    public void test() {
        List<Home> homes = homeRepository.findAll();
        for (Home home : homes) {
            System.out.println("home.getName() = " + home.getName());
            System.out.println("home.getContent() = " + home.getContent());
        }
        System.out.println("homes.size() = " + homes.size());

    }

}
