<template>
  <div class="book-list">
    <el-input v-model="searchQuery" placeholder="Search books" class="search-input" />
    <el-button @click="searchBooks">搜索</el-button>
    <el-table :data="books" stripe style="width: 100%">
      <el-table-column prop="title" label="书目" width="180" />
      <el-table-column prop="author" label="作者" width="180" />
      <el-table-column prop="isbn" label="ISBN" width="180" />
      <el-table-column prop="publisher" label="发布机构" width="180" />
      <el-table-column prop="publish_date" label="发布日期" width="180" />
      <el-table-column prop="stock" label="库存" width="180" />
      <el-table-column prop="location" label="放置位置" width="180" />
      <el-table-column prop="status" label="状态" width="180" />
      <el-table-column label="Actions">
        <template slot-scope="scope">
          <el-button v-if="isAdmin" size="mini" @click="editBook(scope.row)">修改库存</el-button>
          <el-button v-if="isAdmin" size="mini" type="danger" @click="deleteBook(scope.row.id)">删除</el-button>
          <el-button v-if="scope.row.stock > 0" size="mini" @click="borrowBook(scope.row)">借阅</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-button v-if="isAdmin" type="primary" @click="showAddBookDialog">添加书籍</el-button>

    <el-dialog title="Add Book" :visible.sync="addBookDialogVisible">
      <el-form ref="bookForm" :model="bookForm" :rules="rules" label-width="120px">
        <el-form-item label="书名" prop="title">
          <el-input v-model="bookForm.title" />
        </el-form-item>
        <el-form-item label="作者" prop="author">
          <el-input v-model="bookForm.author" />
        </el-form-item>
        <el-form-item label="ISBN" prop="isbn">
          <el-input v-model="bookForm.isbn" />
        </el-form-item>
        <el-form-item label="发布机构" prop="publisher">
          <el-input v-model="bookForm.publisher" />
        </el-form-item>
        <el-form-item label="发布日期" prop="publish_date">
          <el-date-picker v-model="bookForm.publish_date" type="date" placeholder="Pick a date" />
        </el-form-item>
        <el-form-item label="类别" prop="category_id">
          <el-select v-model="bookForm.category_id" placeholder="选择类别">
            <el-option
              v-for="category in categories"
              :key="category.id"
              :label="category.name"
              :value="category.id"
            />
          </el-select>
        </el-form-item>
        <el-form-item label="Stock" prop="stock">
          <el-input v-model="bookForm.stock" />
        </el-form-item>
        <el-form-item label="Location" prop="location">
          <el-input v-model="bookForm.location" />
        </el-form-item>
        <el-form-item label="Status" prop="status">
          <el-select v-model="bookForm.status">
            <el-option label="Available" value="available" />
            <el-option label="Borrowed" value="borrowed" />
            <el-option label="Reserved" value="reserved" />
            <el-option label="Lost" value="lost" />
            <el-option label="Damaged" value="damaged" />
          </el-select>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="addBookDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="onSubmit">添加</el-button>
      </span>
    </el-dialog>

    <el-dialog title="Edit Book" :visible.sync="editBookDialogVisible">
      <el-form ref="editBookForm" :model="editBookForm" :rules="rules" label-width="120px">
        <el-form-item label="书名" prop="title">
          <el-input v-model="editBookForm.title" disabled />
        </el-form-item>
        <el-form-item label="库存" prop="stock">
          <el-input v-model="editBookForm.stock" />
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="editBookDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="onEditSubmit">保存</el-button>
      </span>
    </el-dialog>

  </div>
</template>

<script>
import { getBooks, searchBooks, borrowBook, returnBook, addBook, getCategories, deleteBook, updateBook } from '@/api/book'
import { mapGetters } from 'vuex'

