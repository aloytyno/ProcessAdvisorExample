function plan = buildfile
import matlab.buildtool.tasks.*

plan = buildplan(localfunctions);

plan("clean") = CleanTask;
plan("check") = CodeIssuesTask;
plan("test") = TestTask("02_Models\AHRS_Voter\test_cases","CodeCoverageResults","code-coverage\coverage.xml");

plan.DefaultTasks = ["check" "test"];
end
