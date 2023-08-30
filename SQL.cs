using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

//
namespace EliteHangers
{
    public class SQL
    {
        //global variable declarations
        private string connection_string;
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader dataReader;
        private string query;
        private List<SqlParameter> parameters;

        //testing change
        // Constructor
        public SQL()
        {
            SQLConnectionString cs = new SQLConnectionString();
            connection_string = cs.connection_string;

            //connection
            connection = new SqlConnection(connection_string);
        }
        public void connectionOpen()
        {
            if (connection.State == ConnectionState.Closed)
            {
                //open it 
                connection.Open();
            }
        }
        public void connectionClose()
        {
            if (connection != null && connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }
        //non query
        public void nonQuery(string sql)
        {
            try
            {
                //database connection 
                connectionOpen();
                command = new SqlCommand(query, connection);
                //adding the parameters to the command
                foreach (SqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }
                command.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                //ensuring the connection is closed
                connectionClose();
            }
        }
        //must check if user email exists
        public void addCustomer(string name, string surname, string email, string password, string plane_number)
        {
            query = "INSERT INTO Customer (name, surname, email, password, plane_number)VALUES (@name, @surname, @email, @password, @plane_number)";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@surname", SqlDbType.NVarChar) { Value = surname },
                new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                new SqlParameter("@plane_number", SqlDbType.NVarChar) { Value = plane_number},
            };
            nonQuery(query);
        }
        // Check if email already exists -> Both Customer and employee table
        public bool doesTheEmailAlreadyExist(string email)
        {
            return false;
        }
        //update customer - gets ID from session
        public void updateCustomer(int customer_id, string name, string surname, string email, string password, string plane_number)
        {
            query = $"UPDATE Customer SET name = @name, surname = @surname, email = @email, password = @password, plane_number = @plane_number WHERE customer_id = @customer_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@surname", SqlDbType.NVarChar) { Value = surname },
                new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                new SqlParameter("@plane_number", SqlDbType.NVarChar) { Value = plane_number},
                new SqlParameter("@customer_id", SqlDbType.Int) { Value = customer_id }
            };
            nonQuery(query);
        }
        //delete customer
        public void deleteCustomer(int id)
        {
            query = "DELETE FROM Customer WHERE customer_id = @customer_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@customer_id", SqlDbType.Int) { Value = id }
            };
            nonQuery(query);
        }
        //login a user
        public UserAuth authenticate(string email, string password)
        {
            //return true if successfull
            query =
            "SELECT customer_id, name, surname, email, password, NULL as role " +
            "FROM Customer WHERE email = @email AND password = @password " +
            "UNION ALL " +
            "SELECT employee_id, name, surname, email, password, role  " +
            "FROM Employee WHERE email = @email AND password = @password;";
            //create the session for the user if there is a match
            try
            {
                int id = 0, role = 3;
                string name = "", surname = "";

                string passwordDB="";
                string emailDB="";

                connectionOpen();
                command = new SqlCommand(query, connection);
                parameters = new List<SqlParameter>
                {
                    new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                    new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                };

                foreach (SqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }

                dataReader = command.ExecuteReader();

                if(dataReader.Read())
                {
                    passwordDB = dataReader.GetValue(4).ToString();
                    emailDB = dataReader.GetValue(3).ToString();

                    if(passwordDB == password && emailDB == email)
                    {
                        role = 1; //customer
                    }
                    name = dataReader.GetValue(1).ToString();
                    surname = dataReader.GetValue(2).ToString();
                    id = dataReader.GetInt32(0);

                    if (dataReader.GetValue(5) != null) //they are a customer
                    {
                        role = dataReader.GetInt32(5); //if false employee else true -> manager
                    }

                    UserAuth obj = new UserAuth(role, name, surname, id);
                    return obj;
                }

            }
            catch (Exception  ex)
            {
                
            }
            finally
            {
                connectionClose();
            }
            return null;

        }
        
    }
}