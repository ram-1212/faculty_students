const loginWithFace = (_req, res) => {
  res.status(501).json({ message: "Face recognition login not implemented yet." });
};

const loginWithPassword = (_req, res) => {
  res.status(501).json({ message: "Password login not implemented yet." });
};

const startPasswordReset = (_req, res) => {
  res.status(501).json({ message: "Password reset start not implemented yet." });
};

const verifyOtp = (_req, res) => {
  res.status(501).json({ message: "OTP verification not implemented yet." });
};

const resetPassword = (_req, res) => {
  res.status(501).json({ message: "Password reset not implemented yet." });
};

const enrollFace = (_req, res) => {
  res.status(501).json({ message: "Face enrollment not implemented yet." });
};

module.exports = {
  loginWithFace,
  loginWithPassword,
  startPasswordReset,
  verifyOtp,
  resetPassword,
  enrollFace,
};
