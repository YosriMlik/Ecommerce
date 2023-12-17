import { createApp } from "vue";
import { createRouter, createWebHistory, createWebHashHistory } from "vue-router";
import { routes } from "./route";
import "bootstrap/dist/css/bootstrap.min.css";
import "@fortawesome/fontawesome-free/css/all.min.css";
import App from "./App.vue";
import PrimeVue from "primevue/config";
import "primevue/resources/themes/lara-light-green/theme.css";
import store from "./store";

let app = createApp(App);
const router = createRouter({
    history: createWebHistory(),
    routes: routes,
});

router.beforeEach(async (to, from, next) => {
    if (to.matched.some((record) => record.meta.isAuth)) {
        let token = localStorage.getItem("token");
        if (!token) {
            console.log("need to Connect");
            console.log(token);
            next("/login");
        } else {
            console.log(token);
            console.log("Connected");
            next(); // Mettre next() ici après avoir vérifié l'authentification
        }
    } else {
        console.log("dont need to connect");
        next(); // Mettre next() ici si la route n'a pas besoin d'authentification
    }
});

app.use(router);
app.use(router).use(PrimeVue);
app.use(store);
app.mount("#app");
