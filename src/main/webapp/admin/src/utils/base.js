const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmp3s4y/",
            name: "ssmp3s4y",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmp3s4y/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "学生成绩管理系统"
        } 
    }
}
export default base
