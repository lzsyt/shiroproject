package com.wangzhixuan.task;

import com.wangzhixuan.commons.utils.HttpUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;


import java.text.SimpleDateFormat;
import java.util.Date;

/*百度链接post推送*/
@Service
public class PostTask {
    private static final Logger logger = LogManager.getLogger(PostTask.class);

    public void job1() {
        String url = "http://data.zz.baidu.com/urls?site=www.yongdong.com.cn&token=97a1Hb2z3i0DE73K";
        String[] param = {
                "http://www.yongdong.com.cn/windEnergy/main",
                "http://www.yongdong.com.cn/windEnergy/aboutUs",
                "http://www.yongdong.com.cn/windEnergy/productCenter",
                "http://www.yongdong.com.cn/windEnergy/contact",
                "http://www.yongdong.com.cn/windEnergy/case",
                "http://www.yongdong.com.cn/windEnergy/productDetail/28",
                "http://www.yongdong.com.cn/en_windEnergy/en_main",
                "http://www.yongdong.com.cn/en_windEnergy/en_aboutUs",
                "http://www.yongdong.com.cn/en_windEnergy/en_productCenter",
                "http://www.yongdong.com.cn/en_windEnergy/en_contact",
                "http://www.yongdong.com.cn/en_windEnergy/en_case",
                "http://www.yongdong.com.cn/en_windEnergy/en_productDetail/28",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/60",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/61",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/62",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/63",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/64",
                "http://www.yongdong.com.cn/windEnergy/newsDetail/65"
        };
        String result = HttpUtils.post(url, param);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        logger.info("yongdong.com.cn在" + format + "进行了一次百度链接实时推送：" + result);
    }


    // 控制器新闻提交
    public static void job_kongzhiqi() {
        String url = "http://data.zz.baidu.com/urls?site=www.kongzhiqi.com/&token=97a1Hb2z3i0DE73K";
        String[] param = {
                "http://www.kongzhiqi.com/solarController/newsDetail/76"
        };
        String result = HttpUtils.post(url, param);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        logger.info("kongzhiqi.com在" + format + "进行了一次百度链接实时推送：" + result);

    }


    //光合新闻提交
    public static void job_guanghe() {
        String url = "http://data.zz.baidu.com/urls?site=www.guanghe.cn/&token=97a1Hb2z3i0DE73K";
        String[] param = {
                "http://www.guanghe.cn/solarPanel/newsDetail/73",
        };
        String result = HttpUtils.post(url, param);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        logger.info("guanghe.cn在" + format + "进行了一次百度链接实时推送：" + result);

    }

    public void job4() {
        String url = "http://data.zz.baidu.com/urls?site=www.150ah.com/&token=97a1Hb2z3i0DE73K";
        String[] param = {
                "http://www.150ah.com/customer/main",
                "http://www.150ah.com/customer/aboutUs",
                "http://www.150ah.com/customer/productsCenter",
                "http://www.150ah.com/customer/contact",
                "http://www.150ah.com/customer/case",
                "http://www.150ah.com/customer/answer",
                "http://www.150ah.com/customer/introduce",
                "http://www.150ah.com/customer/productDetail/1",
                "http://www.150ah.com/customer/productDetail/2",
                "http://www.150ah.com/customer/productDetail/3",
                "http://www.150ah.com/customer/productDetail/5",
                "http://www.150ah.com/customer/productDetail/6",
                "http://www.150ah.com/customer/productDetail/7",
                "http://www.150ah.com/customer/productDetail/8",
                "http://www.150ah.com/customer/productDetail/9",
                "http://www.150ah.com/customer/productDetail/10",
                "http://www.150ah.com/customer/productDetail/11",
                "http://www.150ah.com/customer/productDetail/12",
                "http://www.150ah.com/en_customer/en_productDetail/1",
                "http://www.150ah.com/en_customer/en_productDetail/2",
                "http://www.150ah.com/en_customer/en_productDetail/3",
                "http://www.150ah.com/en_customer/en_productDetail/5",
                "http://www.150ah.com/en_customer/en_productDetail/6",
                "http://www.150ah.com/en_customer/en_productDetail/7",
                "http://www.150ah.com/en_customer/en_productDetail/8",
                "http://www.150ah.com/en_customer/en_productDetail/9",
                "http://www.150ah.com/en_customer/en_productDetail/10",
                "http://www.150ah.com/en_customer/en_productDetail/11",
                "http://www.150ah.com/en_customer/en_productDetail/12",
                "http://www.150ah.com/en_customer/en_main",
                "http://www.150ah.com/en_customer/en_aboutUs",
                "http://www.150ah.com/en_customer/en_productsCenter",
                "http://www.150ah.com/en_customer/en_contact",
                "http://www.150ah.com/en_customer/en_case"
        };
        String result = HttpUtils.post(url, param);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        logger.info("www.150ah.com在" + format + "进行了一次百度链接实时推送：" + result);
    }

    public static void main(String[] args) {
//        job_kongzhiqi();
        job_guanghe();
    }


    public void job_150ah() {
        String url = "http://data.zz.baidu.com/urls?site=www.150ah.com/&token=97a1Hb2z3i0DE73K";
        String[] param = {
                "http://battery.150ah.com",
                "http://battery.150ah.com/aboutus",
                "http://battery.150ah.com/products",
                "http://battery.150ah.com/classicCase",
                "http://battery.150ah.com/contact",
                "http://battery.150ah.com/technology",
        };
        String result = HttpUtils.post(url, param);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        logger.info("battery.150ah.com在" + format + "进行了一次百度链接实时推送：" + result);
    }
}
