package app.qlcv.customs;
// Generated Mar 28, 2020 3:08:46 PM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * MapTkUserDetail generated by hbm2java
 */
public class MapTkUserDetail {

    private Integer id;
    private int userId;
    private String account;
    private Date createDate;
    private Date lastUpdateDate;
    private String createBy;
    private String lastUpdateBy;
    private String userName;
    private Date userDateOfBirth;
    private boolean userGender;
    private String userPhone;
    private String userAddress;
    private String userDegree;
    private String userJob;
    private String userAvarta;
    private String userOthers;

    public MapTkUserDetail() {
    }

    public MapTkUserDetail(int userId, String account, Date createDate, Date lastUpdateDate, String createBy, String lastUpdateBy, String userName, Date userDateOfBirth, boolean userGender, String userPhone, String userAddress) {
        this.userId = userId;
        this.createDate = createDate;
        this.lastUpdateDate = lastUpdateDate;
        this.createBy = createBy;
        this.lastUpdateBy = lastUpdateBy;
        this.userName = userName;
        this.userDateOfBirth = userDateOfBirth;
        this.userGender = userGender;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
    }

    public MapTkUserDetail(Integer id, int userId, String account, Date createDate, Date lastUpdateDate, String createBy, String lastUpdateBy, String userName, Date userDateOfBirth, boolean userGender, String userPhone, String userAddress, String userDegree, String userJob, String userAvarta, String userOthers) {
        this.id = id;
        this.userId = userId;
        this.account = account;
        this.createDate = createDate;
        this.lastUpdateDate = lastUpdateDate;
        this.createBy = createBy;
        this.lastUpdateBy = lastUpdateBy;
        this.userName = userName;
        this.userDateOfBirth = userDateOfBirth;
        this.userGender = userGender;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userDegree = userDegree;
        this.userJob = userJob;
        this.userAvarta = userAvarta;
        this.userOthers = userOthers;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getLastUpdateDate() {
        return this.lastUpdateDate;
    }

    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }

    public String getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getLastUpdateBy() {
        return this.lastUpdateBy;
    }

    public void setLastUpdateBy(String lastUpdateBy) {
        this.lastUpdateBy = lastUpdateBy;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getUserDateOfBirth() {
        return this.userDateOfBirth;
    }

    public void setUserDateOfBirth(Date userDateOfBirth) {
        this.userDateOfBirth = userDateOfBirth;
    }

    public boolean isUserGender() {
        return this.userGender;
    }

    public void setUserGender(boolean userGender) {
        this.userGender = userGender;
    }

    public String getUserPhone() {
        return this.userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return this.userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserDegree() {
        return this.userDegree;
    }

    public void setUserDegree(String userDegree) {
        this.userDegree = userDegree;
    }

    public String getUserJob() {
        return this.userJob;
    }

    public void setUserJob(String userJob) {
        this.userJob = userJob;
    }

    public String getUserAvarta() {
        return this.userAvarta;
    }

    public void setUserAvarta(String userAvarta) {
        this.userAvarta = userAvarta;
    }

    public String getUserOthers() {
        return this.userOthers;
    }

    public void setUserOthers(String userOthers) {
        this.userOthers = userOthers;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    
}
