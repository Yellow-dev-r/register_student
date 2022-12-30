import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

abstract class StudentsRepositoryProtocol {
  Future<void> getStudentToDB(StudentsDto student);
  Future<List<StudentsDto>> getStudentsList();
  Future<StudentsDto> getStudent(String studentId);
  Future<void> deleteStudent(String studentId);
  Future<void> updateStudent(StudentsDto student);
}

class StudentsRepository extends StudentsRepositoryProtocol {
  @override
  Future<void> getStudentToDB(StudentsDto student) async {
    final DocumentReference<Map<String, dynamic>> dbRef =
        firestore.collection(collectionPath).doc();

    await dbRef.set(student.toJson());
    StudentsDto data = student.copyWith(id: dbRef.id);
    await getRefId(dbRef.id).set(data.toJson());
  }

  @override
  Future<List<StudentsDto>> getStudentsList() async {
    try {
      final dbRef = await firestore.collection(collectionPath).get();
      if (dbRef.docs.isNotEmpty && dbRef.docs.length > 0) {
        final result = dbRef.docs.map((doc) {
          return StudentsDto.fromJson(doc.data());
        }).toList();
        return result;
      }
      throw Exception('docs are empty and length < 0');
    } catch (error) {
      throw Exception('Error getting stundets: $error');
    }
  }

  ///[UpdateDocId]
  DocumentReference<Map<String, dynamic>> getRefId(String id) =>
      firestore.collection(collectionPath).doc(id);

  @override
  Future<StudentsDto> getStudent(String studentId) async {
    final DocumentSnapshot<Map<String, dynamic>> dbRef =
        await firestore.collection(collectionPath).doc(studentId).get();
    if (dbRef.data() != null && dbRef.exists)
      return StudentsDto.fromJson(dbRef.data()!);
    throw Exception('No document found');
  }

  @override
  Future<void> deleteStudent(String studentId) async {
    await firestore.collection(collectionPath).doc(studentId).delete();
  }

  @override
  Future<void> updateStudent(StudentsDto student) async {
    try {
      await firestore
          .collection(collectionPath)
          .doc(student.id)
          .update(student.toJson());
    } catch (error) {
      throw Exception('Error while updating database $error');
    }
  }
}
