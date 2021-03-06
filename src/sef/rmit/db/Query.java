/*
 * @author:
 */

package sef.rmit.db;

/*
 * 
 * @contains: All the query to insert, Update or Get data from the database tables 
 */
import sef.rmit.util.ConnectionData;

public class Query 
{
	public static final String GET_USER = "SELECT "
			+ "USERNAME, "
			+ "PASSWORD, "
			+ "GIVENNAME, "
			+ "FAMILYNAME, "
			+ "ROLE, "
			+ "EMAIL, "
			+ "CREATED_USER, "
			+ "CREATED_DATE, "
			+ "LAST_MODIFIED_USER, "
			+ "LAST_MODIFIED_DATE FROM "+ConnectionData.DB_USERNAME.getValue()+".USERS ";
	
	public static final String GET_LOGIN_DETAILS_USER = "SELECT "
			+ "USERNAME, "
			+ "PASSWORD FROM "+ConnectionData.DB_USERNAME.getValue()+".USERS ";
	
	public static final String INSERT_USER = "INSERT INTO "
			+ ConnectionData.DB_USERNAME.getValue()+""
			+ ".USERS (USERNAME, "
			+ "PASSWORD, "
			+ "GIVENNAME, "
			+ "FAMILYNAME, "
			+ "CREATED_USER, "
			+ "CREATED_DATE , "
			+ "LAST_MODIFIED_USER, "
			+ "LAST_MODIFIED_DATE, "
			+ "EMAIL, "
			+ "ROLE) VALUES( ";
	
	public static final String UPDATE_USER = "UPDATE "+ConnectionData.DB_USERNAME.getValue()+".USERS "
			+ "SET ";
	
	public static final String GET_ADMIN_GRID ="SELECT "
			+ "ADMIN_GRID_ID, "
			+ "GRID_ID, "
			+ "STATUS, "
			+ "SIMULATION_TIME, "
			+ "GRID_NAME, "
			+ "ROAD1_SIDE1, "
			+ "ROAD1_SIDE2, "
			+ "ROAD2_SIDE1, "
			+ "ROAD2_SIDE2, "
			+ "ROAD3_SIDE1, "
			+ "ROAD3_SIDE2, "
			+ "ROAD4_SIDE1, "
			+ "ROAD4_SIDE2, "
			+ "ROAD5_SIDE1, "
			+ "ROAD5_SIDE2, "
			+ "ROAD6_SIDE1, "
			+ "ROAD6_SIDE2, "
			+ "CREATED_USER, "
			+ "CREATED_DATE, "
			+ "LAST_MODIFIED_USER, "
			+ "LAST_MODIFIED_DATE FROM "+ConnectionData.DB_USERNAME.getValue()+".ADMIN_GRID ";
	
	public static final String GET_ADMIN_GRID_DATA = "SELECT "
			+ "ADMIN.ADMIN_GRID_ID,"
			+ "ADMIN.GRID_ID,"
			+ "ADMIN.STATUS, "
			+ "ADMIN.SIMULATION_TIME, "
			+ "ADMIN.GRID_NAME, "
			+ "ADMIN.ROAD1_SIDE1, "
			+ "ADMIN.ROAD1_SIDE2, "
			+ "ADMIN.ROAD2_SIDE1, "
			+ "ADMIN.ROAD2_SIDE2, "
			+ "ADMIN.ROAD3_SIDE1, "
			+ "ADMIN.ROAD3_SIDE2, "
			+ "ADMIN.ROAD4_SIDE1, "
			+ "ADMIN.ROAD4_SIDE2, "
			+ "ADMIN.ROAD5_SIDE1, "
			+ "ADMIN.ROAD5_SIDE2, "
			+ "ADMIN.ROAD6_SIDE1, "
			+ "ADMIN.ROAD6_SIDE2, "
			+ "ADMIN.CREATED_USER, "
			+ "ADMIN.CREATED_DATE, "
			+ "ADMIN.LAST_MODIFIED_USER, "
			+ "ADMIN.LAST_MODIFIED_DATE "
			+ "FROM "+ConnectionData.DB_USERNAME.getValue()+".ADMIN_GRID ADMIN ";
	
	public static final String GET_EMAIL_TEMPLATE = "SELECT "
			+ "EMAIL_TEMPLATE, "
			+ "EMAIL_TEMPLATE_ID "
			+ "FROM "+ConnectionData.DB_USERNAME.getValue()+".EMAIL_TEMPLATE ";
	
	public static final String UPDATE_GRID = "UPDATE "+ConnectionData.DB_USERNAME.getValue()+".ADMIN_GRID "
			+ "SET ";
	
	public static final String INSERT_ADMIN_GRID = "INSERT INTO "
			+ConnectionData.DB_USERNAME.getValue()+""
			+".ADMIN_GRID (ADMIN_GRID_ID, "
			+ "GRID_ID, "
			+ "STATUS, "
			+ "SIMULATION_TIME, "
			+ "GRID_NAME, "
			+ "ROAD1_SIDE1, "
			+ "ROAD1_SIDE2, "
			+ "ROAD2_SIDE1, "
			+ "ROAD2_SIDE2, "
			+ "ROAD3_SIDE1, "
			+ "ROAD3_SIDE2, "
			+ "ROAD4_SIDE1, "
			+ "ROAD4_SIDE2, "
			+ "ROAD5_SIDE1, "
			+ "ROAD5_SIDE2, "
			+ "ROAD6_SIDE1, "
			+ "ROAD6_SIDE2, "
			+ "CREATED_USER, "
			+ "CREATED_DATE, "
			+ "LAST_MODIFIED_USER, "
			+ "LAST_MODIFIED_DATE) VALUES("+ConnectionData.DB_USERNAME.getValue()+".SEQ_GRID.NEXTVAL, ";
	
