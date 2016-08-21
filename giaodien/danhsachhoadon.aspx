<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsachhoadon.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.danhsachhoadon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 516px;
            color: #003399;
            font-weight: 700;
            text-align: right;
        }
        body{
            
            background-image: url("list.jpg");
        }
        .auto-style2 {
            width: 390px;
        }
        a{
    color: yellow;
}
        #dhead{
            width: 100%;
            height: 100px;
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
            font-size: xx-large;
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
        
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center; font-weight: 700; " class="auto-style51">QUẢN LÝ HÓA ĐƠN</td>
            </tr>
            <tr>
                <td class="auto-style1">Mã Hóa Đơn :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtmaHD" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tên Sản Phẩm :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txttenSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Số Lượng Sản Phẩm :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsoluongSP" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Đơn Giá :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtdongia" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tên Khách Hàng :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txttenKH" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button CssClass="auto-style50" ID="btnthem" runat="server" Text="Thêm" Width="80px" BackColor="White" Height="40px" OnClick="btnthem_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="80%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="text-align: center" OnRowDeleting="GridView1_RowDeleting">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Mã Hóa Đơn">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("maHD") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("maHD") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên Sản Phẩm">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("tenSP") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("tenSP") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Số Lượng Sản Phẩm">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("soluongSP") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("soluongSP") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Đơn Giá">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dongia") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("dongia") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên Khách Hàng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("tenKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("tenKH") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
