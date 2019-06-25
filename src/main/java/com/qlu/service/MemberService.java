package com.qlu.service;

import com.qlu.entity.Member;
import java.util.List;

/**
 * (Member)表服务接口
 *
 * @author Chare
 * @since 2019-06-21 15:17:37
 */
public interface MemberService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Member queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Member> queryAllByLimit(int offset, int limit);

    /**
     * 根据限制条件查询符合条件的成员
     * @param member
     * @return
     */
    List<Member> queryAll(Member member);

    List<Member> queryAllMembers();

    /**
     * 新增数据
     *
     * @param member 实例对象
     * @return 实例对象
     */
    Member insert(Member member);

    /**
     * 修改数据
     *
     * @param member 实例对象
     * @return 实例对象
     */
    Member update(Member member);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteByMemberId(Integer id);

}