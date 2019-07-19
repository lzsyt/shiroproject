package com.wangzhixuan.model;

import java.util.ArrayList;
import java.util.List;

public class JobStateExample {
    protected String orderByClause;
    protected boolean distinct;
    protected List<Criteria> oredCriteria = new ArrayList();

    public JobStateExample() {
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return this.orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return this.distinct;
    }

    public List<JobStateExample.Criteria> getOredCriteria() {
        return this.oredCriteria;
    }

    public void or(JobStateExample.Criteria criteria) {
        this.oredCriteria.add(criteria);
    }

    public JobStateExample.Criteria or() {
        JobStateExample.Criteria criteria = this.createCriteriaInternal();
        this.oredCriteria.add(criteria);
        return criteria;
    }

    public JobStateExample.Criteria createCriteria() {
        JobStateExample.Criteria criteria = this.createCriteriaInternal();
        if (this.oredCriteria.size() == 0) {
            this.oredCriteria.add(criteria);
        }

        return criteria;
    }

    protected JobStateExample.Criteria createCriteriaInternal() {
        JobStateExample.Criteria criteria = new JobStateExample.Criteria();
        return criteria;
    }

    public void clear() {
        this.oredCriteria.clear();
        this.orderByClause = null;
        this.distinct = false;
    }

    public static class Criterion {
        private String condition;
        private Object value;
        private Object secondValue;
        private boolean noValue;
        private boolean singleValue;
        private boolean betweenValue;
        private boolean listValue;
        private String typeHandler;

        public String getCondition() {
            return this.condition;
        }

        public Object getValue() {
            return this.value;
        }

        public Object getSecondValue() {
            return this.secondValue;
        }

        public boolean isNoValue() {
            return this.noValue;
        }

        public boolean isSingleValue() {
            return this.singleValue;
        }

        public boolean isBetweenValue() {
            return this.betweenValue;
        }

        public boolean isListValue() {
            return this.listValue;
        }

        public String getTypeHandler() {
            return this.typeHandler;
        }

        protected Criterion(String condition) {
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }

        }

