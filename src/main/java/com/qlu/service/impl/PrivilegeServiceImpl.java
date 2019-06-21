package com.qlu.service.impl;

import com.qlu.entity.Privilege;
import com.qlu.dao.PrivilegeDao;
import com.qlu.service.PrivilegeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Privilege)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("privilegeService")
public class PrivilegeServiceImpl implements PrivilegeService {
    @Resource
    private PrivilegeDao privilegeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Privilege queryById(Integer id) {
        return this.privilegeDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Privilege> queryAllByLimit(int offset, int limit) {
        return this.privilegeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param privilege 实例对象
     * @return 实例对象
     */
    @Override
    public Privilege insert(Privilege privilege) {
        this.privilegeDao.insert(privilege);
        return privilege;
    }

    /**
     * 修改数据
     *
     * @param privilege 实例对象
     * @return 实例对象
     */
    @Override
    public Privilege update(Privilege privilege) {
        this.privilegeDao.update(privilege);
        return this.queryById(privilege.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.privilegeDao.deleteById(id) > 0;
    }
}