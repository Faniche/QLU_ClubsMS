package com.qlu.service.impl;

import com.qlu.entity.Apply;
import com.qlu.dao.ApplyDao;
import com.qlu.service.ApplyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Apply)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("applyService")
public class ApplyServiceImpl implements ApplyService {
    @Resource
    private ApplyDao applyDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Apply queryById(Integer id) {
        return this.applyDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Apply> queryAllByLimit(int offset, int limit) {
        return this.applyDao.queryAllByLimit(offset, limit);
    }

    public List<Apply> queryAllByLoginId(Integer id){
        return this.applyDao.queryAllByLoginId(id);
    }

    /**
     * 新增数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    @Override
    public Apply insert(Apply apply) {
        this.applyDao.insert(apply);
        return apply;
    }

    /**
     * 修改数据
     *
     * @param apply 实例对象
     * @return 实例对象
     */
    @Override
    public Apply update(Apply apply) {
        this.applyDao.update(apply);
        return this.queryById(apply.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.applyDao.deleteById(id) > 0;
    }
}