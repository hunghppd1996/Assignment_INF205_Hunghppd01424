<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsachsanpham.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.danhsachsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            
            background-image: url('list.jpg');
            text-align: center;
        }
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 516px;
            font-weight: bold;
            text-align: right;
            color: #003399;
        }
        .auto-style3 {
            height: 23px;
            width: 561px;
        }
        .auto-style4 {
            width: 389px;
        }
        .auto-style5 {
            height: 40px;
            width: 389px;
            text-align: left;
        }
        .auto-style6 {
            height: 40px;
            width: 516px;
            font-weight: bold;
            text-align: right;
            color: #003399;
        }
        .auto-style7 {
            font-weight: bold;
            text-align: center;
            color: #FFFF00;
            font-size: xx-large;
        }
        a{
    color: yellow;
}
        a.non-textdecoration{
    color: green;
    text-decoration: none;
}
        td{
            border-radius: 10px;
            height:40px;
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
        }
        .auto-style50{
            background-color: #21759B;
            background-image: linear-gradient(to bottom, #2A95C5, #21759B);
            box-shadow: 0 1px 0 rgba(120, 200, 230, 0.5) inset;
            border-color: #21759B #21759B #1E6A8D;
            border-style: solid;
            border-width: 1px;
            border-radius: 3px 3px 3px 3px;
            display: inline-block;
            padding: 4px 15px 7px 15px;
            margin: 2px 4px;
            text-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
            text-decoration: none;
            cursor: pointer;
            white-space: nowrap;

        }
        .auto-style50:hover, .auto-style50:focus{
            background-color: #278AB7;
            background-image: linear-gradient(to bottom,#2E9FD2,#21759B);
            border-color: #1B607F;
            box-shadow: 0 1px 0 rgba(120,200,230,0.6) inset;
            text-shadow: 0 -1px 0 rgba(0,0,0,0.3)
        }
        .auto-style51 {
            color: #000099;
        }
    </style>
</head>
    <div id="dhead">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style20"><a href="danhsachkhachhang.aspx" class="auto-style51">QUẢN LÝ KHÁCH HÀNG</a></td>
                <td class="auto-style24"><a href="danhsachloaisanpham.aspx" class="auto-style51">QUẢN LÝ LOẠI SẢN PHẨM</a></td>
                <td class="auto-style24"><a href="danhsachsanpham.aspx" class="auto-style51">QUẢN LÝ SẢN PHẨM</a></td>
                 <td class="auto-style24"><a href="danhsachhoadon.aspx" class="auto-style51">QUẢN LÝ HÓA ĐƠN</a></td>
                <td class="auto-style24"><a href="danhsachchitiethoadon.aspx" class="auto-style51">QUẢN LÝ CHI TIẾT HÓA ĐƠN</a></td>
            </tr>
        </table>
        
    </div>
<body>
    <form id="form1" runat="server" >
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" class="auto-style7">QUẢN LÝ SẢN PHẨM</td>
            </tr>
            <tr>
                <td class="auto-style2">Mã Sản Phẩm :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtmaSP" runat="server" Width="380px" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Tên Sản Phẩm :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txttenSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Loại Sản Phẩm :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtloaiSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style6">Số Lượng Sản Phẩm :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsoluongSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Đơn Giá Sản Phẩm :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtdongiaSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button CssClass="auto-style50" ID="btnthem" runat="server" Height="40px" OnClick="btnthem_Click" Text="Thêm" Width="80px" />
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="80%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="maSP" HeaderText="Mã Sản Phẩm" />
                            <asp:BoundField DataField="tenSP" HeaderText="Tên Sản Phẩm" />
                            <asp:BoundField DataField="loaiSP" HeaderText="Loại Sản Phẩm" />
                            <asp:BoundField DataField="soluongSP" HeaderText="Số Lượng Sản Phẩm" />
                            <asp:BoundField DataField="dongiaSP" HeaderText="Đơn Giá Sản Phẩm" />
                            <asp:CommandField DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
