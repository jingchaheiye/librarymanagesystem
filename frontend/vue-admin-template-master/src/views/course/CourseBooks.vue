<template>
  <div>
    <h1>课程书目列表</h1>
    <div class="course-book-list">
      <el-input v-model="searchQuery" placeholder="Search course books" class="search-input" />
      <el-button @click="searchCourseBooks">搜索</el-button>
      <el-table :data="courseBooks" stripe style="width: 100%">
        <el-table-column prop="course_id" label="课程ID" width="180" />
        <el-table-column prop="teacher.username" label="教师" width="180" />
        <el-table-column prop="book.title" label="书目" width="180" />
        <el-table-column label="Actions">
          <template slot-scope="scope">
            <el-button v-if="isAdmin" size="mini" type="danger" @click="deleteCourseBook(scope.row.id)">删除</el-button>
            <el-button v-if="isStudent" size="mini" @click="borrowBook(scope.row.book.id)">借阅</el-button>
          </template>
        </el-table-column>
      </el-table>
      <el-button v-if="isTeacherOrAdmin" type="primary" @click="showAddCourseBookDialog">添加课程书目</el-button>

      <el-dialog title="添加课程书目" :visible.sync="addCourseBookDialogVisible">
        <el-form ref="courseBookForm" :model="courseBookForm" :rules="rules" label-width="120px">
          <el-form-item label="课程ID" prop="course_id">
            <el-input v-model="courseBookForm.course_id" />
          </el-form-item>
          <el-form-item v-if="isAdmin" label="教师" prop="teacher">
            <el-select v-model="courseBookForm.teacher" placeholder="选择教师">
              <el-option
                v-for="teacher in teachers"
                :key="teacher.id"
                :label="teacher.username"
                :value="teacher.id"
              />
            </el-select>
          </el-form-item>
          <el-form-item label="书目" prop="book">
            <el-select v-model="courseBookForm.book" placeholder="选择书目">
              <el-option
                v-for="book in books"
                :key="book.id"
                :label="book.title"
                :value="book.id"
              />
            </el-select>
          </el-form-item>
        </el-form>
        <span slot="footer" class="dialog-footer">
          <el-button @click="addCourseBookDialogVisible = false">取消</el-button>
          <el-button type="primary" @click="onSubmit">添加</el-button>
        </span>
      </el-dialog>
    </div>
  </div>
</template>

<script>
import { getCourseBooks, addCourseBook, deleteCourseBook, getTeachers, getBooks, borrowBook, searchCourseBooks } from '@/api/course'
import { mapGetters } from 'vuex'

export default {
  name: 'CourseBookList',
  data() {
    return {
      courseBooks: [],
      searchQuery: '',
      addCourseBookDialogVisible: false,
      courseBookForm: {
        course_id: '',
        teacher: '',
        book: ''
      },
      teachers: [],
      books: [],
      rules: {
        course_id: [{ required: true, message: '请输入课程ID', trigger: 'blur' }],
        teacher: [{ required: true, message: '请选择教师', trigger: 'change' }],
        book: [{ required: true, message: '请选择书目', trigger: 'change' }]
      }
    }
  },
  computed: {
    ...mapGetters(['roles']),
    isAdmin() {
      return this.roles.includes('admin')
    },
    isTeacher() {
      console.log('Roles:', this.roles)
      return this.roles.includes('teacher')
    },
    isTeacherOrAdmin() {
      return this.isAdmin || this.isTeacher
    },
    isStudent() {
      console.log('Roles:', this.roles)
      return this.roles.includes('student')
    }
  },
  created() {
    this.fetchCourseBooks()
    this.fetchTeachers()
    this.fetchBooks()
  },
  methods: {
    async fetchCourseBooks() {
      try {
        const response = await getCourseBooks()
        this.courseBooks = response.data
      } catch (error) {
        console.error('获取课程书目失败:', error)
      }
    },
    async fetchTeachers() {
      try {
        const response = await getTeachers()
        this.teachers = response.data
      } catch (error) {
        console.error('获取教师信息失败:', error)
      }
    },
    async fetchBooks() {
      try {
        const response = await getBooks()
        this.books = response.data
      } catch (error) {
        console.error('获取书目信息失败:', error)
      }
    },
    async searchCourseBooks() {
      try {
        const response = await searchCourseBooks(this.searchQuery)
        this.courseBooks = response.data
      } catch (error) {
        console.error('查询课程书目失败:', error)
      }
    },
    async deleteCourseBook(id) {
      try {
        await deleteCourseBook(id)
        this.$message.success('课程书目删除成功')
        this.fetchCourseBooks()
      } catch (error) {
        this.$message.error('删除课程书目失败: ' + error.message)
      }
    },
    showAddCourseBookDialog() {
      this.addCourseBookDialogVisible = true
    },
    onSubmit() {
      if (this.isTeacher) {
        this.courseBookForm.teacher_id = this.$store.getters.user.id
      }
      this.$refs.courseBookForm.validate(async(valid) => {
        if (valid) {
          try {
            await addCourseBook(this.courseBookForm)
            this.$message.success('课程书目添加成功')
            this.fetchCourseBooks()
            this.addCourseBookDialogVisible = false
          } catch (error) {
            this.$message.error('添加课程书目失败: ' + error.message)
          }
        } else {
          console.log('请完整填写所有必填字段!!')
          return false
        }
      })
    },
    async borrowBook(bookId) {
      try {
        await borrowBook(bookId)
        this.$message.success('书籍借阅成功')
        this.fetchCourseBooks()
      } catch (error) {
        this.$message.error('书籍借阅失败: ' + error.message)
      }
    }
  }
}
</script>

<style scoped>
.course-book-list {
  padding: 20px;
}
.search-input {
  margin-bottom: 20px;
}
</style>
