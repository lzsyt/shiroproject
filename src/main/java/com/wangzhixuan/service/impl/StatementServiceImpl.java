package com.wangzhixuan.service.impl;

import com.wangzhixuan.mapper.StatementVoMapper;
import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.StatementService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
//@Service
public class StatementServiceImpl {

    @Autowired
    private StatementVoMapper statementVoMapper;

    public JSONArray find(Integer year) {
//        List<StatementVo> statementVos = statementVoMapper.find(year, websiste);
        List<String> date = new ArrayList<>();

//        for (StatementVo statementVo: statementVos) {
//            date.add(statementVo.getDate()+"月");
//        }

        for (int i = 1; i <= 12; i++) {
            date.add(i + "月");
        }


        JSONArray jsonArray = new JSONArray();
        jsonArray.add(date);
        findByYear(jsonArray, year);

        jsonArray.add(statementVoMapper.findYear());
        return jsonArray;
    }


    private void findByYear(JSONArray jsonArray, Integer year){
        jsonArray.add(findValueByMonthAndWebsite(year, "光合硅能"));
        jsonArray.add(findValueByMonthAndWebsite(year, "控制器"));
        jsonArray.add(findValueByMonthAndWebsite(year, "风机"));
        jsonArray.add(findValueByMonthAndWebsite(year, "太阳能板"));
        jsonArray.add(findValueByMonthAndWebsite(year, "手机"));
    }

    private List<Integer> findValueByMonthAndWebsite(Integer year, String website){
        List<Integer> integerList = new ArrayList<>();
        for (int i = 1; i <= 12; i++) {
            integerList.add(statementVoMapper.findByMonth(website, i,year));
        }
        return integerList;
    }


    public void function(JSONArray jsonArray,Integer year){
        List<StatementVo> statementVos1 = statementVoMapper.find(year, "光合硅能");
        List<StatementVo> statementVos2 = statementVoMapper.find(year, "控制器");
        List<StatementVo> statementVos3 = statementVoMapper.find(year, "风机");
        List<StatementVo> statementVos4 = statementVoMapper.find(year, "太阳能板");
        List<StatementVo> statementVos5 = statementVoMapper.find(year, "手机");

        List<List<StatementVo>> listList = new ArrayList<>();
        listList.add(statementVos1);
        listList.add(statementVos2);
        listList.add(statementVos3);
        listList.add(statementVos4);
        listList.add(statementVos5);

        List<StatementVo> maxList = null;
        int count = 0;
        int index = 0;
        for (int i = 0; i < listList.size(); i++) {
            if(listList.get(i).size()>count){
                count = listList.get(i).size();
                index = i;
            }
        }
        maxList = listList.get(index);
        listList.remove(index);
        Integer month = 0;
        for (int i = 0; i < maxList.size(); i++) {
            month = maxList.get(i).getDate();
            for (List<StatementVo> list : listList) {
                boolean flag = false;
                for (StatementVo s:list) {
                    if (s.getDate() == month){
                        flag = true;
                    }
                }
                if (!flag){
                    StatementVo statementVo = new StatementVo();
                    statementVo.setData(0);
                    statementVo.setDate(month);
                    list.add(statementVo);
                }
            }
        }



        listList.add(maxList);
        for (int i = 0; i < listList.size(); i++) {
            Collections.sort(listList.get(i), new Comparator<StatementVo>() {
                @Override
                public int compare(StatementVo o1, StatementVo o2) {
                    return o1.getDate() - o2.getDate();
                }
            });
        }

        List<Integer> integerList = null;
        for (List<StatementVo> list:listList) {
            integerList = new ArrayList<>();
            for (StatementVo statementVo : list) {
                integerList.add(statementVo.getData());
            }
            jsonArray.add(integerList);
        }


    }


    public JSONArray quaryMonth(Integer year, Integer month) {
        List<StatementVo> statementVos = statementVoMapper.quaryMonth(year,month,null);
        List<String> date = new ArrayList<>();
        List<Integer> data = new ArrayList<>();
//        for (StatementVo statmentvo: statementVos
//        ) {
//            data.add(statmentvo.getData());
//        }



        for (int i = 1; i <= 31; i++) {
            date.add(i + "日");
        }

//        for (StatementVo statementVo: statementVos) {
//            date.add(statementVo.getDate()+"日");
//        }
        JSONArray jsonArray = new JSONArray();
        jsonArray.add(date);
//        jsonArray.add(data);
        jsonArray.add(findValueByDayAndWebsite(month, year, "光合硅能"));
        jsonArray.add(findValueByDayAndWebsite(month, year, "控制器"));
        jsonArray.add(findValueByDayAndWebsite(month, year, "风机"));
        jsonArray.add(findValueByDayAndWebsite(month, year, "太阳能板"));
        jsonArray.add(findValueByDayAndWebsite(month, year, "手机"));
        findValueByDayAndWebsite(month, year, null);
        jsonArray.add(statementVoMapper.findYear());
        return jsonArray;
    }

    private List<Integer> findValueByDayAndWebsite(Integer month, Integer year, String websiste) {
        List<Integer> integerList = new ArrayList<Integer>();
        for (int i = 1; i <= 31; i++) {
            integerList.add(statementVoMapper.findByDay(websiste, i, month, year));
        }
        return integerList;
    }


}
