package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YouxiubanzhurenEntity;
import com.entity.view.YouxiubanzhurenView;

import com.service.YouxiubanzhurenService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 优秀班主任
 * 后端接口
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@RestController
@RequestMapping("/youxiubanzhuren")
public class YouxiubanzhurenController {
    @Autowired
    private YouxiubanzhurenService youxiubanzhurenService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YouxiubanzhurenEntity youxiubanzhuren, HttpServletRequest request){

        EntityWrapper<YouxiubanzhurenEntity> ew = new EntityWrapper<YouxiubanzhurenEntity>();
		PageUtils page = youxiubanzhurenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiubanzhuren), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YouxiubanzhurenEntity youxiubanzhuren, HttpServletRequest request){
        EntityWrapper<YouxiubanzhurenEntity> ew = new EntityWrapper<YouxiubanzhurenEntity>();
		PageUtils page = youxiubanzhurenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiubanzhuren), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YouxiubanzhurenEntity youxiubanzhuren){
       	EntityWrapper<YouxiubanzhurenEntity> ew = new EntityWrapper<YouxiubanzhurenEntity>();
      	ew.allEq(MPUtil.allEQMapPre( youxiubanzhuren, "youxiubanzhuren")); 
        return R.ok().put("data", youxiubanzhurenService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YouxiubanzhurenEntity youxiubanzhuren){
        EntityWrapper< YouxiubanzhurenEntity> ew = new EntityWrapper< YouxiubanzhurenEntity>();
 		ew.allEq(MPUtil.allEQMapPre( youxiubanzhuren, "youxiubanzhuren")); 
		YouxiubanzhurenView youxiubanzhurenView =  youxiubanzhurenService.selectView(ew);
		return R.ok("查询优秀班主任成功").put("data", youxiubanzhurenView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        YouxiubanzhurenEntity youxiubanzhuren = youxiubanzhurenService.selectById(id);
        return R.ok().put("data", youxiubanzhuren);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        YouxiubanzhurenEntity youxiubanzhuren = youxiubanzhurenService.selectById(id);
        return R.ok().put("data", youxiubanzhuren);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YouxiubanzhurenEntity youxiubanzhuren, HttpServletRequest request){
    	youxiubanzhuren.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxiubanzhuren);

        youxiubanzhurenService.insert(youxiubanzhuren);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YouxiubanzhurenEntity youxiubanzhuren, HttpServletRequest request){
    	youxiubanzhuren.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxiubanzhuren);

        youxiubanzhurenService.insert(youxiubanzhuren);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YouxiubanzhurenEntity youxiubanzhuren, HttpServletRequest request){
        //ValidatorUtils.validateEntity(youxiubanzhuren);
        youxiubanzhurenService.updateById(youxiubanzhuren);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        youxiubanzhurenService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YouxiubanzhurenEntity> wrapper = new EntityWrapper<YouxiubanzhurenEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = youxiubanzhurenService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
