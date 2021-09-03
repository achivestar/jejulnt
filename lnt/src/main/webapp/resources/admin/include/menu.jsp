<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/admin/index">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">LNT Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/index">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/chart">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>온라인설문조사</span>
                </a>
                <hr class="sidebar-divider">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/chart2">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>현장설문조사</span>
                </a>
                <!-- Divider -->
                <hr class="sidebar-divider">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/member">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Member</span>
                </a>
                 <!-- Divider -->
                 <hr class="sidebar-divider">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/notice">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Notice</span>
                </a>
                <hr class="sidebar-divider">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/active">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Active</span>
                </a>
            </li>
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
</ul>