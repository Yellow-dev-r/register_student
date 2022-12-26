// import { student } from "../entities/students.js";
//import { student } from "../entities/students.js";
//import { resolveFirestore } from "../firebase/firebaseConfig.js";

const openModal = document.getElementById("openRegisterModal");
const modal = document.getElementById("modal");
const closeModal = document.getElementById("closeRegisterModal");
const cancelarRegistro = document.getElementById("cancelar");
const register_Form = document.getElementById("registerForm");

openModal.addEventListener("click", () => {
  console.log("Probando :v");
});

const showRegisterModal = () => modal.classList.toggle("is-active");

openModal.addEventListener("click", showRegisterModal);
closeModal.addEventListener("click", showRegisterModal);
cancelarRegistro.addEventListener("click", showRegisterModal);

register_Form.addEventListener("submit", (e) => {
  e.preventDefault();
  // resolveFirestore(student, "create");
  console.log("nombre", "_", "primerApellido");
});
