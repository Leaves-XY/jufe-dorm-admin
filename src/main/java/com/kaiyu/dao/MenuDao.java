package com.kaiyu.dao;

import com.kaiyu.entity.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Repository
public interface MenuDao {

    List<Menu> getAllMenusWithRole();

    List<Menu> getMenusByUserId(Integer userId);
}