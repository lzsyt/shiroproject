package com.wangzhixuan.service;

import net.sf.json.JSONArray;

import java.util.List;

public interface StatementService {

    public JSONArray find(Integer year);

    public JSONArray quaryMonth(Integer year, Integer month);

    public List<Integer> getYear();

    public List<String> quaryMonth(Integer year);
}
