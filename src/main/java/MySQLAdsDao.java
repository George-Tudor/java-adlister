import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;

        public MySQLAdsDao(Config config) {
        try {
                DriverManager.registerDriver(new Driver());
                this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
         // create empty contact array list
            List<Ad> ads = new ArrayList<>();
            // define a select query
            String query = "SELECT * FROM ads";
            try {
                // create a statement object
                Statement statement = connection.createStatement();
                // executeQuery
                ResultSet rs = statement.executeQuery(query);
                // iterate over result set to create contact objects and store in arraylist
                while(rs.next()) {
                    Ad ad = new Ad(
                            rs.getLong("id"),
                            rs.getLong("user_Id"),
                            rs.getString("title"),
                            rs.getString("description")
                    );
                    ads.add(ad);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            // return the array list of contact objects
            return ads;
        }


    @Override
    public Long insert(Ad ad) {
        long lastInsertedId = 0L;
//        String insertQuery = String.format("INSERT INTO ads (id, userId, title, description) VALUES (%d, %d, '%s', '%s')",
//                ad.getId(),
//                ad.getUserId(),
//                ad.getTitle(),
//                ad.getDescription()
//        );
        try {
            Statement stmt = connection.createStatement();
            String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES(%d, '%s', '%s')",
                ad.getUserId(), ad.getTitle(), ad.getDescription());
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet generatedKeys = stmt.getGeneratedKeys();
            generatedKeys.next();
            lastInsertedId = generatedKeys.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lastInsertedId;
    }

//    public static void main(String[] args) {
//
//            MySQLAdsDao mySQLAdsDao = new MySQLAdsDao((new Config()));
//            Ad adToInsert = new Ad(
//                1,
//                "Test Insert Ad",
//                "Test Insert Ad Description"
//            );
//            System.out.println(mySQLAdsDao.insert(adToInsert));
//    }

}



