const getAdminProfile = (_req, res) => {
  res.status(501).json({ message: "Admin profile endpoint not implemented yet." });
};

const listStudents = (_req, res) => {
  res.status(501).json({ message: "Student listing not implemented yet." });
};

const listFaculty = (_req, res) => {
  res.status(501).json({ message: "Faculty listing not implemented yet." });
};

const createSubject = (_req, res) => {
  res.status(501).json({ message: "Subject creation not implemented yet." });
};

const mapFacultyToSubject = (_req, res) => {
  res.status(501).json({ message: "Faculty subject mapping not implemented yet." });
};

const enrollStudentToSubject = (_req, res) => {
  res.status(501).json({ message: "Student enrollment not implemented yet." });
};

module.exports = {
  getAdminProfile,
  listStudents,
  listFaculty,
  createSubject,
  mapFacultyToSubject,
  enrollStudentToSubject,
};
