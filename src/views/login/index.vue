<template>
  <div class="login-container">
    <div class="form-toggle">
      <el-button type="primary" @click="toggleForm('login')">登陆</el-button>
      <el-button type="primary" @click="toggleForm('register')">注册</el-button>
    </div>
    <el-form v-if="currentForm === 'login'" ref="loginForm" :model="loginForm" :rules="loginRules" class="login-form" auto-complete="on" label-position="left">
      <div class="title-container">
        <h3 class="title">登 录</h3>
      </div>
      <el-form-item prop="username">
        <span class="svg-container">
          <svg-icon icon-class="user" />
        </span>
        <el-input
          ref="username"
          v-model="loginForm.username"
          placeholder="Username"
          name="username"
          type="text"
          tabindex="1"
          auto-complete="on"
        />
      </el-form-item>
      <el-form-item prop="password">
        <span class="svg-container">
          <svg-icon icon-class="password" />
        </span>
        <el-input
          :key="passwordType"
          ref="password"
          v-model="loginForm.password"
          :type="passwordType"
          placeholder="Password"
          name="password"
          tabindex="2"
          auto-complete="on"
          @keyup.enter.native="handleLogin"
        />
        <span class="show-pwd" @click="showPwd">
          <svg-icon :icon-class="passwordType === 'password' ? 'eye' : 'eye-open'" />
        </span>
      </el-form-item>
      <el-button :loading="loading" type="primary" style="width:100%;margin-bottom:30px;" @click.native.prevent="handleLogin">登陆</el-button>
    </el-form>

    <el-form v-else ref="registerForm" :model="registerForm" :rules="registerRules" class="register-form" auto-complete="on" label-position="left">
      <div class="title-container">
        <h3 class="title">注 册</h3>
      </div>
      <el-form-item prop="username">
        <span class="svg-container">
          <svg-icon icon-class="user" />
        </span>
        <el-input
          ref="username"
          v-model="registerForm.username"
          placeholder="Username"
          name="username"
          type="text"
          tabindex="1"
          auto-complete="on"
        />
      </el-form-item>
      <el-form-item prop="password">
        <span class="svg-container">
          <svg-icon icon-class="password" />
        </span>
        <el-input
          :key="passwordType"
          ref="password"
          v-model="registerForm.password"
          :type="passwordType"
          placeholder="Password"
          name="password"
          tabindex="2"
          auto-complete="on"
        />
        <span class="show-pwd" @click="showPwd">
          <svg-icon :icon-class="passwordType === 'password' ? 'eye' : 'eye-open'" />
        </span>
      </el-form-item>
      <el-form-item prop="password2">
        <span class="svg-container">
          <svg-icon icon-class="password" />
        </span>
        <el-input
          :key="passwordType"
          ref="password2"
          v-model="registerForm.password2"
          :type="passwordType"
          placeholder="Confirm Password"
          name="password2"
          tabindex="3"
          auto-complete="on"
        />
      </el-form-item>
      <el-form-item prop="email">
        <span class="svg-container">
          <svg-icon icon-class="email" />
        </span>
        <el-input
          ref="email"
          v-model="registerForm.email"
          placeholder="Email"
          name="email"
          type="email"
          tabindex="4"
          auto-complete="on"
        />
      </el-form-item>
      <el-form-item prop="role">
        <span class="svg-container">
          <svg-icon icon-class="role" />
        </span>
        <el-select
          v-model="registerForm.role"
          placeholder="Select Role"
          name="role"
          tabindex="5"
          auto-complete="on"
        >
          <el-option label="Admin" value="admin" />
          <el-option label="Teacher" value="teacher" />
          <el-option label="Student" value="student" />
          <el-option label="Reader" value="reader" />
        </el-select>
      </el-form-item>
      <el-form-item prop="phone">
        <span class="svg-container">
          <svg-icon icon-class="phone" />
        </span>
        <el-input
          ref="phone"
          v-model="registerForm.phone"
          placeholder="Phone Number"
          name="phone"
          type="text"
          tabindex="6"
          auto-complete="on"
        />
      </el-form-item>
      <el-button :loading="loading" type="primary" style="width:100%;margin-bottom:30px;" @click.native.prevent="handleRegister">注册</el-button>
    </el-form>
  </div>
</template>
<script>
import { login, register } from '@/api/user'
import { setToken } from '@/utils/auth'

