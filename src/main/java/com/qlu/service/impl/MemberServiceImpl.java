package com.qlu.service.impl;

import com.qlu.entity.Member;
import com.qlu.dao.MemberDao;
import com.qlu.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Member)表服务实现类
 *
 * @author Chare
 * @since 2019-06-21 15:19:05
 */
@Service("memberService")
public class MemberServiceImpl implements MemberService {
    @Resource
    private MemberDao memberDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Member queryById(Integer id) {
        return this.memberDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Member> queryAllByLimit(int offset, int limit) {
        return this.memberDao.queryAllByLimit(offset, limit);
    }

    @Override
    public List<Member> queryAll(Member member){
        return memberDao.queryAll(member);
    }

    @Override
    public List<Member> queryAllMembers() {
        return memberDao.queryAllMembers();
    }

    /**
     * 新增数据
     *
     * @param member 实例对象
     * @return 实例对象
     */
    @Override
    public Member insert(Member member) {
        this.memberDao.insert(member);
        return member;
    }

    /**
     * 修改数据
     *
     * @param member 实例对象
     * @return 实例对象
     */
    @Override
    public Member update(Member member) {
        this.memberDao.update(member);
        return this.queryById(member.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteByMemberId(Integer id) {
        return this.memberDao.deleteByMemberId(id) > 0;
    }

    @Override
    public int clubDestroy(Integer id){
        return this.memberDao.updateStatusDestroy(id);
    }
}