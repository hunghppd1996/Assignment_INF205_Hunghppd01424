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
    public partial class danhsachhoadon : System.Web.UI.Page
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable data = new DataTable();
            data = kn.laybang("select * from HoaDon");
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
            if (txtmaHD.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập mã hóa đơn !!!')</Script>");
            }
            else if (txttenSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập tên sản phẩm !!!')</Script>");
            }
            else if (txtsoluongSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập số lượng sản phẩm !!!')</Script>");
            }
            else if (txtdongia.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đơn giá !!!')</Script>");
            }
            else if (txttenKH.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập tên khách hàng !!!')</Script>");
            }
            else
            {
                ketnoi kn = new ketnoi();
                string mahd = txtmaHD.Text;
                string tensp = txttenSP.Text;
                string soluongsp = txtsoluongSP.Text;
                string dongia = txtdongia.Text;
                string tenkh = txttenKH.Text;
                int kq = kn.them("insert into HoaDon values('" + mahd + "','" + tensp + "','" + soluongsp + "','" + dongia + "','" + tenkh + "')");
                if (kq > 0)
                {
                    Response.Write("<script>alert('Thêm Thành Công !!!')</Script>");
                    laybangchogridview();
                    txtmaHD.Text = "";
                    txttenSP.Text = "";
                    txtdongia.Text = "";
                    txtsoluongSP.Text = "";
                    txttenKH.Text = "";
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
            string mahd = e.NewValues["maHD"].ToString();
            string tensp = e.NewValues["tenSP"].ToString();
            string soluongsp = e.NewValues["soluongSP"].ToString();
            string donGia = e.NewValues["dongia"].ToString();
            string tenkh = e.NewValues["tenKH"].ToString();

            int kq = kn.them("update HoaDon set maHD = '" + mahd + "',tenSP='" + tensp + "',soluongSP='" + soluongsp + "',dongia='" + donGia + "',tenKH='" + tenkh + "' where maHD='" + mahd + "'");
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
            string mahd = e.Values["maHD"].ToString();
            int kq = kn.them("delete from HoaDon where maHD ='" + mahd + "' ");
            if (kq > 0)
            {
                Response.Write("<script>alert('Xóa Thành Công !!!');</Script>");
                laybangchogridview();
            }
            else
            {
                Response.Write("<script>alert('Xóa Không Thành Công !!!');</Script>");
            }
        }
    }
}