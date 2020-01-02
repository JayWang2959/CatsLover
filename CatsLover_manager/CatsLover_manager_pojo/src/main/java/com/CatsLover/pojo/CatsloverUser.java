package com.CatsLover.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CatsloverUser {
    @JsonProperty(value="userId")
    private String userId;

    @JsonProperty(value="userPassword")
    private String userPassword;

    @JsonProperty(value="userSignature")
    private String userSignature;

    @JsonProperty(value="userUsername")
    private String userUsername;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserSignature() {
        return userSignature;
    }

    public void setUserSignature(String userSignature) {
        this.userSignature = userSignature == null ? null : userSignature.trim();
    }

    public String getUserUsername() {
        return userUsername;
    }

    public void setUserUsername(String userUsername) {
        this.userUsername = userUsername == null ? null : userUsername.trim();
    }
}
