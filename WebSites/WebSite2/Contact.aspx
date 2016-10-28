<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>LIÊN HỆ.</h1>
        
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">SĐT1:</span>
            <span>0983227224</span>
        </p>
        <p>
            <span class="label">SĐT2:</span>
            <span>0965195513</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ 1:</span>
            <span><a href="mailto:manhnvph04185@fpt.edu.vn">manhnvph04185@fpt.edu.vn</a></span>
        </p>
    
        <p>
            <span class="label">Hỗ trợ 2:</span>
            <span><a href="mailto:ducntaph03983@fpt.edu.vn">ducntaph03983@fpt.edu.vn</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            85 Hồ Tùng Mậu, Mai Dịch <br />
            Cầu Giấy, Hà Nội
        </p>
    </section>

     <section class="contact">
        <header>
            <h3>Bản đồ:</h3>
        </header>
        <p><center> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6262.873399918513!2d105.7700864487643!3d21.03561457024067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b5ed235785%3A0x52764db14ff5dc14!2zODUgSOG7kyBUw7luZyBN4bqtdSwgTWFpIEThu4tjaCwgQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1476256026724" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
        </center>
        </p>
    </section>
</asp:Content>