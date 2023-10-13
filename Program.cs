using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace TASK_8
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "Server=cmdlhrdb01;Database=5055_DB;Trusted_Connection=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 1. Execute Stored Procedure to Get All Employees
                using ( SqlCommand command = new SqlCommand("ListStudents", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Console.WriteLine($"ID: {reader["StudentID"]}, FirstName: {reader["FirstName"]},LastName: {reader["LastName"]}, Age: {reader["Age"]}, CourseID: {reader["CourseID"]}");
                     }
                    connection.Close();
                }

                // 2. Execute Stored Procedure to Add an Employee
                using (SqlCommand command = new SqlCommand("AddStudent", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@pa_FirstName", "Hamza");
                    command.Parameters.AddWithValue("@pa_LastName", "Khan");
                    command.Parameters.AddWithValue("@pa_Age", 30);
                    command.Parameters.AddWithValue("@pa_CourseID", 1);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }

                // 3. Execute Stored Procedure to Update an Employee's Age
                using (SqlCommand command = new SqlCommand("UpdateStudent", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@pa_NewAge", 41);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }

                // 4. Execute Stored Procedure to Delete an Employee
                using (SqlCommand command = new SqlCommand("DeleteStudent", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@ID", 1);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }
    }
}
