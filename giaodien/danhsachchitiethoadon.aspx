<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsachchitiethoadon.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.danhsachchitiethoadon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            
            background-image: url("list.jpg");
        }
        .auto-style1 {
            width: 516px;
            text-align: right;
            font-weight: 700;
            color: #003399;
        }
        .auto-style2 {
            width: 396px;
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
            height: 40px;
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
                <td colspan="3" style="font-weight: 700; text-align: center" class="auto-style51">QUẢN LÝ CHI TIẾT HÓA ĐƠN</td>
            </tr>
            <tr>
                <td class="auto-style1">Số Seri Hóa Đơn :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsoseriHD" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Địa Chỉ Khách Hàng :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtdiachiKH" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Số Điện Thoại Khách Hàng :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsodienthoaiKH" runat="server" Width="380px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tên Loại Sản Phẩm :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txttenLSP" runat="server" Width="380px"></asp:TextBox>
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
                    <asp:Button CssClass="auto-style50" ID="btnthem" runat="server" BackColor="White" Height="40px" OnClick="btnthem_Click" Text="Thêm" Width="80px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="80%" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="text-align: center" OnRowDeleting="GridView1_RowDeleting">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Số Seri Hóa Đơn">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("soseriHD") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("soseriHD") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Địa Chỉ Khách Hàng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("diachiKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("diachiKH") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Số Điện Thoại Khách Hàng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("sodienthoaiKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("sodienthoaiKH") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên Loại Sản Phẩm">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("tenLSP") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("tenLSP") %>'></asp:Label>
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
