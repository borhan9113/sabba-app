// web/firebase-config.js
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";

const firebaseConfig = {
  apiKey: "AIzaSyAvYxt2nM--aVKkV3ZZ8jcYiXIelIVXMH0",
  authDomain: "sabba-11e90.firebaseapp.com",
  projectId: "sabba-11e90",
  storageBucket: "sabba-11e90.appspot.com",
  messagingSenderId: "1014516264017",
  appId: "1:1014516264017:web:01dc5fbc4eac7a89755c70",
  measurementId: "G-13T9B8VT5Z"
};

const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
