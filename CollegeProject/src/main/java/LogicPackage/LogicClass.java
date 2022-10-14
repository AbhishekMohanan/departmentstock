package LogicPackage;
import java.sql.*;

import BeanPackage.BeanClass;
import BeanPackage.MoreBeanClass;
import Connection.ConnectionClass;
public class LogicClass {
	
	PreparedStatement preparestatement;
    Connection connection;
    ResultSet resultset;
    int result;
	
	private static LogicClass logicClass;
	
	private LogicClass() {
		connection = ConnectionClass.getConnectionMysql();

}
	
	public static LogicClass getObjLazyMethod() {
		if (logicClass == null) {
			logicClass = new LogicClass();	
		}
		return logicClass;	
	}
	
	
    public int registerRecords(MoreBeanClass moreBeanClass) {
        try {
            preparestatement = connection.prepareStatement("update moreDetails set degree = ?,syear = ?, branch = ?,registernumber = ?, gender = ?, dob = ?, fatherName = ?, fatherWork = ?, fatherMobile = ?, motherName = ?, motherWork = ?, motherMobile = ?, houseName = ?, landMark = ?, city = ?,district = ?, state = ?, country = ?, pincode = ? where studentId = ?" );  	
        	preparestatement.setInt(20, moreBeanClass.getStudentId()); 
            preparestatement.setString(1, moreBeanClass.getDegree());
            preparestatement.setString(2, moreBeanClass.getCurentYear());
            preparestatement.setString(3, moreBeanClass.getBranch());
            preparestatement.setString(4, moreBeanClass.getRegistrationNumber());
            preparestatement.setString(5, moreBeanClass.getGender());
            preparestatement.setString(6, moreBeanClass.getDateofBirth());
            preparestatement.setString(7, moreBeanClass.getFatherName());
            preparestatement.setString(8, moreBeanClass.getFatherMobile());
            preparestatement.setString(9, moreBeanClass.getFatherWork());
            preparestatement.setString(10, moreBeanClass.getMotherName());
            preparestatement.setString(11, moreBeanClass.getFatherMobile());
            preparestatement.setString(12, moreBeanClass.getMotherWork());
            preparestatement.setString(13, moreBeanClass.getHouseName());
            preparestatement.setString(14, moreBeanClass.getLandMark());
            preparestatement.setString(15, moreBeanClass.getCity());
            preparestatement.setString(16, moreBeanClass.getDistrict());
            preparestatement.setString(17, moreBeanClass.getState());
            preparestatement.setString(18, moreBeanClass.getCountry());
            preparestatement.setString(19, moreBeanClass.getPincode());
            
            result = preparestatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return result;
    }

    public int deleteRecords(BeanClass signupuser) {
        try {
            preparestatement = connection.prepareStatement("delete from signup where studentId = ?");
            preparestatement.setInt(1, signupuser.getStudentId());

            result = preparestatement.executeUpdate();
           

            
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return result;
    }
    
    
    public int updateRecords(BeanClass signupuser) {
        try {
           
            preparestatement = connection.prepareStatement("update signup set studentname = ?,spassword = ?, spassword2 = ?,email = ?, mobile = ? where studentId = ?" );

            preparestatement.setString(1, signupuser.getStudentName());
            preparestatement.setString(2, signupuser.getStudentPassword());
            preparestatement.setString(3, signupuser.getConfirmPassword());
            preparestatement.setString(4, signupuser.getEmail());
            preparestatement.setString(5, signupuser.getMobile());
            preparestatement.setInt(6, signupuser.getStudentId());
            
            result = preparestatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return result;
    }
    
    
    public boolean loginPage(BeanClass signUpUser) {
        boolean b = false;
        try {
            preparestatement = connection.prepareStatement("Select * from signup where studentId = ? and spassword = ?");
            preparestatement.setInt(1, signUpUser.getStudentId());
            preparestatement.setString(2, signUpUser.getStudentPassword());
            resultset = preparestatement.executeQuery();
            if (resultset.next()) {
                b = true;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return b;
 
    }
    
    
    public ResultSet viewupdate(int studentid) {
        try {
            preparestatement = connection.prepareStatement("select * from signup where studentId = ?");
            preparestatement.setInt(1, studentid);
            
            resultset = preparestatement.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return resultset;
    }
    

	

}

