function plan = buildfile
import matlab.buildtool.tasks.*
import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoverageResult

plan = buildplan(localfunctions);

plan("check") = CodeIssuesTask;
plan("test") = TestTask(Dependencies="check",...
    TestResults="test-results/results.xml",...
    CodeCoverageResults="code-coverage/report.xml",...
    SourceFiles='02_Models\AHRS_Voter\test_cases');

plan.DefaultTasks = "test";
end
