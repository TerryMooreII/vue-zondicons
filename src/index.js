import Vue from 'vue';
import Zondicon from './components/Zondicon.vue';

const Components = {
  Zondicon,
};

Object.keys(Components).forEach((name) => {
  Vue.component(name, Components[name]);
});
export default Components;
