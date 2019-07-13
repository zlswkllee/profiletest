package com.qf.service.impl;

import com.qf.mapper.ProfileMapper;
import com.qf.pojo.Profile;
import com.qf.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProfileServiceImpl implements ProfileService {
    @Autowired
    private ProfileMapper profileMapper;
    @Override
    public List<Profile> getAllProfile(int id) {
        return profileMapper.getAllProfile(id);
    }

    @Override
    public Profile getProfileById(int id) {
        return profileMapper.getProfileById(id);
    }

    @Override
    public void updateProfile(Profile profile) {
        profileMapper.updateProfile(profile);
    }

    @Override
    public void deleteProfile(int id) {
        profileMapper.deleteProfile(id);
    }
}
