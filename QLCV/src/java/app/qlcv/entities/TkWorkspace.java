package app.qlcv.entities;
// Generated Feb 20, 2021 4:59:14 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TkWorkspace generated by hbm2java
 */
public class TkWorkspace  implements java.io.Serializable {


     private int id;
     private Date createDate;
     private Date lastUpdateDate;
     private String createBy;
     private String lastUpdateBy;
     private String isPrivate;
     private String isIndividual;
     private String workspaceName;
     private String owner;
     private byte[] avatar;
     private String description;
     private String status;
     private Date startDate;
     private Date endDate;
     private int departmentId;
     private Long tienKhoan;
     private Long etcAmount;
     private Date etcDate;
     private Set tkWsPeoples = new HashSet(0);
     private Set tkWsTeamses = new HashSet(0);
     private Set tkWsTasklists = new HashSet(0);

    public TkWorkspace() {
    }

	
    public TkWorkspace(int id) {
        this.id = id;
    }
    public TkWorkspace(int id, Date createDate, Date lastUpdateDate, String createBy, String lastUpdateBy, String isPrivate, String isIndividual, String workspaceName, String owner, byte[] avatar, String description, String status, Set tkWsPeoples, Set tkWsTeamses, Set tkWsTasklists) {
       this.id = id;
       this.createDate = createDate;
       this.lastUpdateDate = lastUpdateDate;
       this.createBy = createBy;
       this.lastUpdateBy = lastUpdateBy;
       this.isPrivate = isPrivate;
       this.isIndividual = isIndividual;
       this.workspaceName = workspaceName;
       this.owner = owner;
       this.avatar = avatar;
       this.description = description;
       this.status = status;
       this.tkWsPeoples = tkWsPeoples;
       this.tkWsTeamses = tkWsTeamses;
       this.tkWsTasklists = tkWsTasklists;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
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
    public String getIsPrivate() {
        return this.isPrivate;
    }
    
    public void setIsPrivate(String isPrivate) {
        this.isPrivate = isPrivate;
    }
    public String getIsIndividual() {
        return this.isIndividual;
    }
    
    public void setIsIndividual(String isIndividual) {
        this.isIndividual = isIndividual;
    }
    public String getWorkspaceName() {
        return this.workspaceName;
    }
    
    public void setWorkspaceName(String workspaceName) {
        this.workspaceName = workspaceName;
    }
    public String getOwner() {
        return this.owner;
    }
    
    public void setOwner(String owner) {
        this.owner = owner;
    }
    public byte[] getAvatar() {
        return this.avatar;
    }
    
    public void setAvatar(byte[] avatar) {
        this.avatar = avatar;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Set getTkWsPeoples() {
        return this.tkWsPeoples;
    }
    
    public void setTkWsPeoples(Set tkWsPeoples) {
        this.tkWsPeoples = tkWsPeoples;
    }
    public Set getTkWsTeamses() {
        return this.tkWsTeamses;
    }
    
    public void setTkWsTeamses(Set tkWsTeamses) {
        this.tkWsTeamses = tkWsTeamses;
    }
    public Set getTkWsTasklists() {
        return this.tkWsTasklists;
    }
    
    public void setTkWsTasklists(Set tkWsTasklists) {
        this.tkWsTasklists = tkWsTasklists;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public Long getTienKhoan() {
        return tienKhoan;
    }

    public void setTienKhoan(Long tienKhoan) {
        this.tienKhoan = tienKhoan;
    }

    public Long getEtcAmount() {
        return etcAmount;
    }

    public void setEtcAmount(Long etcAmount) {
        this.etcAmount = etcAmount;
    }

    public Date getEtcDate() {
        return etcDate;
    }

    public void setEtcDate(Date etcDate) {
        this.etcDate = etcDate;
    }

    



}

