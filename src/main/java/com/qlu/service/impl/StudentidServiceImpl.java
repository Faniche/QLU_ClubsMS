package com.qlu.service.impl;

import com.qlu.entity.Studentid;
import com.qlu.dao.StudentidDao;
import com.qlu.service.StudentidService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Studentid)表服务实现类
 *
 * @author Chare
 * @since 2019-06-27 18:15:27
 */
@Service("studentidService")
public class StudentidServiceImpl implements StudentidService {
    @Resource
    private StudentidDao studentidDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Studentid queryById(String id) {
        return this.studentidDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Studentid> queryAllByLimit(int offset, int limit) {
        return this.studentidDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param studentid 实例对象
     * @return 实例对象
     */
    @Override
    public Studentid insert(Studentid studentid) {
        this.studentidDao.insert(studentid);
        return studentid;
    }

    /**
     * 修改数据
     *
     * @param studentid 实例对象
     * @return 实例对象
     */
    @Override
    public Studentid update(Studentid studentid) {
        this.studentidDao.update(studentid);
        return this.queryById(studentid.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.studentidDao.deleteById(id) > 0;
    }
}