        protected Criterion(String condition, Object value) {
            this(condition, value, (String)null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, (String)null);
        }
    }

    public static class Criteria extends JobStateExample.GeneratedCriteria {
        protected Criteria() {
        }
    }

    protected abstract static class GeneratedCriteria {
        protected List<JobStateExample.Criterion> criteria = new ArrayList();

        protected GeneratedCriteria() {
        }

        public boolean isValid() {
            return this.criteria.size() > 0;
        }

        public List<JobStateExample.Criterion> getAllCriteria() {
            return this.criteria;
        }

        public List<JobStateExample.Criterion> getCriteria() {
            return this.criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            } else {
                this.criteria.add(new JobStateExample.Criterion(condition));
            }
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            } else {
                this.criteria.add(new JobStateExample.Criterion(condition, value));
            }
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 != null && value2 != null) {
                this.criteria.add(new JobStateExample.Criterion(condition, value1, value2));
            } else {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
        }

        public JobStateExample.Criteria andIdIsNull() {
            this.addCriterion("id is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdIsNotNull() {
            this.addCriterion("id is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdEqualTo(Integer value) {
            this.addCriterion("id =", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdNotEqualTo(Integer value) {
            this.addCriterion("id <>", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdGreaterThan(Integer value) {
            this.addCriterion("id >", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdGreaterThanOrEqualTo(Integer value) {
            this.addCriterion("id >=", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdLessThan(Integer value) {
            this.addCriterion("id <", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdLessThanOrEqualTo(Integer value) {
            this.addCriterion("id <=", value, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdIn(List<Integer> values) {
            this.addCriterion("id in", values, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdNotIn(List<Integer> values) {
            this.addCriterion("id not in", values, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdBetween(Integer value1, Integer value2) {
            this.addCriterion("id between", value1, value2, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andIdNotBetween(Integer value1, Integer value2) {
            this.addCriterion("id not between", value1, value2, "id");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameIsNull() {
            this.addCriterion("job_name is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameIsNotNull() {
            this.addCriterion("job_name is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameEqualTo(String value) {
            this.addCriterion("job_name =", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameNotEqualTo(String value) {
            this.addCriterion("job_name <>", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameGreaterThan(String value) {
            this.addCriterion("job_name >", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameGreaterThanOrEqualTo(String value) {
            this.addCriterion("job_name >=", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameLessThan(String value) {
            this.addCriterion("job_name <", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameLessThanOrEqualTo(String value) {
            this.addCriterion("job_name <=", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameLike(String value) {
            this.addCriterion("job_name like", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameNotLike(String value) {
            this.addCriterion("job_name not like", value, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameIn(List<String> values) {
            this.addCriterion("job_name in", values, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameNotIn(List<String> values) {
            this.addCriterion("job_name not in", values, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameBetween(String value1, String value2) {
            this.addCriterion("job_name between", value1, value2, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobNameNotBetween(String value1, String value2) {
            this.addCriterion("job_name not between", value1, value2, "jobName");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassIsNull() {
            this.addCriterion("job_class is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassIsNotNull() {
            this.addCriterion("job_class is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassEqualTo(String value) {
            this.addCriterion("job_class =", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassNotEqualTo(String value) {
            this.addCriterion("job_class <>", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassGreaterThan(String value) {
            this.addCriterion("job_class >", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassGreaterThanOrEqualTo(String value) {
            this.addCriterion("job_class >=", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassLessThan(String value) {
            this.addCriterion("job_class <", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassLessThanOrEqualTo(String value) {
            this.addCriterion("job_class <=", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassLike(String value) {
            this.addCriterion("job_class like", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassNotLike(String value) {
            this.addCriterion("job_class not like", value, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassIn(List<String> values) {
            this.addCriterion("job_class in", values, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassNotIn(List<String> values) {
            this.addCriterion("job_class not in", values, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassBetween(String value1, String value2) {
            this.addCriterion("job_class between", value1, value2, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobClassNotBetween(String value1, String value2) {
            this.addCriterion("job_class not between", value1, value2, "jobClass");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupIsNull() {
            this.addCriterion("job_group is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupIsNotNull() {
            this.addCriterion("job_group is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupEqualTo(String value) {
            this.addCriterion("job_group =", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupNotEqualTo(String value) {
            this.addCriterion("job_group <>", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupGreaterThan(String value) {
            this.addCriterion("job_group >", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupGreaterThanOrEqualTo(String value) {
            this.addCriterion("job_group >=", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupLessThan(String value) {
            this.addCriterion("job_group <", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupLessThanOrEqualTo(String value) {
            this.addCriterion("job_group <=", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupLike(String value) {
            this.addCriterion("job_group like", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupNotLike(String value) {
            this.addCriterion("job_group not like", value, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupIn(List<String> values) {
            this.addCriterion("job_group in", values, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupNotIn(List<String> values) {
            this.addCriterion("job_group not in", values, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupBetween(String value1, String value2) {
            this.addCriterion("job_group between", value1, value2, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobGroupNotBetween(String value1, String value2) {
            this.addCriterion("job_group not between", value1, value2, "jobGroup");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateIsNull() {
            this.addCriterion("job_state is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateIsNotNull() {
            this.addCriterion("job_state is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateEqualTo(Integer value) {
            this.addCriterion("job_state =", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateNotEqualTo(Integer value) {
            this.addCriterion("job_state <>", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateGreaterThan(Integer value) {
            this.addCriterion("job_state >", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateGreaterThanOrEqualTo(Integer value) {
            this.addCriterion("job_state >=", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateLessThan(Integer value) {
            this.addCriterion("job_state <", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateLessThanOrEqualTo(Integer value) {
            this.addCriterion("job_state <=", value, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateIn(List<Integer> values) {
            this.addCriterion("job_state in", values, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateNotIn(List<Integer> values) {
            this.addCriterion("job_state not in", values, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateBetween(Integer value1, Integer value2) {
            this.addCriterion("job_state between", value1, value2, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andJobStateNotBetween(Integer value1, Integer value2) {
            this.addCriterion("job_state not between", value1, value2, "jobState");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionIsNull() {
            this.addCriterion("cron_expression is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionIsNotNull() {
            this.addCriterion("cron_expression is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionEqualTo(String value) {
            this.addCriterion("cron_expression =", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionNotEqualTo(String value) {
            this.addCriterion("cron_expression <>", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionGreaterThan(String value) {
            this.addCriterion("cron_expression >", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionGreaterThanOrEqualTo(String value) {
            this.addCriterion("cron_expression >=", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionLessThan(String value) {
            this.addCriterion("cron_expression <", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionLessThanOrEqualTo(String value) {
            this.addCriterion("cron_expression <=", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionLike(String value) {
            this.addCriterion("cron_expression like", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionNotLike(String value) {
            this.addCriterion("cron_expression not like", value, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionIn(List<String> values) {
            this.addCriterion("cron_expression in", values, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionNotIn(List<String> values) {
            this.addCriterion("cron_expression not in", values, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionBetween(String value1, String value2) {
            this.addCriterion("cron_expression between", value1, value2, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExpressionNotBetween(String value1, String value2) {
            this.addCriterion("cron_expression not between", value1, value2, "cronExpression");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainIsNull() {
            this.addCriterion("cron_explain is null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainIsNotNull() {
            this.addCriterion("cron_explain is not null");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainEqualTo(String value) {
            this.addCriterion("cron_explain =", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainNotEqualTo(String value) {
            this.addCriterion("cron_explain <>", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainGreaterThan(String value) {
            this.addCriterion("cron_explain >", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainGreaterThanOrEqualTo(String value) {
            this.addCriterion("cron_explain >=", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainLessThan(String value) {
            this.addCriterion("cron_explain <", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainLessThanOrEqualTo(String value) {
            this.addCriterion("cron_explain <=", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainLike(String value) {
            this.addCriterion("cron_explain like", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainNotLike(String value) {
            this.addCriterion("cron_explain not like", value, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainIn(List<String> values) {
            this.addCriterion("cron_explain in", values, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainNotIn(List<String> values) {
            this.addCriterion("cron_explain not in", values, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainBetween(String value1, String value2) {
            this.addCriterion("cron_explain between", value1, value2, "cronExplain");
            return (JobStateExample.Criteria)this;
        }

        public JobStateExample.Criteria andCronExplainNotBetween(String value1, String value2) {
            this.addCriterion("cron_explain not between", value1, value2, "cronExplain");
            return (JobStateExample.Criteria)this;
        }
    }
}
