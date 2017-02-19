using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;

// NOTE: If you change the interface name "IService" here, you must also update the reference to "IService" in Web.config.
[ServiceContract]
public interface IService
{

   //Part Details
        [OperationContract]
        void InsertPartDetails(PartDetails partInfo);

        [OperationContract]
        DataSet SelectPartDetails();

        [OperationContract]
        void DeletePartDetails(PartDetails partInfo);

        [OperationContract]
        void UpdatePartDetails(PartDetails partInfo);
    
    //Mfg Details


        [OperationContract]
        void InsertMfgDetails(MfgDetails mfgInfo);

        [OperationContract]
        DataSet SelectMfgDetails();

        [OperationContract]
        void DeleteMfgDetails(MfgDetails mfgInfo);

        [OperationContract]
        void UpdateMfgDetails(MfgDetails mfgInfo);


    //Single Part
        [OperationContract]
        
        DataSet QueryCarPart(string parts);



    //Part Serialization
        [OperationContract]
        string SerializeCarParts(string parts);
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    

//Part Details
[DataContract]
    public class PartDetails
    {
        int part_id;
        string part_name;
        string carmodel;
        float cost;
       



        [DataMember]
        public int PartID
        {
            get { return part_id; }
            set { part_id = value; }
        }

        [DataMember]
        public string PartName
        {
            get { return part_name; }
            set { part_name = value; }
        }
        [DataMember]
        public string CarModel
        {
            get { return carmodel; }
            set { carmodel = value; }
        }
        [DataMember]
        public float Cost
        {
            get { return cost; }
            set { cost = value; }
        }
        
    }


//Mfg Details

[DataContract]
    public class MfgDetails
    {
        int mfg_id;
        string org_name;
        string part_name;
        string address;
        string phone;
        string email;




        [DataMember]
        public int MfgID
        {
            get { return mfg_id; }
            set { mfg_id = value; }
        }

        [DataMember]
        public string OrgName
        {
            get { return org_name; }
            set { org_name = value; }
        }
        [DataMember]
        public string PartName
        {
            get { return part_name; }
            set { part_name = value; }
        }
        [DataMember]
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        [DataMember]
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        [DataMember]
        public string Email
        {
            get { return email; }
            set { email = value; }
        }

    }






//Part Serialization
    [DataContract]
    public class CarPart
    {
        [DataMember(Order = 0)]
        public int PartID;
        [DataMember(Order = 1)]
        public string PartName;
        [DataMember(Order = 2)]
        public string CarModel;
        [DataMember(Order = 3)]
        public float Cost;
    }

