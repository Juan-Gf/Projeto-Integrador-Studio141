/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tiago.bscarton
 */
public class ConexaoDB {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection getConexao() throws SQLException {
        String dbURL = "jdbc:mysql://uqooyrojat3oywrf:dUuVU9qOYYkt5ZEqJfwr@by56zwxzttzfu7unltz8-mysql.services.clever-cloud.com:3306/by56zwxzttzfu7unltz8?useSSL=false";                   
        //jdbc:mysql://mystudio141.c7etqmlh3mnt.us-east-1.rds.amazonaws.com:3306/?user=root
        //"jdbc:mysql://mystudio141.c7etqmlh3mnt.us-east-1.rds.amazonaws.com:3306/studio141?useSSL=false" // arthur
        //"jdbc:mysql://mystudio141.c7etqmlh3mnt.us-east-1.rds.amazonaws.com:3306/studio141?useTimezone=true&serverTimezone=UTC"
        //jdbc:mysql://mystudio141.c7etqmlh3mnt.us-east-1.rds.amazonaws.com:3306/studio141?zeroDateTimeBehavior=CONVERT_TO_NULL
        String user = "uqooyrojat3oywrf";
        String password = "dUuVU9qOYYkt5ZEqJfwr";

        return DriverManager.getConnection(dbURL, user, password);
    }
}

