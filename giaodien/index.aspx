<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image: url("menu2.jpg");
        }
        td{
            border-radius: 10px;
            height: 50px;
        }
        
        .auto-style20 {
            width: 184px;
            height: 23px;
            font-weight: bold;
            font-size: large;
            color: #000099;
            text-align: center;
            text-decoration: underline;
            background-color: #33CCFF;
        }
        .auto-style24 {
            font-size: large;
            font-weight: bold;
            color: #FFFF00;
            text-align: center;
            text-decoration: underline;
            background-color: #33CCFF;
            width: 185px;
        }
        #dhead{
            width: 100%;
            height: 100px;
            margin-top: 30px;
        }
        .auto-style25 {
            text-decoration: none;
            color: #000099;
        }
       
    </style>
</head>
    <div id="dhead">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style20"><a href="danhsachkhachhang.aspx" class="auto-style25"><strong>QUẢN LÝ KHÁCH HÀNG</strong></a></td>
                <td class="auto-style24"><a href="danhsachloaisanpham.aspx" class="auto-style25">QUẢN LÝ LOẠI SẢN PHẨM</a></td>
                <td class="auto-style24"><a href="danhsachsanpham.aspx" class="auto-style25">QUẢN LÝ SẢN PHẨM</a></td>
                 <td class="auto-style24"><a href="danhsachhoadon.aspx" class="auto-style25">QUẢN LÝ HÓA ĐƠN</a></td>
                <td class="auto-style24"><a href="danhsachchitiethoadon.aspx" class="auto-style25">QUẢN LÝ CHI TIẾT HÓA ĐƠN</a></td>
            </tr>
        </table>
        
    </div>
<body>
    <form id="form1" runat="server">
    
    </form>
</body>
</html>