	public static final String GET_GRAPHS = "SELECT "
			+ "GRAP.ADMIN_GRID_ID, "
			+ "GRAP.CREATED_USER, "
			+ "GRAP.CREATED_DATE, "
			+ "GRAP.LAST_MODIFIED_USER, "
			+ "GRAP.LAST_MODIFIED_DATE, "
			+ "(SELECT COUNT(ADMIN_GRID_ID) FROM "+ConnectionData.DB_USERNAME.getValue()+".GRAPH "
			+ "WHERE CREATED_USER = GRAP.CREATED_USER) AS USER_COUNT "
			+ "FROM "+ConnectionData.DB_USERNAME.getValue()+".GRAPH GRAP";
	
	public static final String GET_GRAPH_COUNT = "SELECT "
			+ "COUNT(ADMIN_GRID_ID) AS COUNT "
			+ "FROM "+ConnectionData.DB_USERNAME.getValue()+".GRAPH ";	
	
	public static final String GET_GRAPH = "SELECT "
			+ "GRAP.GRAPH_ID, "
			+ "GRAP.ADMIN_GRID_ID, "
			+ "ADMIN.GRID_NAME, "
			+ "GRAP.CREATED_USER, "
			+ "GRAP.CREATED_DATE, "
			+ "GRAP.LAST_MODIFIED_USER, "
			+ "GRAP.LAST_MODIFIED_DATE,"
			+ "GRAP.LIGHT1_TIME, "
			+ "GRAP.LIGHT2_TIME, "
			+ "GRAP.LIGHT3_TIME, "
			+ "GRAP.LIGHT4_TIME, "
			+ "GRAP.LIGHT5_TIME, "
			+ "GRAP.LIGHT6_TIME, "
			+ "GRAP.LIGHT7_TIME, "
			+ "GRAP.LIGHT8_TIME, "
			+ "GRAP.LIGHT9_TIME, "
			+ "GRAP.LIGHT10_TIME, "
			+ "GRAP.LIGHT11_TIME, "
			+ "GRAP.LIGHT12_TIME, "
			+ "GRAP.LIGHT13_TIME, "
			+ "GRAP.LIGHT14_TIME, "
			+ "GRAP.LIGHT15_TIME, "
			+ "GRAP.LIGHT16_TIME, "
			+ "GRAP.LIGHT17_TIME, "
			+ "GRAP.LIGHT18_TIME, "
			+ "GRAP.ROAD1_SIDE1_CARS, "
			+ "GRAP.ROAD1_SIDE2_CARS, "
			+ "GRAP.ROAD2_SIDE1_CARS, "
			+ "GRAP.ROAD2_SIDE2_CARS, "
			+ "GRAP.ROAD3_SIDE1_CARS, "
			+ "GRAP.ROAD3_SIDE2_CARS, "
			+ "GRAP.ROAD4_SIDE1_CARS, "
			+ "GRAP.ROAD4_SIDE2_CARS, "
			+ "GRAP.ROAD5_SIDE1_CARS, "
			+ "GRAP.ROAD5_SIDE2_CARS, "
			+ "GRAP.ROAD6_SIDE1_CARS, "
			+ "GRAP.ROAD6_SIDE2_CARS FROM "+ConnectionData.DB_USERNAME.getValue()+".GRAPH GRAP "
			+ "INNER JOIN "+ConnectionData.DB_USERNAME.getValue()+".ADMIN_GRID ADMIN ON GRAP.ADMIN_GRID_ID = ADMIN.ADMIN_GRID_ID ";
	
	public static final String INSERT_GRAPH ="INSERT INTO "
			+ConnectionData.DB_USERNAME.getValue()+".GRAPH "
			+ "(GRAPH_ID, "
			+ "ADMIN_GRID_ID, "
			+ "CREATED_USER, "
			+ "CREATED_DATE, "
			+ "LAST_MODIFIED_USER, "
			+ "LAST_MODIFIED_DATE,"
			+ "LIGHT1_TIME, "
			+ "LIGHT2_TIME, "
			+ "LIGHT3_TIME, "
			+ "LIGHT4_TIME, "
			+ "LIGHT5_TIME, "
			+ "LIGHT6_TIME, "
			+ "LIGHT7_TIME, "
			+ "LIGHT8_TIME, "
			+ "LIGHT9_TIME, "
			+ "LIGHT10_TIME, "
			+ "LIGHT11_TIME, "
			+ "LIGHT12_TIME, "
			+ "LIGHT13_TIME, "
			+ "LIGHT14_TIME, "
			+ "LIGHT15_TIME, "
			+ "LIGHT16_TIME, "
			+ "LIGHT17_TIME, "
			+ "LIGHT18_TIME, "
			+ "ROAD1_SIDE1_CARS, "
			+ "ROAD1_SIDE2_CARS, "
			+ "ROAD2_SIDE1_CARS, "
			+ "ROAD2_SIDE2_CARS, "
			+ "ROAD3_SIDE1_CARS, "
			+ "ROAD3_SIDE2_CARS, "
			+ "ROAD4_SIDE1_CARS, "
			+ "ROAD4_SIDE2_CARS, "
			+ "ROAD5_SIDE1_CARS, "
			+ "ROAD5_SIDE2_CARS, "
			+ "ROAD6_SIDE1_CARS, "
			+ "ROAD6_SIDE2_CARS) VALUES ("+ConnectionData.DB_USERNAME.getValue()+".SEQ_GRAPH.NEXTVAL,";
}
