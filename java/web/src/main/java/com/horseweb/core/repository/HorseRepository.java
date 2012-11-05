package com.horseweb.core.repository;

import com.horseweb.core.domain.Horse;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: xiejiao
 * Date: 12-3-20
 * Time: 下午1:57
 */
public interface HorseRepository extends MongoRepository<Horse,String> {

    public Horse findOneByName(String name);

    public List<Horse> findByTypeAndLang(String type, String lang, Sort sort);

    public List<Horse> findByLang(String lang, Sort sort);

//    public Horse findOne(Sort sort);
}
