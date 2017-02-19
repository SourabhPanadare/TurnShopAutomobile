using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

// NOTE: If you change the class name "Service" here, you must also update the reference to "Service" in Web.config and in the associated .svc file.
public class Service : IService
{
    string conStr = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
    static DataSet dsObj;
    
//Part Details    
    
    public DataSet SelectPartDetails()
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from PART_DETAILS", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            con.Close();
            return ds;
        }

    public void DeletePartDetails(PartDetails partInfo)
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from PART_DETAILS where part_id=@PartID", con);
            cmd.Parameters.AddWithValue("@PartID", partInfo.PartID);
            
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
 
       
 
        public void UpdatePartDetails(PartDetails partInfo)
        {
 
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("update PART_DETAILS set part_name=@PartName,carmodel=@CarModel, cost=@Cost where part_id=@PartID", con);
            cmd.Parameters.AddWithValue("@PartID", partInfo.PartID);
            cmd.Parameters.AddWithValue("@PartName", partInfo.PartName);
            cmd.Parameters.AddWithValue("@CarModel", partInfo.CarModel);
            cmd.Parameters.AddWithValue("@Cost", partInfo.Cost);
            
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void InsertPartDetails(PartDetails partInfo)
        {
              
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into PART_DETAILS (part_name,carmodel,cost) values(@PartName,@CarModel,@Cost)", con);
            
            cmd.Parameters.AddWithValue("@PartName", partInfo.PartName);
            cmd.Parameters.AddWithValue("@CarModel", partInfo.CarModel);
            cmd.Parameters.AddWithValue("@Cost", partInfo.Cost);

            cmd.ExecuteNonQuery();
            con.Close();
    
        }



//Mfg Details    




        public DataSet SelectMfgDetails()
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM MFG_DETAILS M,PART_DETAILS D WHERE M.part_name= D.part_name", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            con.Close();
            return ds;
        }

        public void DeleteMfgDetails(MfgDetails mfgInfo)
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from MFG_DETAILS where mfg_id=@MfgID", con);
            cmd.Parameters.AddWithValue("@MfgID", mfgInfo.MfgID);

            cmd.ExecuteNonQuery();
            con.Close();

        }



        public void UpdateMfgDetails(MfgDetails mfgInfo)
        {

            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("update MFG_DETAILS set org_name=@MfgName,part_name=@PartName, address=@Address,phone=@Phone,email=@Email where mfg_id=@MfgID", con);
            cmd.Parameters.AddWithValue("@MfgID", mfgInfo.MfgID);
            cmd.Parameters.AddWithValue("@MfgName", mfgInfo.OrgName);
            cmd.Parameters.AddWithValue("@PartName", mfgInfo.PartName);
            cmd.Parameters.AddWithValue("@Address", mfgInfo.Address);
            cmd.Parameters.AddWithValue("@Phone", mfgInfo.Phone);
            cmd.Parameters.AddWithValue("@Email", mfgInfo.Email);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void InsertMfgDetails(MfgDetails mfgInfo)
        {

            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into MFG_DETAILS (org_name,part_name,address,phone,email) values(@MfgName,@PartName,@Address,@Phone,@Email)", con);

            cmd.Parameters.AddWithValue("@MfgName", mfgInfo.OrgName);
            cmd.Parameters.AddWithValue("@PartName", mfgInfo.PartName);
            cmd.Parameters.AddWithValue("@Address", mfgInfo.Address);
            cmd.Parameters.AddWithValue("@Phone", mfgInfo.Phone);
            cmd.Parameters.AddWithValue("@Email", mfgInfo.Email);
            cmd.ExecuteNonQuery();
            con.Close();

        }

       
    
    //Single Part

        public DataSet QueryCarPart(string parts)
        {

            SqlConnection con = new SqlConnection(conStr);
               con.Open();
                SqlDataAdapter daObj = new SqlDataAdapter
                        ("SELECT * FROM PART_DETAILS WHERE part_id = '" + parts + "'", con);
                dsObj = new DataSet();
                daObj.Fill(dsObj, "PART_DETAILS");

                return dsObj;
            
           

        }



    //Part Serialization

        public string SerializeCarParts(string parts)
        {
            
                int part_id = int.Parse (dsObj.Tables[0].Rows[0][0].ToString());

                string part_name = dsObj.Tables[0].Rows[0][1].ToString();

                string carmodel = dsObj.Tables[0].Rows[0][2].ToString();

                float cost = float.Parse(dsObj.Tables[0].Rows[0][3].ToString());


                CarPart objModel = new CarPart();
                objModel.PartID = part_id;
                objModel.PartName = part_name;
                objModel.CarModel = carmodel;
                objModel.Cost = cost;


                string xmlFile = "C:\\Users\\Rohini\\Desktop\\ASP.NET Final Project\\Project\\PartDetails_" + part_id + ".xml";
                FileStream objStream = new FileStream(xmlFile, FileMode.Create);


                DataContractSerializer objSerializer = new DataContractSerializer
                    (typeof(CarPart));
                objSerializer.WriteObject(objStream, objModel);
                objStream.Close();
                return "Success";
            }

            
        }

   
