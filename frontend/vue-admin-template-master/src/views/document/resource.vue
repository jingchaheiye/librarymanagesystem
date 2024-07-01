<template>
  <div class="document-management">
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>文献资源管理</span>
      </div>
      <div class="actions">
        <el-input v-model="searchQuery" placeholder="搜索文献资源" class="search-input" />
        <el-button @click="searchDocuments">搜索</el-button>
        <el-button v-if="isAdmin" type="primary" @click="showAddDocumentDialog">添加文献</el-button>
      </div>
      <el-table :data="documents" stripe style="width: 100%">
        <el-table-column prop="title" label="标题" width="180" />
        <el-table-column prop="type" label="类型" width="180" />
        <el-table-column prop="file_path" label="文件路径" width="180" />
        <el-table-column prop="created_at" label="创建时间" width="180" />
        <el-table-column label="操作" width="180">
          <template slot-scope="scope">
            <el-button v-if="isAdmin" size="mini" type="danger" @click="deleteDocument(scope.row.id)">删除</el-button>
            <el-button size="mini" type="primary" @click="visitDocument(scope.row.file_path)">访问</el-button>
          </template>
        </el-table-column>
      </el-table>
    </el-card>

    <el-dialog title="添加文献" :visible.sync="addDocumentDialogVisible">
      <el-form ref="documentForm" :model="documentForm" :rules="rules" label-width="120px">
        <el-form-item label="标题" prop="title">
          <el-input v-model="documentForm.title" />
        </el-form-item>
        <el-form-item label="类型" prop="type">
          <el-input v-model="documentForm.type" />
        </el-form-item>
        <el-form-item label="文件路径" prop="file_path">
          <el-input v-model="documentForm.file_path" />
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="addDocumentDialogVisible = false">取消</el-button>
        <el-button type="primary" @click="onSubmit">添加</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import { getDocuments, searchDocuments, addDocument, deleteDocument } from '@/api/document'
import { mapGetters } from 'vuex'

export default {
  name: 'DocumentManagement',
  data() {
    return {
      documents: [],
      searchQuery: '',
      addDocumentDialogVisible: false,
      documentForm: {
        title: '',
        type: '',
        file_path: ''
      },
      rules: {
        title: [{ required: true, message: '请输入标题', trigger: 'blur' }],
        type: [{ required: true, message: '请输入类型', trigger: 'blur' }],
        file_path: [{ required: true, message: '请输入文件路径', trigger: 'blur' }]
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
    this.fetchDocuments()
  },
  methods: {
    async fetchDocuments() {
      try {
        const response = await getDocuments()
        this.documents = response.data
      } catch (error) {
        console.error('获取文献资源失败:', error)
      }
    },
    async searchDocuments() {
      try {
        const response = await searchDocuments(this.searchQuery)
        this.documents = response.data
      } catch (error) {
        console.error('搜索文献资源失败:', error)
      }
    },
    async onSubmit() {
      this.$refs.documentForm.validate(async(valid) => {
        if (valid) {
          try {
            await addDocument(this.documentForm)
            this.$message.success('文献添加成功')
            this.fetchDocuments()
            this.addDocumentDialogVisible = false
          } catch (error) {
            this.$message.error('添加文献失败: ' + error.message)
          }
        } else {
          console.log('请完整填写所有必填字段')
          return false
        }
      })
    },
    async deleteDocument(id) {
      try {
        await deleteDocument(id)
        this.$message.success('文献删除成功')
        this.fetchDocuments()
      } catch (error) {
        this.$message.error('删除文献失败: ' + error.message)
      }
    },
    showAddDocumentDialog() {
      this.addDocumentDialogVisible = true
    },
    visitDocument(filePath) {
      console.log('访问文件:', filePath)
      window.open(filePath, '_blank')
    }
  }
}
</script>

<style scoped>
.document-management {
padding: 20px;
}
.actions {
display: flex;
align-items: center;
margin-bottom: 20px;
}
.search-input {
flex: 1;
margin-right: 10px;
}
</style>
