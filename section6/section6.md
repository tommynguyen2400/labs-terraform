# Wor with terraform

# Mutable vs Immutable Infrastructure

# Mutable: 
    # ở đây có nghĩa những thứ mà có thể thay đổi được hoặc customize được
    # Nó sẽ ko nhất quán về cơ sở hạ tầng có thể thay đổi. Vì mỗi server sẽ có config khác nhau nên việc maintain rất là khó cân bằng giữa các server khi dùng mutable infra
    # Lợi ích:
        ## Có thể tuỳ chỉnh tổng thể. Vì vậy, nó có thể đáp ứng nhu cầu chính xác của application cho các server
        ## Không cần thiết lập 1 máy chủ để xử lý 1 sự cố vấn đề
        ## Có thể điều chỉnh các bản cập nhật nhanh hơn ở từng máy chủ riêng biệt
# Immutable
    # một cái gì đó không thể thay đổi hoặc sửa đổi một khi được thành lập
    # Lợi ích:
        ## cung cấp môi trường tương thích với máy chủ
        ## không có sự thay đổi về cấu hình
        ## dễ giải quyết được những issue, và cải thiện về khả năng giải quyết bảo mật
        ## Immutable infrastructure takes the best advantage of the cloud
        ## Example tool: Terraform,docker,k8s,....


# Lifecycle in terraform

# create_before_destroy: tạo resource trước rồi xoá đi cái cũ hơn
# prevent_destroy: ngăn chặn việc xoá nhầm resource
# ignored_changes: ngăn chặn việc thay đổi resoure Attribute(specific/all)