package com.wangzhixuan.model;

public class JobState {
    private Integer id;
    private String jobName;
    private String jobClass;
    private String jobGroup;
    private Integer jobState;
    private String cronExpression;
    private String cronExplain;

    public JobState() {
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobName() {
        return this.jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public String getJobClass() {
        return this.jobClass;
    }

    public void setJobClass(String jobClass) {
        this.jobClass = jobClass == null ? null : jobClass.trim();
    }

    public String getJobGroup() {
        return this.jobGroup;
    }

    public void setJobGroup(String jobGroup) {
        this.jobGroup = jobGroup == null ? null : jobGroup.trim();
    }

    public Integer getJobState() {
        return this.jobState;
    }

    public void setJobState(Integer jobState) {
        this.jobState = jobState;
    }

    public String getCronExpression() {
        return this.cronExpression;
    }

    public void setCronExpression(String cronExpression) {
        this.cronExpression = cronExpression == null ? null : cronExpression.trim();
    }

    public String getCronExplain() {
        return this.cronExplain;
    }

    public void setCronExplain(String cronExplain) {
        this.cronExplain = cronExplain == null ? null : cronExplain.trim();
    }



    public String toString() {
        return "JobState{id=" + this.id + ", jobName='" + this.jobName + '\'' + ", jobClass='" + this.jobClass + '\'' + ", jobGroup='" + this.jobGroup + '\'' + ", jobState=" + this.jobState + ", cronExpression='" + this.cronExpression + '\'' + ", cronExplain='" + this.cronExplain + '\'' + '}';
    }
}
