<template>
    <!--nav class="navbar navbar-expand navbar-light bg-light px-4">
        <div class="collapse navbar-collapse">
            <div class="navbar-nav">
                <router-link to="/" class="nav-item nav-link me-2">Accueil</router-link>
                <router-link to="/categories" class="nav-item nav-link">Categories</router-link>
                <router-link to="/articles" class="nav-item nav-link">Articles</router-link>
                <router-link class="nav-item nav-link" to="/articletable">
                    Articles Table
                </router-link>
                <router-link to="/shopping" class="nav-item nav-link"> Shopping Cart </router-link>
            </div>
        </div>
    </nav-->
    <Menu class="sticky-header"/>
    <div class="text-center mt-2">
        <img src="./1_TZ7eIB3cdZHCqo4iQB0jVg.jpg" class="text-center" width="300" height="200" alt="">
    </div>
    <router-view class="container"> </router-view>
</template>

<script setup>
import Menu from './components/Menu.vue';
</script>

<style scoped>
.sticky-header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #f1f1f1;
    padding: 10px;
    z-index: 1000;
    /* Ajoutez d'autres styles selon vos besoins */
    }

</style>
