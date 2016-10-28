<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>THÔNG TIN.</h1>
        
    </hgroup>               
    <article>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([TenLSP], [MaLSP]) VALUES (@TenLSP, @MaLSP)" SelectCommand="SELECT [TenLSP], [MaLSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
            <DeleteParameters>
                <asp:Parameter Name="MaLSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenLSP" Type="String" />
                <asp:Parameter Name="MaLSP" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLSP" Type="String" />
                <asp:Parameter Name="MaLSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource2" Height="50px" Width="125px" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaCTHD], [MaHD], [MaSP], [SoLuong] FROM [ChiTiet_HoaDon]" DeleteCommand="DELETE FROM [ChiTiet_HoaDon] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [ChiTiet_HoaDon] ([MaCTHD], [MaHD], [MaSP], [SoLuong]) VALUES (@MaCTHD, @MaHD, @MaSP, @SoLuong)" UpdateCommand="UPDATE [ChiTiet_HoaDon] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaCTHD] = @MaCTHD">
            <DeleteParameters>
                <asp:Parameter Name="MaCTHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaCTHD" Type="Int32" />
                <asp:Parameter Name="MaHD" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaHD" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="MaCTHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource3">
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                <asp:BoundField DataField="DonViPhanLoai" HeaderText="DonViPhanLoai" SortExpression="DonViPhanLoai" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLSP], [DonViPhanLoai], [TenSP], [Gia], [MoTa]) VALUES (@MaSP, @MaLSP, @DonViPhanLoai, @TenSP, @Gia, @MoTa)" SelectCommand="SELECT [MaSP], [MaLSP], [DonViPhanLoai], [TenSP], [Gia], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLSP] = @MaLSP, [DonViPhanLoai] = @DonViPhanLoai, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaLSP" Type="Int32" />
                <asp:Parameter Name="DonViPhanLoai" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLSP" Type="Int32" />
                <asp:Parameter Name="DonViPhanLoai" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource4" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [HoTen], [Diachi], [Email], [SDT]) VALUES (@MaKH, @HoTen, @Diachi, @Email, @SDT)" SelectCommand="SELECT [MaKH], [HoTen], [Diachi], [Email], [SDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [Diachi] = @Diachi, [Email] = @Email, [SDT] = @SDT WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="Int32" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="MaKH" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                <asp:BoundField DataField="DonHangSo" HeaderText="DonHangSo" SortExpression="DonHangSo" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH], [DonHangSo]) VALUES (@MaHD, @MaKH, @DonHangSo)" SelectCommand="SELECT [MaHD], [MaKH], [DonHangSo] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [DonHangSo] = @DonHangSo WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHD" Type="Int32" />
                <asp:Parameter Name="MaKH" Type="Int32" />
                <asp:Parameter Name="DonHangSo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaKH" Type="Int32" />
                <asp:Parameter Name="DonHangSo" Type="String" />
                <asp:Parameter Name="MaHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>        
            CTY TNHH TMDV TIN HỌC DC <br />
            DC: 85 Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội. <br />
            DT: 04-86599889 - 0983227224. <br />
            Mở Cửa: Các Ngày Trong Tuần (08h-18h) - (Trừ Ngày Lễ,Tết).
        </p>

    
    </article>

    <aside>
        <h3>Truy cập nhanh</h3>
   
        <ul>
            <li><a runat="server" href="~/">Trang chủ</a></li>
            <li><a runat="server" href="~/About">Thông tin</a></li>
            <li><a runat="server" href="~/Contact">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>