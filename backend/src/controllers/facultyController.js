const getFacultyProfile = (_req, res) => {
  res.status(501).json({ message: "Faculty profile endpoint not implemented yet." });
};

const listAssignedSubjects = (_req, res) => {
  res.status(501).json({ message: "Assigned subjects not implemented yet." });
};

const markAttendance = (_req, res) => {
  res.status(501).json({ message: "Attendance marking not implemented yet." });
};

const getStudentInfo = (_req, res) => {
  res.status(501).json({ message: "Student info lookup not implemented yet." });
};

const submitInternalMarks = (_req, res) => {
  res.status(501).json({ message: "Internal marks submission not implemented yet." });
};

const resetFacultyCredentials = (_req, res) => {
  res.status(501).json({ message: "Faculty credential reset not implemented yet." });
};

module.exports = {
  getFacultyProfile,
  listAssignedSubjects,
  markAttendance,
  getStudentInfo,
  submitInternalMarks,
  resetFacultyCredentials,
};
