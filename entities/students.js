const register_Form = document.getElementById("registerForm");

export const student = {
  name: register_Form["nombreAlumno"].value,
  surname: register_Form["pA"].value,
  mother_last_name: register_Form["sA"].value,
  phone: register_Form["tel"].value,
  email: register_Form["email"].value,
  gender: register_Form["generos"].value,
  description: register_Form["desc"].value,
};

