-- =====================================================
-- BÀI TẬP: TRUY VẤN DỮ LIỆU VỚI CSDL QUẢN LÝ SINH VIÊN
-- Hệ quản trị CSDL: MySQL
-- =====================================================

-- Câu 1:
-- Hiển thị tất cả các sinh viên có tên bắt đầu bằng ký tự 'h'
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';


-- Câu 2:
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;


-- Câu 3:
-- Hiển thị tất cả các thông tin môn học có Credit trong khoảng từ 3 đến 5
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;


-- Câu 4:
-- Thay đổi mã lớp (ClassID) của sinh viên có tên 'Hung' thành 2
UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';


-- Có thể kiểm tra lại kết quả sau khi cập nhật
SELECT *
FROM Student
WHERE StudentName = 'Hung';


-- Câu 5:
-- Hiển thị StudentName, SubName, Mark
-- Sắp xếp theo điểm thi giảm dần,
-- nếu trùng điểm thì sắp theo tên sinh viên tăng dần
SELECT
    s.StudentName,
    sub.SubName,
    m.Mark
FROM Student AS s
INNER JOIN Mark AS m
    ON s.StudentID = m.StudentID
INNER JOIN Subject AS sub
    ON m.SubID = sub.SubID
ORDER BY
    m.Mark DESC,
    s.StudentName ASC;
