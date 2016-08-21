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
    public partial class danhsachchitiethoadon : System.Web.UI.Page
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable data = new DataTable();
            data = kn.laybang("select * from ChiTietHoaDon");
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
            if (txtsoseriHD.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập số seri hóa đơn !!!')</Script>");
            }
            else if (txtdiachiKH.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập địa chỉ khách hàng !!!')</Script>");
            }
            else if (txtsodienthoaiKH.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập số điện thoại khách hàng !!!')</Script>");
            }
            else if (txttenLSP.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập tên loại sản phẩm !!!')</Script>");
            }
            else
            {
                ketnoi kn = new ketnoi();
                string soserihd = txtsoseriHD.Text;
                string diachikh = txtdiachiKH.Text;
                string sodienthoaikh = txtsodienthoaiKH.Text;
                string tenlsp = txttenLSP.Text;

                int kq = kn.them("insert into ChiTietHoaDon values('" + soserihd + "','" + diachikh + "','" + sodienthoaikh + "','" + tenlsp + "')");
                if (kq > 0)
                {
                    Response.Write("<script>alert('Thêm Thành Công !!!')</Script>");
                    laybangchogridview();
                    txtsoseriHD.Text = "";
                    txtdiachiKH.Text = "";
                    txtsodienthoaiKH.Text = "";
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
            string soserihd = e.NewValues["soseriHD"].ToString();
            string diachikh = e.NewValues["diachiKH"].ToString();
            string sodienthoaikh = e.NewValues["sodienthoaiKH"].ToString();
            string tenlsp = e.NewValues["tenLSP"].ToString();

            int kq = kn.them("update ChiTietHoaDon set soseriHD = '" + soserihd + "',diachiKH='" + diachikh + "',sodienthoaiKH='" + sodienthoaikh + "',tenLSP='" + tenlsp + "' where soseriHD='" + soserihd + "'");
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
            string soserihd = e.Values["soseriHD"].ToString();
            int kq = kn.them("delete from ChiTietHoaDon where soseriHD = '"+soserihd+"'");
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