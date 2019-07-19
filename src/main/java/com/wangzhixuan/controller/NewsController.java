package com.wangzhixuan.controller;


import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.model.News;
import com.wangzhixuan.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController {
  @Autowired
  private INewsService newsService;

  /**
   * 新闻管理页
   *
   * @return
   */
  @RequestMapping("/manager")
  public String manager() {
    return "admin/news/news";
  }

  /**
   * 新闻列表
   *
   * @return
   */
  @RequestMapping("/treeGrid")
  @ResponseBody
  public Object dataGrid(String page, String rows) {
    PageInfo pageInfo = new PageInfo();
    Map<String, Object> map = new HashMap<>();
    //获取当前显示页码
    int pageNum = Integer.parseInt(page);
    //获取每页显示条数
    int size = Integer.parseInt(rows);
    //获取每页起始项
    int from = (pageNum - 1) * size;
    map.put("size", size);
    map.put("from", from);
    //将查询的总记录数存入pageInfo
    pageInfo.setTotal(newsService.selectAllSize());
    //将查询的每页的记录存入pageInfo
    pageInfo.setRows(newsService.selectAllNews(map));

    return pageInfo;
  }

  @RequestMapping("/addPage")
  public String addPage() {
    return "admin/news/newsAdd";
  }

  /**
   * 添加新闻
   *
   * @param news
   * @return
   */
  @RequestMapping("/add")
  @ResponseBody
  public Object add(@Valid News news) {
    news.setCreateTime(new Date());
    newsService.insert(news);
    return renderSuccess("添加成功");
  }

  /**
   * 编辑新闻页
   *
   * @param model
   * @param newsId
   * @return
   */
  @RequestMapping("/editPage")
  public String editPage(Model model, Integer newsId) {
    logger.info("newsId:" + newsId);
    News news = newsService.selectById(newsId);
    logger.info("newsDescription:" + news.getNewsDescription());
    model.addAttribute("news", news);
    return "admin/news/newsEdit";
  }
  /**
   * 编辑新闻
   *
   */
  @RequestMapping("/edit")
  @ResponseBody
  public Object editNews(@Valid News news) {
    news.setCreateTime(new Date());
    newsService.updateNews(news);
    return renderSuccess("修改成功");
  }
  /**
   * 删除新闻
   *
   * @return
   */
  @RequestMapping("/delete")
  @ResponseBody
  public Object delete(HttpServletRequest request, HttpServletResponse response) {
    String id = request.getParameter("id");
    logger.info("删除......................");
    newsService.deleteById(Integer.parseInt(id));
    return renderSuccess("删除成功！");
  }
}
