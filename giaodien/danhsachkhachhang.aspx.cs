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
   
    public partial class danhsachkhachhang : System.Web.UI.Page
    {
       
        public void laybangchogridview()
        {
                ketnoi kn = new ketnoi();
                DataTable data = new DataTable();
                data = kn.laybang("select * from KhachHang");
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            if(txtmaKH.Text == ""){
                Response.Write("<script>alert('Bạn chưa nhập mã khách hàng !!!')</Script>");
            }else if(txttenKH.Text == ""){
                Response.Write("<script>alert('Bạn chưa nhập tên khách hàng !!!')</Script>");
            }else if(txtdiachiKH.Text==""){
                Response.Write("<script>alert('Bạn chưa nhập địa chỉ khách hàng !!!')</Script>");
            }
            else if (txtsodienthoaiKH.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập số điện thoại khách hàng !!!')</Script>");
            }
            else
            {
                ketnoi kn = new ketnoi();
                string makh = txtmaKH.Text;
                string tenkh = txttenKH.Text;
                string diachikh = txtdiachiKH.Text;
                string sodienthoaikh = txtsodienthoaiKH.Text;

                int kq = kn.them("insert into KhachHang values('" + makh + "','" + tenkh + "','" + diachikh + "','" + sodienthoaikh + "')");
                if (kq > 0)
                {
                    Response.Write("<script>alert('Thêm Thành Công !!!')</Script>");
                    laybangchogridview();
                    txtmaKH.Text = "";
                    txttenKH.Text = "";
                    txtdiachiKH.Text = "";
                    txtsodienthoaiKH.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Thêm Không Thành Công !!!')</Script>");
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ketnoi kn = new ketnoi();
            string makh = e.Values["maKH"].ToString();
            int kq = kn.them("delete from KhachHang where maKH ='"+ makh+"' ");
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
            string makh = e.NewValues["maKH"].ToString();
            string tenkh =  e.NewValues["tenKH"].ToString();
            string diachikh =  e.NewValues["diachiKH"].ToString();
            string sodienthoaikh = e.NewValues["sodienthoaiKH"].ToString();

            int kq = kn.them("update KhachHang set maKH = '" + makh + "',tenKH='"+tenkh+"',diachiKH='"+diachikh+"',sodienthoaiKH='"+sodienthoaikh+"' where maKH='"+makh+"'");
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
        
        
    }
}