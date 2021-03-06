<%-- 
    Document   : nav
    Created on : Feb 14, 2021, 5:37:45 PM
    Author     : sonng
--%>
<%@page import="app.qlcv.entities.SysCodeValue"%>
<%@page import="java.util.Calendar"%>
<%@page import="app.qlcv.entities.TkUser"%>
<%@page import="app.qlcv.workspace.WorkspaceController"%>
<%@page import="app.qlcv.entities.TkWorkspace"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    TkUser userLoginSys = (TkUser) session.getAttribute("user");
    SysCodeValue role = (SysCodeValue) session.getAttribute("role");
%>
<nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light bg-info navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu font-large-1"></i></a></li>
                <li class="nav-item">
                    <a class="navbar-brand" href="#">
                        <img class="brand-logo" alt="" src="<%=session.getAttribute("httpURL")%>app-assets/images/logo/logo.png">
                        <h3 class="brand-text"><%=properties.getProperty("app.home")%></h3>
                    </a>
                </li>
                <li class="nav-item d-md-none">
                    <a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="la la-ellipsis-v"></i></a>
                </li>
            </ul>
        </div>
        <div class="navbar-container content">
            <div class="collapse navbar-collapse" id="navbar-mobile">
                <ul class="nav navbar-nav mr-auto float-left">
                    <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs is-invalidactive" href="#"><i class="ft-menu"></i></a></li>

                </ul>
                <ul class="nav navbar-nav float-right">
                    <li class="dropdown dropdown-user nav-item">
                        <a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                            <span class="mr-1">Xin Ch??o,
                                <span class="user-name text-bold-700"><%=userLoginSys.getFullName()%> (<%=role.getLocalCodeValue()%>)</span>
                            </span>
                            <!--                            <span class="avatar avatar-online">
                                                            <img src="<%=session.getAttribute("httpURL")%>app-assets/images/portrait/small/avatar-s-19.png" alt="avatar"><i></i></span>-->
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="dropdown-divider"></div><a class="dropdown-item" href="UserLogout"><i class="ft-power"></i> ????ng xu???t</a>
                        </div>
                    </li>
                    <li class="dropdown dropdown-language nav-item"><a class="dropdown-toggle nav-link" id="dropdown-flag" href="#" data-toggle="dropdown"
                                                                       aria-haspopup="true" aria-expanded="false"><i class="flag-icon flag-icon-gb"></i><span class="selected-language"></span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-flag"><a class="dropdown-item" href="#"><i class="flag-icon flag-icon-gb"></i> English</a>
                            <a class="dropdown-item" href="#"><i class="flag-icon flag-icon-fr"></i> Ti???ng vi???t</a>
                        </div>
                    </li>


                </ul>
            </div>
            
        </div>

    </div>
</nav>

                        

<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow " data-scroll-to-active="true">

    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <li class="nav-item"><a href="getDataHome"><i class="la la-home"></i><span class="menu-title"><%=properties.getProperty("app.dashboards")%></span></a>
            </li>
            <li class=" nav-item"><a href="#"><i class="la la-bell"></i><span class="menu-title"><%=properties.getProperty("app.notification")%></span></a>
            </li>
<!--            <li class=" nav-item"><a href="#"><i class="la la-windows"></i><span class="menu-title"><%=properties.getProperty("app.department")%></span></a>
                <ul class="menu-content">
                    <li><a class="menu-item" href="#">Qu???n l?? ph??ng ban</a></li>
                    <li><a class="menu-item" href="#">Th??m th??nh vi??n</a></li>
                    <li><a class="menu-item" href="#">X??a th??nh vi??n</a></li>
                    <li><a class="menu-item" href="#">S???a th??nh vi??n</a></li>
                </ul>
            </li>-->
            <li class=" nav-item"><a href="viewWorkspaceAction"><i class="la la-briefcase"></i><span class="menu-title"><%=properties.getProperty("app.workspace")%></span></a></li>
            <li class=" nav-item"><a href="#"><i class="la la-inbox"></i><span class="menu-title">Kho??n v?? ti???n th?????ng</span></a>
                <ul class="menu-content">
                    <%if ("PM".equals(role.getCode()) || "SPM".equals(role.getCode()) || "GD".equals(role.getCode())) {
                    %>
                    <li><a class="menu-item" href="themisPrepareCaculateAction">T??nh kho??n - PM</a></li>
                        <%
                            }
                        %>

                    <li><a class="menu-item" href="themisAction">Kho??n v?? hi???u qu??? CV</a></li>
                    <li><a class="menu-item" href="<%=session.getAttribute("httpURL")%>jsp/bao-cao.jsp">B??o c??o</a></li>
                </ul>
            </li>
            <li class=" nav-item"><a href="viewKpiOfDepartementAction"><i class="la la-star"></i><span class="menu-title"><%=properties.getProperty("app.kpi")%></span></a>
                <ul class="menu-content">
                    <li><a class="menu-item" href="viewKpiOfDepartementAction">KPI</a></li>
                        <% int year = Calendar.getInstance().get(Calendar.YEAR);%>
                        <%if ("PM".equals(role.getCode()) || "SPM".equals(role.getCode()) || "GD".equals(role.getCode())) {
                        %>
                    <li>
                        <a href="getAllStaffKpiAction?kpiYear=<%= year%>">QU???N L?? KPI NH??N VI??N</a>
                    </li>
                    <%
                        }
                    %>



                    <li>
                        <a type="button" href="kpiUserAction?userId=0&&kpiYear=<%= year%>&&method=viewMyKpi">KPI C???A T??I</a>
                    </li>
                </ul>
            </li>
<!--            <li class=" nav-item"><a href="#"><i class="la la-inbox"></i><span class="menu-title"><%=properties.getProperty("app.report")%></span></a>
            </li>-->
            <%if ("PM".equals(role.getCode()) || "SPM".equals(role.getCode()) || "GD".equals(role.getCode())) {
            %>
            <li class=" nav-item"><a href="#"><i class="la la-chrome"></i><span class="menu-title"><%=properties.getProperty("app.setup")%></span></a>
                <ul class="menu-content">
                    <li><a class="menu-item" href="getAllCodeSet">Gi?? tr??? h??? th???ng</a></li>
                    <li><a class="menu-item" href="getAllParameter">Gi?? tr??? tham s???</a></li>
                    <li><a class="menu-item" href="getAllFormula">C??ng th???c t??nh to??n</a></li>
                    <li><a class="menu-item" href="getAllFormulaForCompaire">So s??nh c??ng th???c</a></li>
                    <li><a class="menu-item" href="<%=session.getAttribute("httpURL")%>tk_admin/home.jsp">C??i ?????t H??? th???ng</a></li>
                </ul>
            </li>
            <%
                }
            %>


        </ul>
    </div>

</div> 
          