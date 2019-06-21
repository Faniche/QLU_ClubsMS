package com.qlu.service.impl;

import com.qlu.entity.Applytype;
import com.qlu.dao.ApplytypeDao;
import com.qlu.service.ApplytypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Applytype)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("applytypeService")
public class ApplytypeServiceImpl implements ApplytypeService {
    @Resource
    private ApplytypeDao applytypeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Applytype queryById(Integer id) {
        return this.applytypeDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Applytype> queryAllByLimit(int offset, int limit) {
        return this.applytypeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param applytype 实例对象
     * @return 实例对象
     */
    @Override
    public Applytype insert(Applytype applytype) {
        this.applytypeDao.insert(applytype);
        return applytype;
    }

    /**
     * 修改数据
     *
     * @param applytype 实例对象
     * @return 实例对象
     */
    @Override
    public Applytype update(Applytype applytype) {
        this.applytypeDao.update(applytype);
        return this.queryById(applytype.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.applytypeDao.deleteById(id) > 0;
    }
}