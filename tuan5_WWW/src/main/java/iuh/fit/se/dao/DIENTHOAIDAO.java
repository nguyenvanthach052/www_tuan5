package iuh.fit.se.dao;

import iuh.fit.se.entities.DIENTHOAI;

import java.sql.SQLException;
import java.util.List;

public interface DIENTHOAIDAO {
    public List<DIENTHOAI> getAllPhone() throws SQLException;
}
