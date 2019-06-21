package com.qlu.service.impl;

import com.qlu.entity.Roleprivilege;
import com.qlu.dao.RoleprivilegeDao;
import com.qlu.service.RoleprivilegeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Roleprivilege)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:06
 */
@Service("roleprivilegeService")
public class RoleprivilegeServiceImpl implements RoleprivilegeService {
    @Resource
    private RoleprivilegeDao roleprivilegeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Roleprivilege queryById(Integer id) {
        return this.roleprivilegeDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Roleprivilege> queryAllByLimit(int offset, int limit) {
        return this.roleprivilegeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param roleprivilege 实例对象
     * @return 实例对象
     */
    @Override
    public Roleprivilege insert(Roleprivilege roleprivilege) {
        this.roleprivilegeDao.insert(roleprivilege);
        return roleprivilege;
    }

    /**
     * 修改数据
     *
     * @param roleprivilege 实例对象
     * @return 实例对象
     */
    @Override
    public Roleprivilege update(Roleprivilege roleprivilege) {
        this.roleprivilegeDao.update(roleprivilege);
        return this.queryById(roleprivilege.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.roleprivilegeDao.deleteById(id) > 0;
    }
}