+Cấu hình MVC
-Models: là các tài nguyên trong ứng dụng, như người dùng, bài đăng, bài viết, bạn bè, công việc,...,
-Views: tạo nên phần giao diện của ứng dụng, những gì người dùng nhìn thấy trong trình duyệt hoặc trên các thiết bị di động. Views sẽ bao gồm HTML, CSS và JavaScript. Để sử dụng thêm được code Ruby thì file HTML sẽ được định dạng thêm .erb . Ví dụ : application.html.erb
-Controllers: là phần back-end, trung tâm xử lý, ví dụ: users_controller sẽ quản lý các chức năng của users

+Cách thức MVC hoạt động:
-Từ ứng dụng sẽ tạo request sau đấy request sẽ được router (config/routes.rb) tiếp nhận
