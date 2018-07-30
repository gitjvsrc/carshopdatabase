package ua.jvdevpro.smlnk;

import java.sql.*;

public class Runner {

    public static void main(String[] args) throws IllegalAccessException, InstantiationException {

        Statement stmt; // для хранения и исполнения SQL-запросов;
        ResultSet res; // для получения результатов SQL-запросов;


        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance(); // динамическая регистрация драйвера MySQL;

            // создание подключения к БД по указаному url;

            String url = "jdbc:mysql://localhost:3306/carshoptest?serverTimezone=UTC";
            String USER = "usrtest";
            String PASSWORD = "usrtest123321";

            try {
                // хранит соединение с БД;
                Connection connection = DriverManager.getConnection(url, USER, PASSWORD);

                // подготовка SQL-запроса;
                String sql = "SELECT car_type, car_year, car_price FROM Car WHERE car_year>2005 order by car_year desc";
                stmt = connection.createStatement();

                // выполнение SQL-запроса;
                res = stmt.executeQuery(sql);

                // обработка результата выборки;
                while (res.next()) {
                    System.out.println(res.getString("car_price") + " - " + res.getObject("car_year"));
                }
                connection.close(); // закрытие соединения с БД;

            } catch (SQLException e) {
                System.out.println("Disable to load database.");
                e.printStackTrace();
            }

        } catch (ClassNotFoundException e) {
            System.out.println("Disable to load class.");
            e.printStackTrace();
        }
    }
}
