<%-- 
    Document   : task-list-create-raci
    Created on : Mar 7, 2021, 1:18:20 PM
    Author     : sonng
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            session.removeAttribute("CssAndJs");
            session.setAttribute("CssAndJs", "tasklist-create-raci");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/jsp/header.jsp" %>
        <%@include file="/jsp/linkCss.jsp" %>
        <title><%=properties.getProperty("app.workspace.tasklist.h4")%></title>
    </head>
    <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
          data-open="click" data-menu="vertical-menu" data-col="2-columns">
        <%@include file="/jsp/nav.jsp" %>

        <div class="app-content content">
            <form id="formAction" action="createRaciAction" method="post" >
                <div class="content-wrapper">
                    <div class="content-header row">
                        <div class="content-header-left col-md-6 col-12 mb-2">
                            <h3 class="content-header-title"><%=properties.getProperty("app.workspace.tasklist.h4")%></h3>
                        </div>
                        <div class="content-header-right col-md-6 col-12">
                            <div class="btn-group float-md-right" role="group" aria-label="">     
                                <button type="submit" onclick="checkIsFoder();return countId();" class="btn btn-info round box-shadow-2 px-2">
                                    <i class="ft-save"></i> <%=properties.getProperty("app.save")%></button>
                            </div>
                        </div>
                    </div>
                    <div class="content-body">
                        <!-- Zero configuration table -->
                        <section id="form-control-repeater">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title" id="file-repeater"><%=properties.getProperty("app.workspace.tasklist.h4")%></h4>
                                            <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                                            <div class="heading-elements">
                                                <ul class="list-inline mb-0">
                                                    <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                                    <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                                    <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                                    <li><a data-action="close"><i class="ft-x"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-content collapse show">
                                            <div class="card-body">
                                                <div class="row">
                                                    <input hidden="true" name="workspaceId" value="<s:property value="workspace.id"/>"/>

                                                    <s:iterator value="lstTaskList">
                                                        <div class="form-group col-12">
                                                            <strong>C??i ?????t RACI cho : <s:property value="taskListTitle"/></strong>
                                                            <div class="row">
                                                                <div class="form-group col-3">
                                                                    <fieldset class="form-group">
                                                                        <h5>A - Tr??ch nhi???m</h5>
                                                                        <select required="true" class="single-select-box selectivity-input" data-placeholder="Ch??? l???a ch???n m???t gi?? tr??? duy nh???t"
                                                                                name="raci_a_<s:property value="id"/>" >
                                                                            <option></option>
                                                                            <s:iterator value="listUserInWorkspace">
                                                                                <option value="<s:property value="id"/>"><s:property value="loginId"/></option>
                                                                            </s:iterator>

                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                                <div class="form-group col-3">
                                                                    <fieldset class="form-group">
                                                                        <h5>R - Th???c hi???n</h5>
                                                                        <select required="true" class="single-select-box selectivity-input" data-placeholder="L???a ch???n nhi???u gi?? tr???"
                                                                                name="raci_r_<s:property value="id"/>" multiple>
                                                                            <s:iterator value="listUserInWorkspace">
                                                                                <option value="<s:property value="id"/>"><s:property value="loginId"/></option>
                                                                            </s:iterator>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                                <div class="form-group col-3">
                                                                    <fieldset class="form-group">
                                                                        <h5>C - Tham v???n</h5>
                                                                        <select class="single-select-box selectivity-input" data-placeholder="L???a ch???n nhi???u gi?? tr???"
                                                                                name="raci_c_<s:property value="id"/>" multiple>
                                                                            <s:iterator value="listUserInWorkspace">
                                                                                <option value="<s:property value="id"/>"><s:property value="loginId"/></option>
                                                                            </s:iterator>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                                <div class="form-group col-3">
                                                                    <fieldset class="form-group">
                                                                        <h5>I - Th??ng b??o</h5>
                                                                        <select class="single-select-box selectivity-input" data-placeholder="L???a ch???n nhi???u gi?? tr???"
                                                                                name="raci_i_<s:property value="id"/>" multiple>
                                                                            <s:iterator value="listUserInWorkspace">
                                                                                <option value="<s:property value="id"/>"><s:property value="loginId"/></option>
                                                                            </s:iterator>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </s:iterator>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </form>                                                
        </div>
        <%@include file="/jsp/dialogConfirm.jsp" %>
        <%@include file="/jsp/footer.jsp" %>
        <%@include file="/jsp/js.jsp" %>
    </body>
</html>
