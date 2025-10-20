package iuh.fit.se.entities;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class DIENTHOAI {
    private String maDT;
    private String tenDT;
    private String namSX;
    private String cauHinh;
    private NHACUNGCAP maNCC;
    private String hinhAnh;
}
