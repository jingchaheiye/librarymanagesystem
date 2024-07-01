<template>
  <div>
    <h1>{{ isEdit ? 'Edit Book' : 'Add Book' }}</h1>
    <form @submit.prevent="handleSubmit">
      <div>
        <label for="title">Title</label>
        <input id="title" v-model="form.title" type="text" required>
      </div>
      <div>
        <label for="author">Author</label>
        <input id="author" v-model="form.author" type="text" required>
      </div>
      <div>
        <label for="publish_date">Publish Date</label>
        <input id="publish_date" v-model="form.publish_date" type="date" required>
      </div>
      <div>
        <label for="category">Category</label>
        <select id="category" v-model="form.category" required>
          <option v-for="category in categories" :key="category.id" :value="category.id">
            {{ category.name }}
          </option>
        </select>
      </div>
      <!-- 添加其他字段 -->
      <button type="submit">{{ isEdit ? 'Update' : 'Add' }}</button>
    </form>
  </div>
</template>

<script>
import { getCategories, saveBook } from '@/api/book'

export default {
  data() {
    return {
      form: {
        title: '',
        author: '',
        publish_date: '',
        category: ''
        // 添加其他字段
      },
      categories: [],
      isEdit: false // 用于区分添加和编辑
    }
  },
  created() {
    this.fetchCategories()
    if (this.$route.params.id) {
      this.isEdit = true
      // 从 store 获取要编辑的书籍数据并填充表单
      // 示例：this.form = this.$store.getters.getBookById(this.$route.params.id)
    }
  },
  methods: {
    async fetchCategories() {
      try {
        const response = await getCategories()
        this.categories = response.data
      } catch (error) {
        console.error('Failed to fetch categories:', error)
      }
    },
    async handleSubmit() {
      // 格式化日期为 YYYY-MM-DD
      const formData = { ...this.form }
      formData.publish_date = formData.publish_date.split('T')[0] // 将日期格式化为 YYYY-MM-DD
      console.log(formData)
      try {
        await saveBook(formData)
        this.$message.success('Book saved successfully')
        this.$router.push({ name: 'BookList' }) // 提交后重定向到书籍列表页面
      } catch (error) {
        this.$message.error('Failed to save book: ' + error.message)
      }
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