export default {
  name: 'BookList',
  data() {
    return {
      books: [],
      searchQuery: '',
      addBookDialogVisible: false,
      bookForm: {
        title: '',
        author: '',
        isbn: '',
        publisher: '',
        publish_date: '',
        category_id: null,
        stock: 0,
        location: '',
        status: 'available'
      },
      categories: [],
      rules: {
        title: [{ required: true, message: 'Please input the title', trigger: 'blur' }],
        author: [{ required: true, message: 'Please input the author', trigger: 'blur' }],
        isbn: [{ required: true, message: 'Please input the ISBN', trigger: 'blur' }],
        publisher: [{ required: true, message: 'Please input the publisher', trigger: 'blur' }],
        publish_date: [{ required: true, message: 'Please input the publish_date', trigger: 'blur' }],
        stock: [{ required: true, message: 'Please input the stock', trigger: 'blur' }],
        category_id: [{ required: true, message: 'Please select the category', trigger: 'change' }],
        location: [{ required: true, message: 'Please input the location', trigger: 'blur' }]
      },
      editBookDialogVisible: false,
      editBookForm: {
        id: null,
        title: '',
        stock: 0
      }
    }
  },
  computed: {
    ...mapGetters(['roles']),
    isAdmin() {
      return this.roles.includes('admin')
    }
  },
  created() {
    this.fetchBooks()
    this.fetchCategories()
  },
  methods: {
    async fetchBooks() {
      try {
        const response = await getBooks()
        this.books = response.data
      } catch (error) {
        console.error('Failed to fetch books:', error)
      }
    },
    async fetchCategories() {
      try {
        const response = await getCategories()
        console.log('查询类别结果1：', response.data)
        this.categories = response.data
        console.log('查询类别结果2：', this.categories)
        if (this.categories.length > 0) {
          this.bookForm.category_id = this.categories[0].id
          console.log('设置默认类别：', this.bookForm.category_id)
        }
      } catch (error) {
        console.error('Failed to fetch categories:', error)
      }
    },
    async searchBooks() {
      searchBooks(this.searchQuery).then(response => {
        console.log('查询结果：', response)
        this.books = response.data
      })
    },
    async borrowBook(book) {
      try {
        await borrowBook(book.id)
        this.$message.success('借阅成功')
        this.fetchBooks()
      } catch (error) {
        this.$message.error('借阅失败: ' + error.message)
      }
    },
    async returnBook(book) {
      try {
        await returnBook(book.id)
        this.$message.success('归还成功')
        this.fetchBooks()
      } catch (error) {
        this.$message.error('归还失败: ' + error.message)
      }
    },
    showAddBookDialog() {
      this.addBookDialogVisible = true
    },
    async onSubmit() {
      this.$refs.bookForm.validate(async(valid) => {
        if (valid) {
          try {
            console.log('提交表单数据：', this.bookForm)
            const formattedDate = this.bookForm.publish_date.toISOString().substring(0, 10)
            await addBook({
              ...this.bookForm,
              publish_date: formattedDate,
              category: this.bookForm.category_id
            })
            console.log('添加书籍数据：', this.bookForm)
            this.$message.success('书籍添加成功')
            this.fetchBooks()
            this.addBookDialogVisible = false
          } catch (error) {
            this.$message.error('添加书籍失败: ' + error.message)
          }
        } else {
          console.log('请完整填写所有必填字段!!')
          return false
        }
      })
    },
    async deleteBook(id) {
      try {
        await deleteBook(id)
        this.$message.success('书籍删除成功')
        this.fetchBooks()
      } catch (error) {
        this.$message.error('删除书籍失败: ' + error.message)
      }
    },
    async editBook(book) {
      this.editBookForm = {
        id: book.id,
        title: book.title,
        stock: book.stock
      }
      this.editBookDialogVisible = true
    },
    async onEditSubmit() {
      this.$refs.editBookForm.validate(async(valid) => {
        if (valid) {
          try {
            await updateBook(this.editBookForm.id, { stock: this.editBookForm.stock })
            this.$message.success('书籍库存更新成功')
            this.fetchBooks()
            this.editBookDialogVisible = false
          } catch (error) {
            this.$message.error('更新书籍库存失败: ' + error.message)
          }
        } else {
          console.log('请完整填写所有必填字段!!')
          return false
        }
      })
    }
  }
}
</script>

<style scoped>
.book-list {
  padding: 20px;
}
.search-input {
  margin-bottom: 20px;
}
</style>
