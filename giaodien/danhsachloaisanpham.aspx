<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsachloaisanpham.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.danhsachloaisanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            
            background-image: url("list.jpg");
        }
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 380px;
        }
        .auto-style4 {
            width: 516px;
            text-align: right;
            font-weight: 700;
            color: #003399;
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
        .auto-style25 {
            width: 513px;
            text-align: right;
            font-weight: 700;
            height: 23px;
        }
        .auto-style26 {
            width: 380px;
            height: 23px;
        }
        .auto-style27 {
            height: 23px;
        }
        .auto-style28 {
            width: 516px;
            text-align: right;
            font-weight: 700;
            height: 40px;
        }
        .auto-style29 {
            width: 380px;
            height: 26px;
        }
        .auto-style30 {
            height: 26px;
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
            color: #FFFF00;
        }
        .auto-style52 {
            color: #000099;
        }
    </style>
</head>
    <div id="dhead">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style20"><a href="danhsachkhachhang.aspx" class="auto-style52">QUẢN LÝ KHÁCH HÀNG</a></td>
                <td class="auto-style24"><a href="danhsachloaisanpham.aspx" class="auto-style52">QUẢN LÝ LOẠI SẢN PHẨM</a></td>
                <td class="auto-style24"><a href="danhsachsanpham.aspx" class="auto-style52">QUẢN LÝ SẢN PHẨM</a></td>
                 <td class="auto-style24"><a href="danhsachhoadon.aspx" class="auto-style52">QUẢN LÝ HÓA ĐƠN</a></td>
                <td class="auto-style24"><a href="danhsachchitiethoadon.aspx" class="auto-style52">QUẢN LÝ CHI TIẾT HÓA ĐƠN</a></td>
            </tr>
        </table>
        
    </div>
<body>
    <form id="form1" runat="server">
        
        <table style="width:100%; ">
            <tr>
                <td class="auto-style1" colspan="3"><strong class="auto-style51">QUẢN LÝ LOẠI SẢN PHẨM</strong></td>
            </tr>
            <tr>
                <td class="auto-style28"><strong style="color: #003399">Mã Loại Sản Phẩm :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtmaLSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style4">Tên Loại Sản Phẩm :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txttenLSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26">
                    </td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button CssClass="auto-style50" ID="btnthem" runat="server" Height="40px" OnClick="btnthem_Click" Text="Thêm" Width="80px" BackColor="White" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="80%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="text-align: center">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="maLSP" HeaderText="Mã Loại Sản Phẩm" />
                            <asp:BoundField DataField="tenLSP" HeaderText="Tên Loại Sản Phẩm" />
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
