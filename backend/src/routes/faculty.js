const express = require("express");
const {
  getFacultyProfile,
  listAssignedSubjects,
  markAttendance,
  getStudentInfo,
  submitInternalMarks,
  resetFacultyCredentials,
} = require("../controllers/facultyController");

const router = express.Router();

router.get("/profile", getFacultyProfile);
router.get("/subjects", listAssignedSubjects);
router.post("/attendance", markAttendance);
router.get("/students/:studentId", getStudentInfo);
router.post("/internal-marks", submitInternalMarks);
router.post("/reset-credentials", resetFacultyCredentials);

module.exports = router;
