// Import the functions you need from the SDKs you need
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries
import * as admin from "firebase-admin";

const firestoreTask = {
  create: "create",
  read: "read",
  update: "update",
  delete: "delete",
};
// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyC11ATwTEC8zS8nuvfhYnOAJicxgvXgR48",
  authDomain: "sist-1.firebaseapp.com",
  projectId: "sist-1",
  storageBucket: "sist-1.appspot.com",
  messagingSenderId: "856666240911",
  appId: "1:856666240911:web:e1ce8ee1f5adeeffc53dfa",
};

// Initialize Firebase
admin.initializeApp(firebaseConfig);
const db = admin.firestore();
// const studentRef =

///[CRUD]
///[Create]
const dbCollection = db
  .collection("Estudiantes")
  .where()
  .orderBy("surname")
  .get();
///[Read]
///[Update]
///[Delete]

export function resolveFirestore(student, firestoreTask) {
  switch (firestoreTask) {
    case "create":
      return dbCollection
        .set(student)
        .then((_) =>
          db
            .collection("Estudiantes")
            .doc(dbCollection.id)
            .update({ id: dbCollection.id })
        );

    case "read":
      return dbCollection.get();

    case "update":
      return dbCollection.update();

    case "delete":
      db.collection("Estudiantes").doc(id).delete();
  }
}
