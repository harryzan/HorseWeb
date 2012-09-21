package com.horseweb.core.repository;

import com.horseweb.core.domain.Horse;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by IntelliJ IDEA.
 * User: xiejiao
 * Date: 12-3-20
 * Time: 下午1:57
 */
public interface HorseRepository extends MongoRepository<Horse,String> {

}
