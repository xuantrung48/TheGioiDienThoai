﻿using System.ComponentModel.DataAnnotations;

namespace ShopDienThoai.ViewModels.User
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Nhập vào Email!")]
        [EmailAddress]
        public string Email { get; set; }

        [Required(ErrorMessage = "Nhập vào mật khẩu!")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public bool RememberMe { get; set; }
        public string ReturnUrl { get; set; }
        public string ProductId { get; set; }
    }
}