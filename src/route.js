import HelloWorld from './components/HelloWorld.vue';
import LoginForm from './components/LoginForm.vue';


const routes = [
    { path: '/home', component: HelloWorld, name: 'HelloWorld' },
    { path: '/login', component: LoginForm, name: 'login-form' },    
    
];

export default routes;