export default {
  name: 'Auth',
  data() {
    const validateUsername = (rule, value, callback) => {
      callback()
    }
    const validatePassword = (rule, value, callback) => {
      if (value.length < 6) {
        callback(new Error('The password can not be less than 6 digits'))
      } else {
        callback()
      }
    }
    return {
      currentForm: 'login',
      loginForm: {
        username: '',
        password: ''
      },
      loginRules: {
        username: [{ required: true, trigger: 'blur', validator: validateUsername }],
        password: [{ required: true, trigger: 'blur', validator: validatePassword }]
      },
      registerForm: {
        username: '',
        password: '',
        password2: '',
        email: '',
        role: '',
        phone: ''
      },
      registerRules: {
        username: [{ required: true, trigger: 'blur', validator: validateUsername }],
        password: [{ required: true, trigger: 'blur', validator: validatePassword }],
        password2: [{ required: true, trigger: 'blur', message: 'Please confirm your password' }],
        email: [{ required: true, trigger: 'blur', type: 'email', message: 'Please enter a valid email' }],
        role: [{ required: true, trigger: 'blur', message: 'Please enter a role' }],
        phone: [{ required: true, trigger: 'blur', message: 'Please enter a phone number' }]
      },
      loading: false,
      passwordType: 'password',
      redirect: undefined
    }
  },
  watch: {
    $route: {
      handler: function(route) {
        this.redirect = route.query && route.query.redirect
      },
      immediate: true
    }
  },
  methods: {
    toggleForm(form) {
      this.currentForm = form
    },
    showPwd() {
      if (this.passwordType === 'password') {
        this.passwordType = ''
      } else {
        this.passwordType = 'password'
      }
      this.$nextTick(() => {
        this.$refs.password.focus()
      })
    },
    handleLogin() {
      console.log('Attempting to log in')
      this.$refs.loginForm.validate(valid => {
        if (valid) {
          console.log('Form is valid')
          this.loading = true
          console.log(this.loginForm)
          login(this.loginForm).then(response => {
            const data = response.data
            console.log('Response data: ', data)
            if (data.access) {
              setToken(data.access)
              this.$store.dispatch('user/login', {
                token: data.access,
                user: data.user
              })
              console.log('Navigation to main page')
              this.$router.push({ path: this.redirect || '/' })
              this.loading = false
            } else {
              this.loading = false
              this.$message.error('Login failed, please try again.')
            }
          }).catch(error => {
            this.loading = false
            console.log('Error occurred during login:', error)
            this.$message.error('Login failed, please try again. Error: ' + error.message)
          })
        } else {
          console.log('Form validation error')
          return false
        }
      })
    },
    handleRegister() {
      this.$refs.registerForm.validate(valid => {
        if (valid) {
          this.loading = true
          register(this.registerForm).then(response => {
            console.log('Register response:', response)
            console.log('Register response status:', response.status)
            if (response.status === 201) {
              this.$message.success('注册成功!')
              this.loading = false
              console.log('准备跳转到登录页面')
              this.$refs.registerForm.resetFields()
              this.$router.push({ path: '/login' })
            }
          }).catch(error => {
            this.loading = false
            if (error.response && error.response.data) {
              const messages = Object.values(error.response.data).flat()
              this.$message.error(messages.join(' '))
            } else {
              this.$message.error('注册失败，请重试. Error: ' + error.message)
            }
          })
        } else {
          console.log('error submit!!')
          return false
        }
      })
    }
  }
}
</script>
<style lang="scss">
/* 修复input 背景不协调 和光标变色 */
/* Detail see https://github.com/PanJiaChen/vue-element-admin/pull/927 */

$bg:#283443;
$light_gray:#fff;
$cursor: #fff;

@supports (-webkit-mask: none) and (not (cater-color: $cursor)) {
  .login-container .el-input input {
    color: $cursor;
  }
}

/* reset element-ui css */
.login-container {
  .el-input {
    display: inline-block;
    height: 47px;
    width: 85%;

    input {
      background: transparent;
      border: 0px;
      -webkit-appearance: none;
      border-radius: 0px;
      padding: 12px 5px 12px 15px;
      color: $light_gray;
      height: 47px;
      caret-color: $cursor;

      &:-webkit-autofill {
        box-shadow: 0 0 0px 1000px $bg inset !important;
        -webkit-text-fill-color: $cursor !important;
      }
    }
  }

  .el-form-item {
    border: 1px solid rgba(255, 255, 255, 0.1);
    background: rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    color: #454545;
  }

  .toggle-link {
    display: block;
    margin-top: 20px;
    text-align: center;
    color: $light_gray;
    cursor: pointer;
  }
}
</style>

<style lang="scss" scoped>
$bg:#2d3a4b;
$dark_gray:#889aa4;
$light_gray:#eee;

.login-container {
  min-height: 100%;
  width: 100%;
  background-color: $bg;
  overflow: hidden;

  .login-form, .register-form {
    position: relative;
    width: 520px;
    max-width: 100%;
    padding: 160px 35px 0;
    margin: 0 auto;
    overflow: hidden;
  }

  .tips {
    font-size: 14px;
    color: #fff;
    margin-bottom: 10px;

    span {
      &:first-of-type {
        margin-right: 16px;
      }
    }
  }

  .svg-container {
    padding: 6px 5px 6px 15px;
    color: $dark_gray;
    vertical-align: middle;
    width: 30px;
    display: inline-block;
  }

  .title-container {
    position: relative;

    .title {
      font-size: 26px;
      color: $light_gray;
      margin: 0px auto 40px auto;
      text-align: center;
      font-weight: bold;
    }
  }

  .show-pwd {
    position: absolute;
    right: 10px;
    top: 7px;
    font-size: 16px;
    color: $dark_gray;
    cursor: pointer;
    user-select: none;
  }
}
</style>
