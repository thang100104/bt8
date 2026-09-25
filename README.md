# Bài tập: Truy vấn dữ liệu với CSDL Quản lý sinh viên

## Mục tiêu
Sử dụng được các câu lệnh truy vấn trong MySQL.

## Nội dung bài làm

File `baitap_truyvan_qlsv.sql` gồm đầy đủ 5 yêu cầu:

1. Hiển thị tất cả sinh viên có tên bắt đầu bằng ký tự `h`.
2. Hiển thị thông tin lớp học có thời gian bắt đầu vào tháng 12.
3. Hiển thị môn học có `Credit` trong khoảng từ 3 đến 5.
4. Thay đổi `ClassID` của sinh viên tên `Hung` thành `2`.
5. Hiển thị `StudentName`, `SubName`, `Mark`, sắp xếp điểm giảm dần; nếu trùng điểm thì sắp xếp tên tăng dần.

## Cách chạy

1. Mở MySQL Workbench hoặc phpMyAdmin.
2. Chọn CSDL Quản lý sinh viên đã tạo ở bài thực hành trước.
3. Mở file `baitap_truyvan_qlsv.sql`.
4. Chạy lần lượt các câu lệnh SQL.
5. Kiểm tra kết quả.

## Cấu trúc bảng được sử dụng

- `Student(StudentID, StudentName, ..., ClassID)`
- `Class(ClassID, ClassName, StartDate, ...)`
- `Subject(SubID, SubName, Credit, ...)`
- `Mark(..., StudentID, SubID, Mark, ...)`

## Nộp bài

- Upload toàn bộ thư mục này lên GitHub.
- Sao chép link repository GitHub.
- Dán link vào phần nộp bài.
