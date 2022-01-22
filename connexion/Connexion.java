package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

    private Connection connection = null;
	private static Connexion instane;

	private Connexion() {

	}

	public Connection getConnection() {
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

		String username = "qmcdzpctqdiweq";
		String password = "ad2aa790656390d317dd2c3fd296ffcbf711d786d3b8ce1d93108c023608c000";
		String dbUrl = "jdbc:postgresql://" + "ec2-3-222-49-168.compute-1.amazonaws.com:5432"
				+ "/dcifuoonpgeinc?sslmode=require";
		try {
			return DriverManager.getConnection(dbUrl, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}

	public static Connexion getInstane() {
		if (instane == null) {
			instane = new Connexion();
		}
		return instane;
	}

}
