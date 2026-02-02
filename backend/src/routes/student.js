const express = require("express");
const {
  getStudentProfile,
  getAttendanceSummary,
  getSemesterMarks,
  getFeeDetails,
  getInternalMarks,
  resetStudentCredentials,
} = require("../controllers/studentController");

const router = express.Router();

router.get("/profile", getStudentProfile);
router.get("/attendance", getAttendanceSummary);
router.get("/semester-marks", getSemesterMarks);
router.get("/fees", getFeeDetails);
router.get("/internal-marks", getInternalMarks);
router.post("/reset-credentials", resetStudentCredentials);

module.exports = router;
