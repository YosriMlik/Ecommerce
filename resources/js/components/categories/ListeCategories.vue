<template>
    <div>
        <router-link :to="{name: 'createCategory'}" class="btn btn-primary my-4"> + New Category</router-link>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="categorie in categories" :key="categorie.id">
                    <td>{{ categorie.nomcategorie }}</td>
                    <td><img :src="categorie.imagecategorie" :alt=categorie.nomcategorie /></td>
                    <td>
                        <div class="btn-group" role="group">
                            <router-link :to="{name: 'editCategory', params:{id: categorie.id}}" class="btn btn-success">
                                Edit
                            </router-link>
                            <button class="btn btn-danger" @click="deleteCategorie(categorie.id)">Delete</button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<script setup>
import { ref, onMounted } from 'vue';
import axios from "axios";

const categories = ref([]);

const getCategorie = async () => {
    await axios.get("http://localhost:8000/api/categories")
    .then((response) => {
        categories.value = response.data
    })
    .catch((error) => {
        console.error('Error fetching categories:', error);
    });
}

const deleteCategorie = async (id) => {
    await axios.delete(`http://localhost:8000/api/categories/${id}`)
    .then(() => {
        let i = categories.value.map(data => data.id).indexOf(id);
        categories.value.splice(i, 1)
    });
}

onMounted(() => {
    getCategorie();
});
</script>

<style lang="css" scoped>
img{
    width: 120px;
    height: 120px;
    aspect-ratio: 3/2;
    object-fit: contain;
    /*mix-blend-mode: color-burn;*/
}
</style>

