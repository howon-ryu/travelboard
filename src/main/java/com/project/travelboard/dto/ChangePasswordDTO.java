package com.project.travelboard.dto;

public class ChangePasswordDTO {

    private String userId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    private String currentPassword;
    private String changingPassword;

    public String getCurrentPassword() {
        return currentPassword;
    }

    public void setCurrentPassword(String currentPassword) {
        this.currentPassword = currentPassword;
    }

    public String getChangingPassword() {
        return changingPassword;
    }

    public void setChangingPassword(String changingPassword) {
        this.changingPassword = changingPassword;
    }
}
