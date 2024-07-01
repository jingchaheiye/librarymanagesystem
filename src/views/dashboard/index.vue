<template>
  <div class="dashboard-container">
    <div class="dashboard-text">图书管理系统</div>
    <div class="dashboard-ad">！广告招租！</div>

    <el-carousel :interval="4000" type="card" height="650px" class="carousel">
      <el-carousel-item v-for="item in images" :key="item.id">
        <img :src="require(`@/assets/${item.src}`)" :alt="item.alt" class="carousel-image">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'Dashboard',
  data() {
    return {
      images: [
        { id: 1, src: 'sample.jpg', alt: 'Image 1' },
        { id: 2, src: 'sample1.jpg', alt: 'Image 2' },
        { id: 3, src: 'sample2.jpg', alt: 'Image 3' },
        { id: 4, src: 'sample3.jpg', alt: 'Image 4' },
        { id: 5, src: 'sample4.jpg', alt: 'Image 5' }
      ]
    }
  },
  computed: {
    ...mapGetters([
      'name'
    ])
  }
}
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 30px;
  }
  &-text {
    font-size: 30px;
    line-height: 46px;
  }
  &-ad {
    font-size: 20px;
    color: red;
    margin-top: 10px;
  }
}

.carousel {
  margin-top: 20px;
}

.carousel-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
  background-color: #d3dce6;
}
</style>
