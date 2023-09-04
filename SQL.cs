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
        private DataSet ds;
        private SqlDataAdapter dataAdapter;
        private string query;
        private List<SqlParameter> parameters;
        public UserAuth obj;

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
            catch (Exception)
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
            int id = 0;
            int role = 3;
            string name = "";
            string surname = "";

            string passwordDB = "";
            string emailDB = "";
            //return true if successfull
            query =
            "SELECT customer_id, name, surname, email, password, NULL as role " +
            "FROM Customer WHERE email = @email AND password = @password " +
            "UNION ALL " +
            "SELECT employee_id, name, surname, email, password, role " +
            "FROM Employee WHERE email = @email AND password = @password; ";

            try
            {
                //add the parameters
                parameters = new List<SqlParameter>
                {
                    new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                    new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                };

                connectionOpen();

                command = new SqlCommand(query, connection);

                foreach (SqlParameter parameter in parameters)
                {
                    command.Parameters.Add(parameter);
                }
                dataReader = command.ExecuteReader();

                if (dataReader.Read())
                {
                    passwordDB = dataReader.GetValue(4).ToString();
                    emailDB = dataReader.GetValue(3).ToString();

                    if (passwordDB == password && emailDB == email)
                    {
                        //match
                        id = int.Parse(dataReader.GetValue(0).ToString());
                        if (dataReader.GetValue(5) != null)
                        {
                            role = int.Parse(dataReader.GetValue(5).ToString());
                        }
                        obj = new UserAuth(role, name, surname, id);

                    }



                }

            }
            finally
            {
                connectionClose();
            }
            return obj;



        }

        public void comboBox(string query,string table, string column, DropDownList combo, string columValue)
        {
            connectionOpen();



            command = new SqlCommand(query, connection);

            ds = new DataSet();
            dataAdapter = new SqlDataAdapter();

            dataAdapter.SelectCommand = command;
            dataAdapter.Fill(ds, table);

            DataRow blankRow = ds.Tables[table].NewRow();
            blankRow[column] = ""; // Display an empty string for the blank item
            ds.Tables[table].Rows.InsertAt(blankRow, 0);

            combo.DataSource = ds.Tables[table];

            combo.DataMember = column;
            combo.DataTextField = column;
            combo.DataValueField = columValue;
            combo.DataBind();

            connectionClose();
        }

        public void display(string table, GridView datagrid)
        {
            connectionOpen();

            query = $"SELECT * from {table} ";

            command = new SqlCommand(query, connection);

            ds = new DataSet();
            dataAdapter = new SqlDataAdapter();

            dataAdapter.SelectCommand = command;
            dataAdapter.Fill(ds, table);

            datagrid.DataSource = ds;

            datagrid.DataMember = table;

            datagrid.DataBind();
            connectionClose();

        }

        public void insertHanger(int city_id , string name, decimal price)
        {
            query = "INSERT INTO Hangar (city_id, name, price)VALUES (@city_id, @name, @price)";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {          
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@price", SqlDbType.Money) { Value = price },
                new SqlParameter("@city_id", SqlDbType.Int) { Value = city_id }

            };
            nonQuery(query);
        }


        public void deleteHanger(int hangar_id)
        {
            query = "DELETE FROM Hangar WHERE Hangar_id = @hangar_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@hangar_id", SqlDbType.Int) { Value = hangar_id }
            };
            nonQuery(query);
        }

        public void updateHanger(int hangar_id,int city_id, string name, decimal price)
        {
            query = $"UPDATE Hangar SET city_id = @city_id, name = @name, price = @price WHERE hangar_id = @hanger_id";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@city_id", SqlDbType.Int) { Value = city_id },
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@price", SqlDbType.Money) { Value = price },
                new SqlParameter("@hanger_id", SqlDbType.Int) { Value = hangar_id }
               
            };
            nonQuery(query);

        }

        public void deleteCity(int city_id)
        {
            query = "DELETE FROM City WHERE city_id = @city_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@city_id", SqlDbType.Int) { Value =  city_id}
            };
            nonQuery(query);
        }

        public void insertCity( string name)
        {
            query = "INSERT INTO City (name)VALUES (@name)";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name }
             
            };
            nonQuery(query);
        }


        public void updateCity(int city_id,string name)
        {
            query = $"UPDATE City SET name = @name WHERE city_id= @city_id";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@city_id", SqlDbType.NVarChar) { Value = city_id }

            };
            nonQuery(query);

        }

        public void insertEmployee(string name, string surname,string email, string password,int role)
        {
            query = "INSERT INTO Employee (name, surname, email, password, role)VALUES (@name, @surname, @email, @password, @role)";
            //put the parameters in a list
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@surname", SqlDbType.NVarChar) { Value = surname },
                new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                new SqlParameter("@role", SqlDbType.Int) { Value = role},
            };
            nonQuery(query);
        }


        public void deleteEmployee(int emp_id)
        {
            query = "DELETE FROM Employee WHERE employee_id = @employee_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@employee_id", SqlDbType.Int) { Value = emp_id }
            };
            nonQuery(query);
        }


        public void updateEmployee(int emp_id, string name, string surname, string email, string password, int role)
        {
            query = $"UPDATE Employee SET name = @name, surname = @surname, email = @email, password = @password, role = @role WHERE employee_id = @employee_id";
            parameters = new List<SqlParameter>
            {
                new SqlParameter("@name", SqlDbType.NVarChar) { Value = name },
                new SqlParameter("@surname", SqlDbType.NVarChar) { Value = surname },
                new SqlParameter("@email", SqlDbType.NVarChar) { Value = email },
                new SqlParameter("@password", SqlDbType.NVarChar) { Value = password },
                new SqlParameter("@role", SqlDbType.Int) { Value = role},
                new SqlParameter("@employee_id", SqlDbType.Int) { Value = emp_id},
            };
            nonQuery(query);
        }

        //getting the dates start and end and then putting them into a list of dates.
        public List<DateTime> databaseDates(string query)
        {
            List<DateTime> dateList = new List<DateTime>();

            try
            {

                connectionOpen();
                command = new SqlCommand(query, connection);
                dataReader = command.ExecuteReader();

                while (dataReader.Read())
                {
                    //put the dates in the list
                    dateList.Add(dataReader.GetDateTime(0));
                    dateList.Add(dataReader.GetDateTime(1));
                }

                foreach (DateTime parameter in dateList)
                {
                    Console.WriteLine(parameter.ToString());
                }

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connectionClose();
            }

            return dateList;
        }

        public string nextBooking(string query)
        {
            string date = "";

            try
            {
                connectionOpen();

                command = new SqlCommand(query, connection);

                dataReader = command.ExecuteReader();

                if (dataReader.Read())
                {
                    //put the dates in the list
                    date = dataReader.GetDateTime(0).ToString();
                }
                else
                {

                }


            }
            catch (System.Data.SqlTypes.SqlNullValueException)
            {
                //data is null return ""
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connectionClose();
            }

            return date;
        }

        public void insertBooking(int customer_id, int hangar_id, DateTime date_start, DateTime date_end)
        {
            try
            {
                query = "INSERT INTO Booking (customer_id, hangar_id, date_start, date_end, status) VALUES (@customer_id, @hangar_id, @date_start, @date_end, @status)";
                //put the parameters in a list
                parameters = new List<SqlParameter>
                {
                    new SqlParameter("@customer_id", SqlDbType.NVarChar) { Value = customer_id},
                    new SqlParameter("@hangar_id", SqlDbType.NVarChar) { Value = hangar_id },
                    new SqlParameter("@date_start", SqlDbType.NVarChar) { Value = date_start },
                    new SqlParameter("@date_end", SqlDbType.NVarChar) { Value = date_end },
                    new SqlParameter("@status", SqlDbType.Int) { Value = 1},
                };
                nonQuery(query);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connectionClose();
            }
        }

    }
}