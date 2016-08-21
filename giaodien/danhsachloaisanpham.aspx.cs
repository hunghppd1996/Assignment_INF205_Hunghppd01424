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
    public partial class danhsachloaisanpham : System.Web.UI.Page
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable data = new DataTable();
            data = kn.laybang("select * from LoaiSanPham");
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
            if (txtmaLSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập mã loại sản phẩm !!!')</Script>");
            }
            else if (txttenLSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập tên loại sản phẩm !!!')</Script>");
            }
            else
            {
                ketnoi kn = new ketnoi();
                string malsp = txtmaLSP.Text;
                string tenlsp = txttenLSP.Text;
                int kq = kn.them("insert into LoaiSanPham values('" + malsp + "','" + tenlsp + "')");
                if (kq > 0)
                {
                    Response.Write("<script>alert('Thêm Thành Công !!!')</Script>");
                    laybangchogridview();
                    txtmaLSP.Text = "";
                    txttenLSP.Text = "";
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
            string malsp = e.NewValues["maLSP"].ToString();
            string tenlsp = e.NewValues["tenLSP"].ToString();
            int kq = kn.them("update LoaiSanPham set maLSP = '" + malsp + "',tenLSP='" + tenlsp + "' where maLSP='" + malsp + "'");
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
            string tenlsp = e.Values["tenLSP"].ToString();
            int kq = kn.them("delete from LoaiSanPham where tenLSP = '" + tenlsp + "'");
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