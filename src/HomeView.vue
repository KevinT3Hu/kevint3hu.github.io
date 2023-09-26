<script setup lang="ts">
import { NAvatar } from 'naive-ui'
import SlidingButton from '@/components/SlidingButton.vue';
import { computed, onMounted, onUnmounted, ref } from 'vue';

const width = ref(window.innerWidth)
const height = ref(window.innerHeight)

const mainIconSize = computed(()=>{
    return Math.min(width.value*0.8,450)
})

function handleResize(){
    width.value = window.innerWidth
    height.value = window.innerHeight
    console.log(`width: ${width.value}, height: ${height.value}`)
}

const onMobile = computed(()=>{
    return width.value < 768
})

const classBtnL = computed(()=>{
    return onMobile.value ? 'btn_l_mobile' : 'btn_l'
})

const classBtnR = computed(()=>{
    return onMobile.value ? 'btn_r_mobile' : 'btn_r'
})

onMounted(()=>{
    window.addEventListener("resize",handleResize)
})

onUnmounted(()=>{
    window.removeEventListener("resize",handleResize)
})

function navigateToBlog() {
    window.open('https://blog.spie.cc', '_blank')
}

function navigateToAnime() {
    window.open('http://anime.spie.cc', '_blank')
}
</script>

<template>
    <div>
        <NAvatar class="c-icon" round :size="mainIconSize" src="https://s1.ax1x.com/2023/08/22/pPJtlGD.png" />
    </div>
    <SlidingButton :class="classBtnL" title="Check out my blog" sliderColor="#4fc08d" @click="navigateToBlog">
        <div class="row">
            <NAvatar round :size="50" src="https://s1.ax1x.com/2023/08/19/pP3gBSx.png" />
            <p class="desc">苹果派的万事屋</p>
        </div>
    </SlidingButton>
    <SlidingButton :class="classBtnR" title="See my anime list" sliderColor="#B03F72" @click="navigateToAnime">
        <p class="desc desc_r">看看我在看什么</p>
    </SlidingButton>
</template>

<style scoped>
.c-icon {
    position: absolute;
    margin: auto;
    top: 0;
    left: 0;
    right: 0;
    bottom: 20%;
}

.btn_l {
    position: absolute;
    margin: auto;
    top: 0;
    left: 0;
    right: 60%;
    bottom: 10%;
}

.btn_l_mobile {
    margin: auto;
    top: 0;
    left: 0;
    right: 0;
    bottom: 10%;
}

.btn_r_mobile {
    margin: auto;
    top: 0;
    left: 0;
    right: 0;
    bottom: 10%;
}

.btn_r {
    position: absolute;
    margin: auto;
    top: 0;
    left: 60%;
    right: 0;
    bottom: 10%;
}

.desc {
    padding-left: 20px;
    font-size: 25pt;
    font-weight: lighter;
    user-select: none;
}

.desc_r {
    color: aliceblue;
}
</style>