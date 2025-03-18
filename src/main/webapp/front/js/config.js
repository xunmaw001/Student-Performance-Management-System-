
var projectName = '学生成绩管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '考试记录',
	url: '../examrecord/list.html'
}, 
{
	name: '错题本',
	url: '../examrecord/wrong.html'
},
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '优秀教师',
	url: './pages/youxiujiaoshi/list.html'
}, 
{
	name: '优秀班主任',
	url: './pages/youxiubanzhuren/list.html'
}, 
{
	name: '学校简介',
	url: './pages/xuexiaojianjie/list.html'
}, 
{
	name: '教学课件',
	url: './pages/jiaoxuekejian/list.html'
}, 
{
	name: '公告信息',
	url: './pages/gonggaoxinxi/list.html'
}, 
{
	name: '优秀学生',
	url: './pages/youxiuxuesheng/list.html'
}, 

{
	name: '试卷列表',
	url: './pages/exampaper/list.html'
}, 
{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmp3s4y/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"优秀教师","menuJump":"列表","tableName":"youxiujiaoshi"}],"menu":"优秀教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"优秀班主任","menuJump":"列表","tableName":"youxiubanzhuren"}],"menu":"优秀班主任管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学校简介","menuJump":"列表","tableName":"xuexiaojianjie"}],"menu":"学校简介管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"教学课件","menuJump":"列表","tableName":"jiaoxuekejian"}],"menu":"教学课件管理"},{"child":[{"buttons":["查看","删除"],"menu":"在线答疑","menuJump":"列表","tableName":"zaixiandayi"}],"menu":"在线答疑管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告信息","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"优秀学生","menuJump":"列表","tableName":"youxiuxuesheng"}],"menu":"优秀学生管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"班级成绩","menuJump":"列表","tableName":"banjichengji"}],"menu":"班级成绩管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"学生成绩","menuJump":"列表","tableName":"xueshengchengji"}],"menu":"学生成绩管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"优秀教师列表","menuJump":"列表","tableName":"youxiujiaoshi"}],"menu":"优秀教师模块"},{"child":[{"buttons":["查看"],"menu":"优秀班主任列表","menuJump":"列表","tableName":"youxiubanzhuren"}],"menu":"优秀班主任模块"},{"child":[{"buttons":["查看"],"menu":"学校简介列表","menuJump":"列表","tableName":"xuexiaojianjie"}],"menu":"学校简介模块"},{"child":[{"buttons":["查看"],"menu":"教学课件列表","menuJump":"列表","tableName":"jiaoxuekejian"}],"menu":"教学课件模块"},{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看"],"menu":"优秀学生列表","menuJump":"列表","tableName":"youxiuxuesheng"}],"menu":"优秀学生模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"在线答疑","menuJump":"列表","tableName":"zaixiandayi"}],"menu":"在线答疑管理"},{"child":[{"buttons":["查看"],"menu":"班级成绩","menuJump":"列表","tableName":"banjichengji"}],"menu":"班级成绩管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"学生成绩","menuJump":"列表","tableName":"xueshengchengji"}],"menu":"学生成绩管理"},{"child":[{"buttons":["查看"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"优秀教师列表","menuJump":"列表","tableName":"youxiujiaoshi"}],"menu":"优秀教师模块"},{"child":[{"buttons":["查看"],"menu":"优秀班主任列表","menuJump":"列表","tableName":"youxiubanzhuren"}],"menu":"优秀班主任模块"},{"child":[{"buttons":["查看"],"menu":"学校简介列表","menuJump":"列表","tableName":"xuexiaojianjie"}],"menu":"学校简介模块"},{"child":[{"buttons":["查看"],"menu":"教学课件列表","menuJump":"列表","tableName":"jiaoxuekejian"}],"menu":"教学课件模块"},{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看"],"menu":"优秀学生列表","menuJump":"列表","tableName":"youxiuxuesheng"}],"menu":"优秀学生模块"}],"roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教学课件","menuJump":"列表","tableName":"jiaoxuekejian"}],"menu":"教学课件管理"},{"child":[{"buttons":["查看","删除","审核"],"menu":"在线答疑","menuJump":"列表","tableName":"zaixiandayi"}],"menu":"在线答疑管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"优秀学生","menuJump":"列表","tableName":"youxiuxuesheng"}],"menu":"优秀学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"班级成绩","menuJump":"列表","tableName":"banjichengji"}],"menu":"班级成绩管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生成绩","menuJump":"列表","tableName":"xueshengchengji"}],"menu":"学生成绩管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"优秀教师列表","menuJump":"列表","tableName":"youxiujiaoshi"}],"menu":"优秀教师模块"},{"child":[{"buttons":["查看"],"menu":"优秀班主任列表","menuJump":"列表","tableName":"youxiubanzhuren"}],"menu":"优秀班主任模块"},{"child":[{"buttons":["查看"],"menu":"学校简介列表","menuJump":"列表","tableName":"xuexiaojianjie"}],"menu":"学校简介模块"},{"child":[{"buttons":["查看"],"menu":"教学课件列表","menuJump":"列表","tableName":"jiaoxuekejian"}],"menu":"教学课件模块"},{"child":[{"buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"},{"child":[{"buttons":["查看"],"menu":"优秀学生列表","menuJump":"列表","tableName":"youxiuxuesheng"}],"menu":"优秀学生模块"}],"roleName":"教师","tableName":"jiaoshi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
