package com.wangzhixuan.service;

import net.sf.json.JSONArray;

public interface StatementService {

    public JSONArray find(Integer year, String website);

    public JSONArray quaryMonth(Integer year, Integer month, String website);
}
