<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

   
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Nên xem:</h3>
    <ol class="round">
        <li class="one">
            <h5>Gaming PC</h5>
            <a href="ChiTietSP.aspx"><asp:Image ImageUrl ="~/Images/Gaming PC 1.png" Width="500px" Height="300px" runat="server" /></a><br />
            <a href="ChiTietSP.aspx">Tìm hiểu thêm</a>
        </li>
        <li class="two">
            <h5>Linh Kiện PC</h5>
            <a href="ChiTietSP.aspx"><asp:Image ImageUrl ="~/Images/Linh Kien PC.jpg" Width="500px" Height="300px" runat="server" /></a><br />
            <a href="ChiTietSP.aspx">Tìm hiểu thêm</a>
        </li>
        <li class="three">
            <h5>Tản Nhiệt</h5>
            <a href="ChiTietSP.aspx"><asp:Image ImageUrl ="~/Images/Tan Nhiet PC.jpg" Width="500px" Height="300px" runat="server" /></a><br />
            <a href="ChiTietSP.aspx">Tìm hiểu thêm</a>
        </li>
        <li class="four">
            <h5>Làm đẹp PC</h5>            
            <a href="ChiTietSP.aspx"><asp:Image ImageUrl ="~/Images/Lam Dep PC.jpg" Width="500px" Height="300px" runat="server" /></a> <br />
            <a href="ChiTietSP.aspx">Tìm hiểu thêm</a>
        </li>
    </ol>
</asp:Content>
