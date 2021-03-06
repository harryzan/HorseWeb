package com.horseweb.core.repository;

import com.horseweb.core.domain.Introduction;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by IntelliJ IDEA.
 * User: xiejiao
 * Date: 12-3-20
 * Time: 下午1:57
 */
public interface IntroductionRepository extends MongoRepository<Introduction,String> {

    public Introduction findOneByName(String name);

    public Introduction findOneByNameAndLang(String name, String lang);

}
