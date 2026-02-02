const express = require("express");
const {
  loginWithFace,
  loginWithPassword,
  startPasswordReset,
  verifyOtp,
  resetPassword,
  enrollFace,
} = require("../controllers/authController");

const router = express.Router();

router.post("/face-login", loginWithFace);
router.post("/password-login", loginWithPassword);
router.post("/password-reset/start", startPasswordReset);
router.post("/password-reset/verify", verifyOtp);
router.post("/password-reset/finish", resetPassword);
router.post("/face-enroll", enrollFace);

module.exports = router;
