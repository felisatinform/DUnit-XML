program MixRepeatedTestWithTestSuiteDoublePrefixedTests;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  FailingTestCase in 'FailingTestCase.pas',
  RegisterAndRunTests in 'RegisterAndRunTests.pas',
  SucceedingTestCase in 'SucceedingTestCase.pas',
  TestRunner in 'TestRunner.pas',
  TestUtils in 'TestUtils.pas',
  VSoft.DUnit.XMLTestRunner in '..\VSoft.DUnit.XMLTestRunner.pas',
  VSoft.MSXML6 in '..\VSoft.MSXML6.pas',
  TestFramework;

begin
  RegisterTests('MixRepeatedTestWithTestSuiteDouble.Prefix', [
    TRepeatedTest.Create(TSucceedingTestCase.Suite, 3),
    TFailingTestCase.Suite
  ]);
  RunXmlOutputTestsCatchedOnConsole('MixRepeatedTestWithTestSuiteDoublePrefixedTests.xml');
end.