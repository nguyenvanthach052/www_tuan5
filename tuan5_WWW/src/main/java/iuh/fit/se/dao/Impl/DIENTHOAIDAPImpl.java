package iuh.fit.se.dao.Impl;

import iuh.fit.se.dao.DIENTHOAIDAO;
import iuh.fit.se.entities.DIENTHOAI;
import iuh.fit.se.entities.NHACUNGCAP;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DIENTHOAIDAPImpl implements DIENTHOAIDAO {
    private final DataSource datasource;

    public DIENTHOAIDAPImpl(DataSource datasource) {
        this.datasource = datasource;
    }

    @Override
    public List<DIENTHOAI> getAllPhone(){
        String sql = "select * from DIENTHOAI";
        List<DIENTHOAI> list = new ArrayList<DIENTHOAI>();
        try(
            Connection con =this.datasource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
        ){
            while(rs.next()){
                DIENTHOAI d = new DIENTHOAI();
                d.setMaDT(rs.getString(1));
                d.setTenDT(rs.getString(2));
                d.setNamSX(String.valueOf(rs.getString(3)));
                d.setCauHinh(String.valueOf(rs.getString(4)));
                NHACUNGCAP ncc = new NHACUNGCAP();
                ncc.setMaNCC(rs.getString("maNCC"));
                d.setHinhAnh(String.valueOf(rs.getString(6)));
                d.setMaNCC(ncc);
                list.add(d);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


}
