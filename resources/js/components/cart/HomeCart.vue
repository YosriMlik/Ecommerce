<template>
    <div class="drag">
        <div v-if="isLoading">
            <h2> Loading .... </h2>
        </div>
        <div v-else class="row">
            <div class="col-md-12" style="display:flex; flex-wrap:wrap; justify-content:center">
                <div class="card shadow pt-5 pb-4" style="width: 18rem;margin:6px" v-for="prod in Articles" :key="prod.id">
                    <img :src="prod.imageart" :alt=prod.designation width="200" height="200" class="align-self-center">
                    <div class="card-body">
                        <h5 v-if="prod.designation.length>20" class="card-title text-center">{{ prod.designation.substr(0, 21) }} ...</h5>
                        <h5 v-else class="card-title text-center">{{ prod.designation }}</h5>
                        <div style="text-align:center">
                            <ul class="list-group list-group-flush mb-4">
                                <li class="list-group-item">Prix : {{ prod.prix }} TND</li>
                            </ul>
                            <Cardarticle :art="prod" />
                            <button class="btn btn-primary rounded-pill ms-2" @click="addToCart(prod)" v-if="prod.qtestock > 1">
                                <i class="fa-solid fa-cart-plus"></i>
                            </button>
                            <button class="btn btn-default" v-if="prod.qtestock <= 1">OUT OF
                                SOLD</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import axios from "../config/api";
import store from '../../store'
import { ref, onMounted } from 'vue';
import Cardarticle from '../articles/Cardarticle.vue';

const Articles = ref([]);
const isLoading = ref(true)

onMounted(() => {
    getArticles();
});

const getArticles = (page = 1) => {
    axios.get('/api/articles/')
        .then(response => {
            Articles.value = response.data;
            isLoading.value = false
        });
}

const addToCart = (prod) => {
    store.commit("Articlestore/addCart", { product: prod, qty: 1 });
}
</script>

<style scoped>
.drag {
    margin-top: 70px;
}
</style>
