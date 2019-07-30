package com.wangzhixuan.service.impl;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import com.wangzhixuan.mapper.StatementVoMapper;
import com.wangzhixuan.model.vo.StatementVo;
import com.wangzhixuan.service.StatementService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class StatementServiceImpl2 implements StatementService {

    @Autowired
    private StatementVoMapper statementVoMapper;

    @Override
    public JSONArray find(Integer year) {
        Map<Integer, StatementVo> map1 = formatListToMap(statementVoMapper.find(year, "光合硅能"));
        Map<Integer, StatementVo> map2 = formatListToMap(statementVoMapper.find(year, "控制器"));
        Map<Integer, StatementVo> map3 = formatListToMap(statementVoMapper.find(year, "风机"));
        Map<Integer, StatementVo> map4 = formatListToMap(statementVoMapper.find(year, "太阳能板"));
        Map<Integer, StatementVo> map5 = formatListToMap(statementVoMapper.find(year, "手机"));

        List<Map<Integer, StatementVo>> mapList = getMaps(map1, map2, map3, map4, map5);

        int maxMonth = statementVoMapper.quartMaxMonth(year);
        int minMonth = statementVoMapper.quartMixMonth(year);

        function(mapList, maxMonth, minMonth);
        JSONArray jsonValues = new JSONArray();

        List<String> month = new ArrayList<>();
        for (int i = minMonth; i <= maxMonth; i++) {
            month.add(i + "月");
        }
        jsonValues.add(month);

        for (int i = 0; i < mapList.size(); i++) {
            jsonValues.add(formatMapToList(mapList.get(i)));
        }

        return jsonValues;
    }

    private List<Map<Integer, StatementVo>> getMaps(Map<Integer, StatementVo> map1, Map<Integer, StatementVo> map2, Map<Integer, StatementVo> map3, Map<Integer, StatementVo> map4, Map<Integer, StatementVo> map5) {
        List<Map<Integer, StatementVo>> mapList = new ArrayList<>();
        mapList.add(map1);
        mapList.add(map2);
        mapList.add(map3);
        mapList.add(map4);
        mapList.add(map5);
        return mapList;
    }

    @Override
    public JSONArray quaryMonth(Integer year, Integer month) {
        Map<Integer, StatementVo> map1 = formatListToMap(statementVoMapper.quaryMonth(year,month, "光合硅能"));
        Map<Integer, StatementVo> map2 = formatListToMap(statementVoMapper.quaryMonth(year,month, "控制器"));
        Map<Integer, StatementVo> map3 = formatListToMap(statementVoMapper.quaryMonth(year,month, "风机"));
        Map<Integer, StatementVo> map4 = formatListToMap(statementVoMapper.quaryMonth(year,month, "太阳能板"));
        Map<Integer, StatementVo> map5 = formatListToMap(statementVoMapper.quaryMonth(year,month, "手机"));
        List<Map<Integer, StatementVo>> mapList = getMaps(map1, map2, map3, map4, map5);

        int maxDay = statementVoMapper.quartMaxDay(year,month);
        int minDay = statementVoMapper.quartMinDay(year,month);

        function(mapList, maxDay, minDay);
        JSONArray jsonValues = new JSONArray();

        List<String> day = new ArrayList<>();
        for (int i = minDay; i <= maxDay; i++) {
            day.add(i + "日");
        }
        jsonValues.add(day);
        for (int i = 0; i < mapList.size(); i++) {
            jsonValues.add(formatMapToList(mapList.get(i)));
        }

        return jsonValues;

    }

    @Override
    public List<Integer> getYear() {
        return statementVoMapper.findYear();
    }

    @Override
    public List<String> quaryMonth(Integer year) {
        List<String> json = new ArrayList<>();
        int max = statementVoMapper.quartMaxMonth(year);
        int min = statementVoMapper.quartMixMonth(year);
        for (int i = min; i <=max ; i++) {
            json.add(i+"月");
        }
        return json;
    }

    private void function(List<Map<Integer, StatementVo>> mapList, int maxDay, int minDay) {
        for (int i = minDay; i <= maxDay; i++) {
            for (Map<Integer, StatementVo> map : mapList) {
                if (!map.containsKey(i)) {
                    StatementVo statementVo = new StatementVo();
                    statementVo.setDate(i);
                    statementVo.setData(0);
                    map.put(i, statementVo);
                }
            }
        }
    }


    private Map<Integer, StatementVo> formatListToMap(List<StatementVo> statementVoList) {
        Map<Integer, StatementVo> integerIntegerMap = new HashMap<>();
        statementVoList.parallelStream().forEach(model->{
            integerIntegerMap.put(model.getDate(), model);
        });
        return integerIntegerMap;
    }

    private List<Integer> formatMapToList(Map<Integer,StatementVo> map){
        List<StatementVo> list = new ArrayList<>();
        for (Map.Entry<Integer,StatementVo> entry:map.entrySet()){
            list.add(entry.getValue());
        }
        Collections.sort(list, new Comparator<StatementVo>() {
            @Override
            public int compare(StatementVo o1, StatementVo o2) {
                return o1.getDate() - o2.getDate();
            }
        });
        List<Integer> integerList = new ArrayList<>();
        for (StatementVo s: list
             ) {
            integerList.add(s.getData());
        }
        return integerList;
    }
}
