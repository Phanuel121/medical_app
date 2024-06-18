
List<Doctor> doctor = [
  Doctor(name: "Dr. Shalom M.", specialty: "Pediatrician", photo: "doctor1.jpeg"),
  Doctor(name: "Dr. Larry A.", specialty: "Cardiologist", photo: "doctor2.jpeg"),
  Doctor(name: "Dr. Perrin P.", specialty: "Neurologist", photo: "doctor3.jpeg"),
  Doctor(name: "Dr. Kari O.", specialty: "Dermatologist", photo: "doctor4.jpeg"),
];

class Doctor {
  final String name;
  final String specialty;
  final String photo;

  Doctor({
    required this.name,
    required this.specialty,
    required this.photo,
  });
}