USE StudentManagement;
SELECT StudentID, Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore FROM Students ORDER BY TotalScore DESC LIMIT 3;
SELECT AVG(MathScore) AS AvgMathScore, AVG(ScienceScore) AS AvgScienceScore FROM Students WHERE MathScore > (SELECT AVG(MathScore) FROM Students);
SELECT MAX(MathScore) AS SecondHighestMathScore FROM Students WHERE MathScore < (SELECT MAX(MathScore) FROM Students);