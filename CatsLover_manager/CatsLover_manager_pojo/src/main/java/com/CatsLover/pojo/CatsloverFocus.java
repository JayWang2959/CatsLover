package com.CatsLover.pojo;

public class CatsloverFocus {
    private String userId;

    private String focusId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getFocusId() {
        return focusId;
    }

    public void setFocusId(String focusId) {
        this.focusId = focusId == null ? null : focusId.trim();
    }
}