<template>
  <div class="user-view">
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>用户信息</span>
      </div>
      <div>
        <p><strong>用户名:</strong> {{ user.username }}</p>
        <p><strong>邮箱:</strong> {{ user.email }}</p>
        <p><strong>角色:</strong> {{ user.role }}</p>
      </div>
    </el-card>

    <el-tabs v-model="activeTab">
      <el-tab-pane v-if="isAdmin" label="所有用户信息" name="allUsers">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>所有用户信息</span>
          </div>
          <el-table :data="allUsers" style="width: 100%">
            <el-table-column prop="id" label="用户ID" width="180" />
            <el-table-column prop="username" label="用户名" width="180" />
            <el-table-column prop="email" label="邮箱" width="180" />
            <el-table-column prop="role" label="角色" width="180" />
          </el-table>
        </el-card>
      </el-tab-pane>

      <el-tab-pane label="借阅记录" name="borrowRecords">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>借阅记录</span>
          </div>
          <el-table :data="borrowRecords" style="width: 100%">
            <el-table-column v-if="isAdmin" prop="user_id" label="用户ID" width="180" />
            <el-table-column prop="book_title" label="书名" width="180" />
            <el-table-column prop="status" label="状态" width="180" />
            <el-table-column prop="due_date" label="到期日" width="180" />
            <el-table-column label="操作" width="180">
              <template slot-scope="scope">
                <el-button v-if="scope.row.status === 'borrowed'" size="mini" type="success" @click="returnBook(scope.row.id)">归还书籍</el-button>
              </template>
            </el-table-column>
          </el-table>
        </el-card>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
import { getUserInfo, getAllUsers, getBorrowRecords } from '@/api/user'
import { returnBook } from '@/api/book'
import { mapGetters } from 'vuex'

export default {
  name: 'UserView',
  data() {
    return {
      user: {},
      allUsers: [],
      borrowRecords: []
    }
  },
  computed: {
    ...mapGetters(['roles']),
    isAdmin() {
      return this.roles.includes('admin')
    }
  },
  created() {
    this.fetchUserInfo()
    if (this.isAdmin) {
      this.fetchAllUsers()
    }
    this.fetchBorrowRecords()
  },
  methods: {
    async fetchUserInfo() {
      try {
        const response = await getUserInfo()
        this.user = response.data
      } catch (error) {
        console.error('Failed to fetch user info:', error)
      }
    },
    async fetchAllUsers() {
      try {
        const response = await getAllUsers()
        this.allUsers = response.data
      } catch (error) {
        console.error('Failed to fetch all users:', error)
      }
    },
    async fetchBorrowRecords() {
      try {
        const response = await getBorrowRecords()
        this.borrowRecords = response.data
      } catch (error) {
        console.error('Failed to fetch borrow records:', error)
      }
    },
    async returnBook(id) {
      try {
        await returnBook(id)
        this.$message.success('书籍归还成功')
        this.fetchBorrowRecords()
      } catch (error) {
        this.$message.error('归还书籍失败')
      }
    }
  }
}
</script>

<style scoped>
.user-view {
  padding: 20px;
}
</style>
