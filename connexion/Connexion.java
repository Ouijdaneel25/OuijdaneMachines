package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

    private static String login = "qmcdzpctqdiweq";
    private static String password = "ad2aa790656390d317dd2c3fd296ffcbf711d786d3b8ce1d93108c023608c000";
    private static String url = "jdbc:mysql://ec2-3-222-49-168.compute-1.amazonaws.com/dcifuoonpgeinc?sslmode=require";
    private Connection connection = null;
    private static Connexion instane;

    private Connexion() {
       try {
					Class.forName("org.postgresql.Driver").newInstance();
				} catch (InstantiationException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IllegalAccessException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
    }

    public Connection getConnection() {
        return connection;
    }

    public static Connexion getInstane() {
        if (instane == null) {
            instane = new Connexion();
        }
        return instane;
    }

}
