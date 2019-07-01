package com.qlu.dao;

import com.qlu.entity.Member;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Member)表数据库访问层
 *
 * @author Chare
 * @since 2019-06-21 15:20:53
 */
public interface MemberDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Member queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Member> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    List<Member> queryAllMembers();

    /**
     * 通过实体作为筛选条件查询
     *
     * @param member 实例对象
     * @return 对象列表
     */
    List<Member> queryAll(Member member);

    /**
     * 新增数据
     *
     * @param member 实例对象
     * @return 影响行数
     */
    int insert(Member member);

    /**
     * 修改数据
     *
     * @param member 实例对象
     * @return 影响行数
     */
    int update(Member member);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteByMemberId(Integer id);

    /**
     * 社团解散，所有成员的status改为0
     * @param id 要解散的社团的id
     * @return
     */
    int updateStatusDestroy(Integer id);

}