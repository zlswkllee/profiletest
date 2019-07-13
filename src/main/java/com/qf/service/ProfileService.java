package com.qf.service;

import com.qf.pojo.Profile;

import java.util.List;

public interface ProfileService {
    List<Profile> getAllProfile(int id);

    Profile getProfileById(int id);

    void updateProfile(Profile profile);

    void deleteProfile(int id);
}
