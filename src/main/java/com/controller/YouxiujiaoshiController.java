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

import com.entity.YouxiujiaoshiEntity;
import com.entity.view.YouxiujiaoshiView;

import com.service.YouxiujiaoshiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 优秀教师
 * 后端接口
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@RestController
@RequestMapping("/youxiujiaoshi")
public class YouxiujiaoshiController {
    @Autowired
    private YouxiujiaoshiService youxiujiaoshiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YouxiujiaoshiEntity youxiujiaoshi, HttpServletRequest request){

        EntityWrapper<YouxiujiaoshiEntity> ew = new EntityWrapper<YouxiujiaoshiEntity>();
		PageUtils page = youxiujiaoshiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiujiaoshi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YouxiujiaoshiEntity youxiujiaoshi, HttpServletRequest request){
        EntityWrapper<YouxiujiaoshiEntity> ew = new EntityWrapper<YouxiujiaoshiEntity>();
		PageUtils page = youxiujiaoshiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiujiaoshi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YouxiujiaoshiEntity youxiujiaoshi){
       	EntityWrapper<YouxiujiaoshiEntity> ew = new EntityWrapper<YouxiujiaoshiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( youxiujiaoshi, "youxiujiaoshi")); 
        return R.ok().put("data", youxiujiaoshiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YouxiujiaoshiEntity youxiujiaoshi){
        EntityWrapper< YouxiujiaoshiEntity> ew = new EntityWrapper< YouxiujiaoshiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( youxiujiaoshi, "youxiujiaoshi")); 
		YouxiujiaoshiView youxiujiaoshiView =  youxiujiaoshiService.selectView(ew);
		return R.ok("查询优秀教师成功").put("data", youxiujiaoshiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        YouxiujiaoshiEntity youxiujiaoshi = youxiujiaoshiService.selectById(id);
        return R.ok().put("data", youxiujiaoshi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        YouxiujiaoshiEntity youxiujiaoshi = youxiujiaoshiService.selectById(id);
        return R.ok().put("data", youxiujiaoshi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YouxiujiaoshiEntity youxiujiaoshi, HttpServletRequest request){
    	youxiujiaoshi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxiujiaoshi);

        youxiujiaoshiService.insert(youxiujiaoshi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YouxiujiaoshiEntity youxiujiaoshi, HttpServletRequest request){
    	youxiujiaoshi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxiujiaoshi);

        youxiujiaoshiService.insert(youxiujiaoshi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YouxiujiaoshiEntity youxiujiaoshi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(youxiujiaoshi);
        youxiujiaoshiService.updateById(youxiujiaoshi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        youxiujiaoshiService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<YouxiujiaoshiEntity> wrapper = new EntityWrapper<YouxiujiaoshiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = youxiujiaoshiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
