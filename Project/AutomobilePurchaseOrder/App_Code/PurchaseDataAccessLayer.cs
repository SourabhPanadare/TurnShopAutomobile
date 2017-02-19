using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Demo
{
    public class PurchaseBasic
    {
        public int part_id { get; set; }
        public string part_name { get; set; }
        public string org_name { get; set; }
    }

    public class Purchase : PurchaseBasic
    {
        public string carmodel { get; set; }
        public int mfg_id { get; set; }
        public string cost { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string email { get; set; }

    }

    public class PurchaseDataAccessLayer
    {
        public static List<PurchaseBasic> GetAllPurchasesBasicDetails()
        {
            List<PurchaseBasic> listPurchases = new List<PurchaseBasic>();

            string CS = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new
                SqlCommand("Select part_id,P.part_name,org_name from PART_DETAILS P,MFG_DETAILS M where P.part_name=M.part_name", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    PurchaseBasic purchaseBasic = new PurchaseBasic();
                    purchaseBasic.part_id = Convert.ToInt32(rdr["part_id"]);
                    purchaseBasic.part_name = rdr["part_name"].ToString();
                    purchaseBasic.org_name = rdr["org_name"].ToString();
                    listPurchases.Add(purchaseBasic);
                }
            }

            return listPurchases;
        }

        public static Purchase GetAllPurchasesFullDetailsById(int part_id)
        {
            Purchase purchase = new Purchase();

            string CS = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new
                SqlCommand("Select * from PART_DETAILS P,MFG_DETAILS M where part_id = @part_id and P.part_name=M.part_name", con);
                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@part_id";
                parameter.Value = part_id;
                cmd.Parameters.Add(parameter);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    purchase.part_id = Convert.ToInt32(rdr["part_id"]);
                    purchase.part_name = rdr["part_name"].ToString();
                    purchase.carmodel = rdr["carmodel"].ToString();
                    purchase.cost = rdr["cost"].ToString();
                    purchase.mfg_id = Convert.ToInt32(rdr["mfg_id"]);
                    purchase.org_name = rdr["org_name"].ToString();
                    purchase.address = rdr["address"].ToString();
                    purchase.phone = rdr["phone"].ToString();
                    purchase.email = rdr["email"].ToString();
                }
            }

            return purchase;
        }
    }
}
