/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ReginaCR
 */
public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/comprasropa";
    String user="root";
    String pass="regina2003";
    public Connection getConnection (){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection(url,user,pass);
        } catch (Exception e){
        }
        return con;
    }
}
