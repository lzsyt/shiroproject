package com.wangzhixuan.commons.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CronUtil {


    public static String getCron(String cronExpression) {
        Logger logger = LoggerFactory.getLogger(CronUtil.class);

        //cronExpression: 16:30:00
        String[] strings = cronExpression.split(":");
        String string = null;
//        string = String.format("0/1 * * * * ? ", 0, strings[1], strings[0]);
        string = String.format("%s %s %s * * ? ", 0, strings[1], strings[0]);
        logger.info("cron表达式为 cron=[{}]", string);

        return string;
    }
}
