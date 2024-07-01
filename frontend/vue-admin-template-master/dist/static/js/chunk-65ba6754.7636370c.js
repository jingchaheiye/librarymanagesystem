(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-65ba6754"],{"6d5f":function(e,t,r){"use strict";r.r(t);var o=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",[r("h1",[e._v("课程书目列表")]),r("div",{staticClass:"course-book-list"},[r("el-input",{staticClass:"search-input",attrs:{placeholder:"Search course books"},model:{value:e.searchQuery,callback:function(t){e.searchQuery=t},expression:"searchQuery"}}),r("el-button",{on:{click:e.searchCourseBooks}},[e._v("搜索")]),r("el-table",{staticStyle:{width:"100%"},attrs:{data:e.courseBooks,stripe:""}},[r("el-table-column",{attrs:{prop:"course_id",label:"课程ID",width:"180"}}),r("el-table-column",{attrs:{prop:"teacher.username",label:"教师",width:"180"}}),r("el-table-column",{attrs:{prop:"book.title",label:"书目",width:"180"}}),r("el-table-column",{attrs:{label:"Actions"},scopedSlots:e._u([{key:"default",fn:function(t){return[e.isAdmin?r("el-button",{attrs:{size:"mini",type:"danger"},on:{click:function(r){return e.deleteCourseBook(t.row.id)}}},[e._v("删除")]):e._e(),e.isStudent?r("el-button",{attrs:{size:"mini"},on:{click:function(r){return e.borrowBook(t.row.book.id)}}},[e._v("借阅")]):e._e()]}}])})],1),e.isTeacherOrAdmin?r("el-button",{attrs:{type:"primary"},on:{click:e.showAddCourseBookDialog}},[e._v("添加课程书目")]):e._e(),r("el-dialog",{attrs:{title:"添加课程书目",visible:e.addCourseBookDialogVisible},on:{"update:visible":function(t){e.addCourseBookDialogVisible=t}}},[r("el-form",{ref:"courseBookForm",attrs:{model:e.courseBookForm,rules:e.rules,"label-width":"120px"}},[r("el-form-item",{attrs:{label:"课程ID",prop:"course_id"}},[r("el-input",{model:{value:e.courseBookForm.course_id,callback:function(t){e.$set(e.courseBookForm,"course_id",t)},expression:"courseBookForm.course_id"}})],1),e.isAdmin?r("el-form-item",{attrs:{label:"教师",prop:"teacher"}},[r("el-select",{attrs:{placeholder:"选择教师"},model:{value:e.courseBookForm.teacher,callback:function(t){e.$set(e.courseBookForm,"teacher",t)},expression:"courseBookForm.teacher"}},e._l(e.teachers,(function(e){return r("el-option",{key:e.id,attrs:{label:e.username,value:e.id}})})),1)],1):e._e(),r("el-form-item",{attrs:{label:"书目",prop:"book"}},[r("el-select",{attrs:{placeholder:"选择书目"},model:{value:e.courseBookForm.book,callback:function(t){e.$set(e.courseBookForm,"book",t)},expression:"courseBookForm.book"}},e._l(e.books,(function(e){return r("el-option",{key:e.id,attrs:{label:e.title,value:e.id}})})),1)],1)],1),r("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{on:{click:function(t){e.addCourseBookDialogVisible=!1}}},[e._v("取消")]),r("el-button",{attrs:{type:"primary"},on:{click:e.onSubmit}},[e._v("添加")])],1)],1)],1)])},s=[],c=r("c7eb"),a=r("1da1"),n=r("5530"),u=(r("caad"),r("2532"),r("99af"),r("b775")),i="http://localhost:8000/api/course";function l(){return Object(u["a"])({url:"".concat(i,"/course-booklists/"),method:"get"})}function h(e){return Object(u["a"])({url:"".concat(i,"/course-booklists/"),method:"post",data:e})}function b(e){return Object(u["a"])({url:"".concat(i,"/course-booklists/").concat(e,"/"),method:"delete"})}function d(){return Object(u["a"])({url:"/api/users/teachers/",method:"get"})}function k(){return Object(u["a"])({url:"/api/library/books/",method:"get"})}function p(e){return Object(u["a"])({url:"http://localhost:8000/api/borrow/borrow-records/".concat(e,"/borrow/"),method:"post"})}function f(e){return Object(u["a"])({url:"".concat(i,"/course-booklists/"),method:"get",params:{search:e}})}var m=r("2f62"),v={name:"CourseBookList",data:function(){return{courseBooks:[],searchQuery:"",addCourseBookDialogVisible:!1,courseBookForm:{course_id:"",teacher:"",book:""},teachers:[],books:[],rules:{course_id:[{required:!0,message:"请输入课程ID",trigger:"blur"}],teacher:[{required:!0,message:"请选择教师",trigger:"change"}],book:[{required:!0,message:"请选择书目",trigger:"change"}]}}},computed:Object(n["a"])(Object(n["a"])({},Object(m["b"])(["roles"])),{},{isAdmin:function(){return this.roles.includes("admin")},isTeacher:function(){return console.log("Roles:",this.roles),this.roles.includes("teacher")},isTeacherOrAdmin:function(){return this.isAdmin||this.isTeacher},isStudent:function(){return console.log("Roles:",this.roles),this.roles.includes("student")}}),created:function(){this.fetchCourseBooks(),this.fetchTeachers(),this.fetchBooks()},methods:{fetchCourseBooks:function(){var e=this;return Object(a["a"])(Object(c["a"])().mark((function t(){var r;return Object(c["a"])().wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,l();case 3:r=t.sent,e.courseBooks=r.data,t.next=10;break;case 7:t.prev=7,t.t0=t["catch"](0),console.error("获取课程书目失败:",t.t0);case 10:case"end":return t.stop()}}),t,null,[[0,7]])})))()},fetchTeachers:function(){var e=this;return Object(a["a"])(Object(c["a"])().mark((function t(){var r;return Object(c["a"])().wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,d();case 3:r=t.sent,e.teachers=r.data,t.next=10;break;case 7:t.prev=7,t.t0=t["catch"](0),console.error("获取教师信息失败:",t.t0);case 10:case"end":return t.stop()}}),t,null,[[0,7]])})))()},fetchBooks:function(){var e=this;return Object(a["a"])(Object(c["a"])().mark((function t(){var r;return Object(c["a"])().wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,k();case 3:r=t.sent,e.books=r.data,t.next=10;break;case 7:t.prev=7,t.t0=t["catch"](0),console.error("获取书目信息失败:",t.t0);case 10:case"end":return t.stop()}}),t,null,[[0,7]])})))()},searchCourseBooks:function(){var e=this;return Object(a["a"])(Object(c["a"])().mark((function t(){var r;return Object(c["a"])().wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,f(e.searchQuery);case 3:r=t.sent,e.courseBooks=r.data,t.next=10;break;case 7:t.prev=7,t.t0=t["catch"](0),console.error("查询课程书目失败:",t.t0);case 10:case"end":return t.stop()}}),t,null,[[0,7]])})))()},deleteCourseBook:function(e){var t=this;return Object(a["a"])(Object(c["a"])().mark((function r(){return Object(c["a"])().wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.prev=0,r.next=3,b(e);case 3:t.$message.success("课程书目删除成功"),t.fetchCourseBooks(),r.next=10;break;case 7:r.prev=7,r.t0=r["catch"](0),t.$message.error("删除课程书目失败: "+r.t0.message);case 10:case"end":return r.stop()}}),r,null,[[0,7]])})))()},showAddCourseBookDialog:function(){this.addCourseBookDialogVisible=!0},onSubmit:function(){var e=this;this.isTeacher&&(this.courseBookForm.teacher_id=this.$store.getters.user.id),this.$refs.courseBookForm.validate(function(){var t=Object(a["a"])(Object(c["a"])().mark((function t(r){return Object(c["a"])().wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!r){t.next=14;break}return t.prev=1,t.next=4,h(e.courseBookForm);case 4:e.$message.success("课程书目添加成功"),e.fetchCourseBooks(),e.addCourseBookDialogVisible=!1,t.next=12;break;case 9:t.prev=9,t.t0=t["catch"](1),e.$message.error("添加课程书目失败: "+t.t0.message);case 12:t.next=16;break;case 14:return console.log("请完整填写所有必填字段!!"),t.abrupt("return",!1);case 16:case"end":return t.stop()}}),t,null,[[1,9]])})));return function(e){return t.apply(this,arguments)}}())},borrowBook:function(e){var t=this;return Object(a["a"])(Object(c["a"])().mark((function r(){return Object(c["a"])().wrap((function(r){while(1)switch(r.prev=r.next){case 0:return r.prev=0,r.next=3,p(e);case 3:t.$message.success("书籍借阅成功"),t.fetchCourseBooks(),r.next=10;break;case 7:r.prev=7,r.t0=r["catch"](0),t.$message.error("书籍借阅失败: "+r.t0.message);case 10:case"end":return r.stop()}}),r,null,[[0,7]])})))()}}},w=v,B=(r("ad65"),r("2877")),g=Object(B["a"])(w,o,s,!1,null,"5408047a",null);t["default"]=g.exports},"912f":function(e,t,r){},ad65:function(e,t,r){"use strict";r("912f")}}]);