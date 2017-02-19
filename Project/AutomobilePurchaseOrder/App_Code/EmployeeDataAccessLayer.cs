using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Demo
{
    public class EmployeeBasic
    {
        public int ID { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Approved { get; set; }
    }

    public class Employee : EmployeeBasic
    {
        public string Password { get; set; }

        public string Country { get; set; }
        public string Address { get; set; }
        
       
        public string Contact { get; set; }
    }

    public class EmployeeDataAccessLayer
    {
        public static List<EmployeeBasic> GetAllEmployeesBasicDetails()
        {
            List<EmployeeBasic> listEmployees = new List<EmployeeBasic>();

            string CS = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new
                    SqlCommand("Select ID, UserName, Email,Approved from LOGIN_DETAILS", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    EmployeeBasic employeeBasic = new EmployeeBasic();
                    employeeBasic.ID = Convert.ToInt32(rdr["ID"]);
                    employeeBasic.UserName = rdr["UserName"].ToString();
                    employeeBasic.Email = rdr["Email"].ToString();
                    employeeBasic.Approved = rdr["Approved"].ToString();
                    listEmployees.Add(employeeBasic);
                }
            }

            return listEmployees;
        }

        public static Employee GetAllEmployeesFullDetailsById(int ID)
        {
            Employee employee = new Employee();

            string CS = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new
                SqlCommand("Select * from LOGIN_DETAILS where ID = @Id", con);
                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@Id";
                parameter.Value = ID;
                cmd.Parameters.Add(parameter);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    employee.ID = Convert.ToInt32(rdr["ID"]);
                    employee.UserName = rdr["UserName"].ToString();
                    employee.Email = rdr["Email"].ToString();
                    employee.Password = rdr["Password"].ToString();
                    employee.Country = rdr["Country"].ToString();
                   
                    employee.Address = rdr["Address"].ToString();
                    employee.Contact = rdr["Contact"].ToString();
                    
                    employee.Approved= rdr["Approved"].ToString();
                }
            }

            return employee;
        }
    }
}
