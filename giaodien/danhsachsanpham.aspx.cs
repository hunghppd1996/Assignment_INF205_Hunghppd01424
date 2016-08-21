using Hunghppd01424_INF205_Assignment_.fileketnoi;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hunghppd01424_INF205_Assignment_.giaodien
{
    public partial class danhsachsanpham : System.Web.UI.Page
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable data = new DataTable();
            data = kn.laybang("select * from SanPham");
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                laybangchogridview();
            }
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            if (txtmaSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập mã sản phẩm !!!')</Script>");
            }
            else if (txttenSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập tên sản phẩm !!!')</Script>");
            }
            else if (txtloaiSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập loại sản phẩm !!!')</Script>");
            }
            else if (txtsoluongSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập số lượng sản phẩm !!!')</Script>");
            }
            else if (txtdongiaSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đơn giá sản phẩm !!!')</Script>");
            }
            else
            {
                ketnoi kn = new ketnoi();
                string masp = txtmaSP.Text;
                string tensp = txttenSP.Text;
                string loaisp = txtloaiSP.Text;
                string soluongsp = txtsoluongSP.Text;
                string dongiasp = txtdongiaSP.Text;

                int kq = kn.them("insert into SanPham values('" + masp + "','" + tensp + "','" + loaisp + "','" + soluongsp + "','" + dongiasp + "')");
                if (kq > 0)
                {
                    Response.Write("<script>alert('Thêm Thành Công !!!')</Script>");
                    laybangchogridview();
                    txtmaSP.Text = "";
                    txttenSP.Text = "";
                    txtloaiSP.Text = "";
                    txtsoluongSP.Text = "";
                    txtdongiaSP.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Thêm Không Thành Công !!!')</Script>");
                }
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            laybangchogridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            laybangchogridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ketnoi kn = new ketnoi();
            string masp = e.NewValues["maSP"].ToString();
            string tensp = e.NewValues["tenSP"].ToString();
            string loaisp = e.NewValues["loaiSP"].ToString();
            string soluongsp = e.NewValues["soluongSP"].ToString();
            string dongiasp = e.NewValues["dongiaSP"].ToString();

            int kq = kn.them("update SanPham set maSP = '" + masp + "',tenSP='" + tensp + "',loaiSP='" + loaisp + "',soluongSP='" + soluongsp + "',dongiaSP='" + dongiasp + "' where maSP='" + masp + "'");
            if (kq > 0)
            {
                Response.Write("<script>alert('Sửa Thành Công !!!')</Script>");
                GridView1.EditIndex = -1;
                laybangchogridview();
            }
            else
            {
                Response.Write("<script>alert('Sửa Không Thành Công !!!')</Script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ketnoi kn = new ketnoi();
            string masp = e.Values["maSP"].ToString();
            int kq = kn.them("delete from SanPham where maSP = '" + masp + "'");
            if (kq > 0)
            {
                Response.Write("<script>alert('Xóa Thành Công !!!')</Script>");
                laybangchogridview();
            }
            else
            {
                Response.Write("<script>alert('Xóa Không Thành Công !!!')</Script>");
            }
        }
    }
}