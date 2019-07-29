package com.wangzhixuan.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.result.PageInfo;
import com.wangzhixuan.commons.utils.CronUtil;
import com.wangzhixuan.commons.utils.HttpUtils;
import com.wangzhixuan.model.JobState;
import com.wangzhixuan.service.IJobStateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.validation.Valid;


@Controller
@RequestMapping("job")
public class JobStateController extends BaseController {

    @Autowired
    private IJobStateService jobStateService;


    @GetMapping({"/manager"})
    public String manager() {
        return "admin/job/job";
    }

    @RequestMapping({"/treeGrid"})
    @ResponseBody
    public Object dataGrid(String page, String rows) {
        PageInfo pageInfo = new PageInfo();

        int pageNum = Integer.parseInt(page);
        int size = Integer.parseInt(rows);

        Page<JobState> jobStatePage = new Page<>();
        jobStatePage.setSize(size);
        jobStatePage.setCurrent(pageNum);
        pageInfo.setTotal(this.jobStateService.selectCount(null));
        pageInfo.setRows(this.jobStateService.selectPage(jobStatePage).getRecords());
        return pageInfo;
    }

    @RequestMapping({"/editPage"})
    public String editPage(Model model, Long id) {
        JobState jobState = (JobState)this.jobStateService.selectById(id);
        model.addAttribute("jobState", jobState);
        return "admin/job/jobEdit";
    }

    @RequestMapping({"/edit"})
    @ResponseBody
    public Object edit(@Valid JobState jobState) {

        JobState LocalJobState = this.jobStateService.selectById(jobState.getId());

        String strings = "jobClassName=" + LocalJobState.getJobClass() + "&jobGroupName=" + LocalJobState.getJobGroup();


        if (jobState.getJobState() == 1) {
            HttpUtils.sendPost("http://localhost:12741/job/pausejob", strings);
        } else if (jobState.getJobState() == 2) {
            HttpUtils.sendPost("http://localhost:12741/job/resumejob", strings);
        } else if (jobState.getJobState() == 3) {
            String cron = CronUtil.getCron(jobState.getCronExpression());
            strings += "&cronExpression=" + cron;;
            HttpUtils.sendPost("http://localhost:12741/job/reschedulejob", strings);
        }


        jobState.setJobClass(LocalJobState.getJobClass());
        jobState.setJobGroup(LocalJobState.getJobGroup());
        this.jobStateService.updateById(jobState);
        return renderSuccess("编辑成功！");
    }


}
