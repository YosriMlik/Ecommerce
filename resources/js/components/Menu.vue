<template>
    <nav class="navbar navbar-expand-lg bg-info" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Ecommerce</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bstarget="#navbarColor01"
                aria-controls="navbarColor01" aria-expanded="false" arialabel="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/categories">Catégories
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/listcat">Sous Catégories
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/articles">Articles
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/articletable">Articles table
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link to="/shopping" class="nav-link active"> Shopping
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/login">Login
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/register">Register
                        </router-link>
                    </li>
                    <li class="nav-item ms-2">
                        <button class="nav-link active logout" @click="logout">
                            Logout
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
                                <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                            </svg>
                        </button>
                    </li>
                    <li class="nav-item ms-2">
                        <router-link class="nav-link active" to="/dashboard">Dashboard
                        </router-link>
                    </li>
                    <!--li-- class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                            aria-haspopup="true" aria-expanded="false">Dropdown</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                        </div>
                    </!--li-->
                </ul>
                <!--form class="d-flex">
                    <input class="form-control me-sm-2" type="search" placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form-->
                <ul class="navbar-nav ms-auto my-2">
                    <li class="nav-item me-3">
                        <router-link class="nav-link position-relative" :class="$route.name == 'Cart' ? 'active' : ''"
                        aria-current="page" :to="{
                            name: 'Cart'
                        }">
                            <i class="fa-solid fa-cart-shopping fa-lg" style="color:#ffffff;"></i>
                            <span v-if="$store.state.Articlestore.cart.length > 0"
                                class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                {{ $store.state.Articlestore.cart.length }}
                            </span>
                        </router-link>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script setup>
import axios from 'axios';
import { useRouter } from 'vue-router';
import { ref, onMounted } from "vue";

let connected = ref(false);

const router = useRouter();
const logout = async () => {
    let token = ""
    token = localStorage.getItem('token')
    console.log(token)
    axios.post('http://localhost:8000/api/logout', null, {
        headers: {
            'Authorization': `Bearer ${token}`
        }
    })
    .then((response) => {
        console.log(response)
        localStorage.removeItem('token')
        localStorage.removeItem('user')
        router.push("/login")
    })
    .catch(err => { console.log(err); alert(err) })
}
</script>

<style lang="css">
.logout:hover{
    color: red !important;
}
</style>
