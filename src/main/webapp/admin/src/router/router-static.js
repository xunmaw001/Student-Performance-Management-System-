import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/exampaperlist/exam'
    import news from '@/views/modules/news/list'
    import examfailrecord from '@/views/modules/examfailrecord/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jiaoxuekejian from '@/views/modules/jiaoxuekejian/list'
    import banjichengji from '@/views/modules/banjichengji/list'
    import examquestion from '@/views/modules/examquestion/list'
    import youxiubanzhuren from '@/views/modules/youxiubanzhuren/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import xueshengchengji from '@/views/modules/xueshengchengji/list'
    import zaixiandayi from '@/views/modules/zaixiandayi/list'
    import exampaper from '@/views/modules/exampaper/list'
    import storeup from '@/views/modules/storeup/list'
    import youxiujiaoshi from '@/views/modules/youxiujiaoshi/list'
    import xuexiaojianjie from '@/views/modules/xuexiaojianjie/list'
    import youxiuxuesheng from '@/views/modules/youxiuxuesheng/list'
    import exampaperlist from '@/views/modules/exampaperlist/list'
    import gonggaoxinxi from '@/views/modules/gonggaoxinxi/list'
    import config from '@/views/modules/config/list'
    import examrecord from '@/views/modules/examrecord/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
	path: '/examfailrecord',
        name: '错题本',
        component: examfailrecord
      }
          ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
          ,{
	path: '/jiaoxuekejian',
        name: '教学课件',
        component: jiaoxuekejian
      }
          ,{
	path: '/banjichengji',
        name: '班级成绩',
        component: banjichengji
      }
          ,{
	path: '/examquestion',
        name: '试题管理',
        component: examquestion
      }
          ,{
	path: '/youxiubanzhuren',
        name: '优秀班主任',
        component: youxiubanzhuren
      }
          ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
          ,{
	path: '/xueshengchengji',
        name: '学生成绩',
        component: xueshengchengji
      }
          ,{
	path: '/zaixiandayi',
        name: '在线答疑',
        component: zaixiandayi
      }
          ,{
	path: '/exampaper',
        name: '试卷管理',
        component: exampaper
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/youxiujiaoshi',
        name: '优秀教师',
        component: youxiujiaoshi
      }
          ,{
	path: '/xuexiaojianjie',
        name: '学校简介',
        component: xuexiaojianjie
      }
          ,{
	path: '/youxiuxuesheng',
        name: '优秀学生',
        component: youxiuxuesheng
      }
          ,{
	path: '/exampaperlist',
        name: '试卷列表',
        component: exampaperlist
      }
          ,{
	path: '/gonggaoxinxi',
        name: '公告信息',
        component: gonggaoxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/examrecord',
        name: '考试记录',
        component: examrecord
      }
        ]
  },
  {
    path: '/adminexam',
    name: 'adminexam',
    component: adminexam,
    meta: {icon:'', title:'adminexam'}
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
