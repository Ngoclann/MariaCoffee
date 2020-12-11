/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import context.DBContext;
import entity.Introduction;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ngọc Lan
 */
public class IntroductionDAO {
    
     public Introduction getIntroduction() throws Exception {
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "select * from Intro";
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Introduction introduction = new Introduction(rs.getString("title"), 
                        rs.getString("picture"), 
                        rs.getString("shortDescription"), 
                        rs.getString("detailDescription"));
                return introduction;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            DBContext.closeConnection(rs, ps, connection);
        }
        return null;
     }
    
}
