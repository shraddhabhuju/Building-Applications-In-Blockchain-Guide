const StudentRecords = artifacts.require("StudentRecords");

module.exports = function (deployer) {
  deployer.deploy(StudentRecords);
};
