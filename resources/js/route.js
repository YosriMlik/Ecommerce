import Accueil from "./components/accueil.vue";

import ListeCategories from "./components/categories/ListeCategories.vue";
import AddCategory from "./components/categories/addCategory.vue";
import EditCategory from "./components/categories/editCategory.vue";

import Viewarticles from "./components/articles/Viewarticles.vue";
import Addaticle from "./components/articles/addarticle.vue";
import Editarticle from "./components/articles/Editarticle.vue";

import Viewarticletable from "./components/articles/Viewarticletable.vue";

import HomeCart from "./components/cart/HomeCart.vue";
import Cart from "./components/cart/Cart.vue";
import Payment from "./components/cart/Payment.vue";

import Login from "./components/authentification/login.vue";
import Register from "./components/authentification/register.vue";
import Dashboard from "./components/admin/dashboard.vue";

export const routes = [
    {
        name: "accueil",
        path: "/",
        component: Accueil,
    },
    {
        name: "homeCategories",
        path: "/categories",
        component: ListeCategories,
    },
    {
        name: "createCategory",
        path: "/createCategory",
        component: AddCategory,
    },
    {
        name: "editCategory",
        path: "/editCategory/:id",
        component: EditCategory,
    },
    {
        name: "Viewarticles",
        path: "/articles",
        component: Viewarticles,
        meta:{isAuth:true}
    },
    {
        name: "Addarticle",
        path: "/addarticle",
        component: Addaticle,
    },
    {
        name: "editarticle",
        path: "/editarticle/:id",
        component: Editarticle,
    },

    {
        name: "Viewarticletable",
        path: "/articletable",
        component: Viewarticletable,
    },
    {
        path: "/shopping",
        name: "HomeCart",
        component: HomeCart,
    },
    {
        path: "/cart",
        name: "Cart",
        component: Cart,
    },
    {
        path: "/payment",
        name: "Payment",
        component: Payment,
    },
    {
        name: "login",
        path: "/login",
        component: Login,
        meta:{isAuth:true},
    },
    {
        name: "register",
        path: "/register",
        component: Register,
    },
    {
        name: "dashboard",
        path: "/dashboard",
        component: Dashboard,
        meta:{isAuth:true}
    },
];
