<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsachkhachhang.aspx.cs" Inherits="Hunghppd01424_INF205_Assignment_.giaodien.danhsachkhachhang" %>

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
            color: #0000FF;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 380px;
        }
        .auto-style4 {
            width: 525px;
            font-weight: 700;
            color: #000099;
        }
        .auto-style6 {
            color: #FFFF00;
        }
        .auto-style7 {
            width: 516px;
            font-weight: 700;
            color: #000099;
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 380px;
            text-align: right;
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
    <form id="form1" runat="server">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="3"><strong class="auto-style6">QUẢN LÝ KHÁCH HÀNG</strong></td>
            </tr>
            <tr>
                <td class="auto-style7">Mã Khách Hàng :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtmaKH" runat="server" Width="370px" style="margin-left: 2px"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Tên Khách Hàng :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txttenKH" runat="server" Width="370px" style="margin-left: 2px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Địa Chỉ Khách Hàng :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtdiachiKH" runat="server" Width="370px" style="margin-left: 2px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Số Điện Thoại Khách Hàng :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtsodienthoaiKH" runat="server" Width="370px" style="margin-left: 2px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button CssClass="auto-style50" ID="btnthem" runat="server" BackColor="White" OnClick="btnthem_Click" Text="Thêm" Width="80px" Height="40px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="80%" BorderStyle="None" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="text-align: center">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Mã Khách Hàng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("maKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("maKH") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên Khách Hàng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tenKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("tenKH") %>'></asp:Label>
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
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sodienthoaiKH") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("sodienthoaiKH") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Button ID="btnxoa" runat="server" Text="XÓA" />
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
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
