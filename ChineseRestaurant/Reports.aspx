<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ChineseRestaurant.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <asp:GridView ID="gvContacts" runat="server" AllowPaging="True" Width="100%" CssClass="GridStyle">
    </asp:GridView>
    <br />
    <br />
    <asp:GridView ID="gvSurvey" runat="server" AllowPaging="True" Width="100%" CssClass="GridStyle">
    </asp:GridView>
</asp:Content>
