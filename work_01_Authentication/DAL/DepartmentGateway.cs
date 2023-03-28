using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace work_01_Authentication
{
    public class DepartmentGateway
    {
        SqlConnection con = new SqlConnection(Connection.GetConnectionString());
        public IQueryable<Department> Get()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Department", con);
            sda.Fill(dt);
            return dt.AsEnumerable().Select(r => new Department
            {
                DepartmentId = r.Field<int>("DepartmentId"),
                DepartmentName = r.Field<string>("DepartmentName")
            }).AsQueryable();
        }
        public void Insert(Department d)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Department VALUES(@n)", con);
            cmd.Parameters.AddWithValue("@n", d.DepartmentName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Update(Department d)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Category SET deptName=@n WHERE id = @i", con);
            cmd.Parameters.AddWithValue("@n", d.DepartmentName);
            cmd.Parameters.AddWithValue("@i", d.DepartmentId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Delete(Department d)
        {
            SqlCommand cmd = new SqlCommand("DELETE from Department WHERE id=@i", con);
            cmd.Parameters.AddWithValue("@i", d.DepartmentId);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}