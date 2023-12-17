<template>
    <div class="col-md-6 offset-md-3 border rounded p-4 mt-2 mb-5 shadow">
        <h4 align="center">Ajout Article</h4>
        <form @submit.prevent="addArticle">
            <div class="row">
                <div class="col-md-6">
                    <label for="reference" class="form-label">Référence</label>
                    <input type="text" class="form-control" id="reference" v-model="article.reference">
                </div>
                <div class="col-md-6 ms-auto">
                    <label for="designation" class="formlabel">Désignation</label>
                    <input type="texte" class="form-control" id="designation" v-model="article.designation">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="marque" class="form-label">Marque</label>
                    <input type="text" class="form-control" id="marque" v-model="article.marque">
                </div>
                <div class="col-md-6 ms-auto">
                    <label for="Quantité" class="form-label">Qtock</label>
                    <input type="texte" class="form-control" id="qtestock" v-model="article.qtestock">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="prix" class="form-label">Prix</label>
                    <input type="text" class="form-control" id="prix" v-model="article.prix">
                </div>
                <div class="col-md-6 ms-auto">
                    <label for="categorie" class="form-label">Sous Catégorie</label>
                    <!--input type="texte" class="form-control" id="categorieID" v-model="article.scategorieID"-->
                    <select class="form-control form-select" v-model="article.scategorieID">
                        <option v-for="sc in Scategories" :key="sc.id" :value=sc.id>{{ sc.nomscategorie }}</option>
                    </select>
                </div>
            </div>
            <div class="row pt-2">
                <div class="col-md-12">
                    <label for="" class="mb-2">Image</label>
                    <div>
                        <file-pond name="test" ref="pond" class-name="my-pond" label-idle="Drop image here ..."
                            allow-multiple="false" accepted-file-types="image/jpeg, image/png" v-bind:files="myFiles"
                            :server="serverOptions()" />
                    </div>
                </div>
            </div>
            <br />
            <button type="submit" className="btn btn-outline-primary">
                <i class="fa-solid fa-floppy-disk me-2"></i>Enregister
            </button>
            <router-link to="/articles" class="btn btn-outline-danger mx-2">
                <i class="fa-solid fa-xmark me-2"></i>Cancel
            </router-link>
        </form>
    </div>
    <div style="height: 50vh;"></div>
</template>
<script setup>
import { ref, onMounted } from "vue";
import { useRouter } from 'vue-router';
import axios from 'axios';

const router = useRouter()
const article = ref({
    reference: "",
    designation: "",
    marque: "",
    qtestock: 0,
    prix: 0,
    imageart: "",
    scategorieID: ""
})

const Scategories = ref([]);
const getscategories = () => {
    axios.get('http://localhost:8000/api/scategories').then(res => {
        Scategories.value = res.data;
    }).catch(error => {
        console.log(error)
    });
}

onMounted(() => {
    getscategories();
});


import vueFilePond from 'vue-filepond';
import 'filepond/dist/filepond.min.css';
import FilePondPluginImagePreview from 'filepond-plugin-image-preview';
import 'filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css';

// Create FilePond component
const FilePond = vueFilePond(FilePondPluginImagePreview);
const myFiles = ref([]);

const addArticle = async () => {
    console.log("Start posting to article table ..")
    try {
        const response = await axios.post("http://localhost:8000/api/articles/", article.value);
        console.log("Article added:", response.data);
        router.push({ name: 'Viewarticles' });
    } catch (error) {
        console.error("Error adding article:", error);
    }
};

const serverOptions = () => {
    return {
        process: (fieldName, file, metadata, load, error, progress, abort) => {
            const data = new FormData();
            data.append('file', file);
            data.append("api_key", "536495955431618");
            data.append('upload_preset', 'Ecommerce');
            data.append('cloud_name', 'dsvwfkqyk');
            data.append('public_id', file.name);
            axios.post('https://api.cloudinary.com/v1_1/dsvwfkqyk/image/upload', data)
            .then((response) => {
                article.value.imageart = response.data.secure_url;
                load(data);
            })
            .catch((error) => {
                console.error('Error uploading file:', error);
                error('Upload failed');
                abort();
            });
        },
    };
};
</script>
