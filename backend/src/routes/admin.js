const express = require("express");
const {
  getAdminProfile,
  listStudents,
  listFaculty,
  createSubject,
  mapFacultyToSubject,
  enrollStudentToSubject,
} = require("../controllers/adminController");

const router = express.Router();

router.get("/profile", getAdminProfile);
router.get("/students", listStudents);
router.get("/faculty", listFaculty);
router.post("/subjects", createSubject);
router.post("/subjects/map-faculty", mapFacultyToSubject);
router.post("/subjects/enroll-student", enrollStudentToSubject);

module.exports = router;
