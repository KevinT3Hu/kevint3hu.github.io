<script setup lang="ts">
const props = defineProps({
    title: { type: String, required: true },
    sliderColor: { type: String, default: '#4fc08d' },
})
</script>

<template>
    <div class="background container">
        <h1 class="title">{{ props.title }}</h1>
        <div class="overlay" :style="{ backgroundColor: props.sliderColor }">
            <slot></slot>
        </div>
    </div>
</template>

<style scoped>
.background {
    display: flex;
    justify-content: center;
    align-items: center;
    border: 1px solid #888888;
    width: 25%;
    height: 15%;
    border-radius: 80px;
}

.container:hover {
    border: none;
    cursor: pointer;
}

.container:hover .overlay {
    height: 100%;
}

.overlay {
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 80px;
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    overflow: hidden;
    width: 100%;
    height: 0;
    transition: .2s ease;
}

.title {
    text-align: center;
}
</style>