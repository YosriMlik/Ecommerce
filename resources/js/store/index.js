import { createStore } from 'vuex'
import createPersistedState from 'vuex-persistedstate/dist/vuex-persistedstate.js';
import Articlestore from './modules/articleFeature';

export default createStore({
    modules: {
        Articlestore
    },
    plugins: [createPersistedState()],
})
