<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="nhom8_tungntph02392_GD2.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="style/css1.css" rel="stylesheet" />
    <link href="style/menu1.css" rel="stylesheet" />
    <link href="style/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <section id="warpper">
		<header>
        	<aside id="text">SHOP TRANG SỨC<br>TINH TẾ- SANG TRỌNG</aside>
            <aside id="banner"></aside>
        </header>
		<nav id="menu">
			<ul>
				<li><a href="Default.aspx">Trang chủ</a></li>
				<li><a href="product.aspx">Sản phẩm</a></li>
				<li><a href="contact.aspx">Liên hệ</a></li>
				<li><a href="#"></a></li>
                <li></li>
			</ul>
		</nav>
		<section id="content">
			<article id="left">
				<article id="cate_left">
                    	<header id="left_top">Danh mục sản phẩm</header>
                        <nav id="menu_left">
                        	<ul>
                            	<li><a href="#">Genesis Ring</a></li>
                                <li><a href="#">Genesis Earring</a></li>
                                <li><a href="#">Genesis Necklace</a></li>
                                <li><a href="#">Mũ lưỡi Trai</a></li>
                                <li><a href="#">Bán chạy</a></li>
                                <li><a href="#">Khuyến mãi</a></li>
                                <li><a href="#">Sự Kiện</a></li>
                            </ul>
                        </nav>
                    </article>
                <aside id="left_bot">
                    	<header id="left_top">Hình ảnh</header>
                        <a href="#"><img src="image/1.png" height="126" width="161"></a>
                    
                    </aside>
			</article>
			<article id="right"><br />
				<header id="list" >Danh sách</header>
                <header id="Header5" style="color:red;font-size:20px;font-weight:bold;">Danh sách sản phẩm</header>
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="id_loai_sp" HeaderText="id_loai_sp" SortExpression="id_loai_sp" />
                        <asp:BoundField DataField="ten_sp" HeaderText="ten_sp" SortExpression="ten_sp" />
                        <asp:BoundField DataField="gia_sp" HeaderText="gia_sp" SortExpression="gia_sp" />
                        <asp:BoundField DataField="mo_ta_sp" HeaderText="mo_ta_sp" SortExpression="mo_ta_sp" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [id] = @id" InsertCommand="INSERT INTO [San_Pham] ([id], [id_loai_sp], [ten_sp], [gia_sp], [mo_ta_sp], [img]) VALUES (@id, @id_loai_sp, @ten_sp, @gia_sp, @mo_ta_sp, @img)" SelectCommand="SELECT [id], [id_loai_sp], [ten_sp], [gia_sp], [mo_ta_sp], [img] FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [id_loai_sp] = @id_loai_sp, [ten_sp] = @ten_sp, [gia_sp] = @gia_sp, [mo_ta_sp] = @mo_ta_sp, [img] = @img WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="id_loai_sp" Type="Int32" />
                        <asp:Parameter Name="ten_sp" Type="String" />
                        <asp:Parameter Name="gia_sp" Type="Decimal" />
                        <asp:Parameter Name="mo_ta_sp" Type="String" />
                        <asp:Parameter Name="img" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_loai_sp" Type="Int32" />
                        <asp:Parameter Name="ten_sp" Type="String" />
                        <asp:Parameter Name="gia_sp" Type="Decimal" />
                        <asp:Parameter Name="mo_ta_sp" Type="String" />
                        <asp:Parameter Name="img" Type="Object" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <header id="Header1" style="color:red;font-size:20px;font-weight:bold;">Khách Hàng</header>
                <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="ten_khach_hang" HeaderText="ten_khach_hang" SortExpression="ten_khach_hang" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
			    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [id] = @id" InsertCommand="INSERT INTO [Khach_Hang] ([id], [email], [ten_khach_hang]) VALUES (@id, @email, @ten_khach_hang)" SelectCommand="SELECT [id], [email], [ten_khach_hang] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [email] = @email, [ten_khach_hang] = @ten_khach_hang WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="ten_khach_hang" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="ten_khach_hang" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <header id="Header2" style="color:red;font-size:20px;font-weight:bold;">Loại Sản Phẩm</header>
                <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="ten_sp" HeaderText="ten_sp" SortExpression="ten_sp" />
                        <asp:BoundField DataField="parent_loai_id" HeaderText="parent_loai_id" SortExpression="parent_loai_id" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
			    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [loai_sp] WHERE [id] = @id" InsertCommand="INSERT INTO [loai_sp] ([id], [ten_sp], [parent_loai_id]) VALUES (@id, @ten_sp, @parent_loai_id)" SelectCommand="SELECT [id], [ten_sp], [parent_loai_id] FROM [loai_sp]" UpdateCommand="UPDATE [loai_sp] SET [ten_sp] = @ten_sp, [parent_loai_id] = @parent_loai_id WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="ten_sp" Type="String" />
                        <asp:Parameter Name="parent_loai_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ten_sp" Type="String" />
                        <asp:Parameter Name="parent_loai_id" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <header id="Header3" style="color:red;font-size:20px;font-weight:bold;">Hóa Đơn</header>
                <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource4">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="STT" HeaderText="STT" SortExpression="STT" />
                        <asp:BoundField DataField="id_khach_hang" HeaderText="id_khach_hang" SortExpression="id_khach_hang" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
			    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [id] = @id" InsertCommand="INSERT INTO [hoa_don] ([id], [STT], [id_khach_hang]) VALUES (@id, @STT, @id_khach_hang)" SelectCommand="SELECT [id], [STT], [id_khach_hang] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [STT] = @STT, [id_khach_hang] = @id_khach_hang WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="STT" Type="String" />
                        <asp:Parameter Name="id_khach_hang" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="STT" Type="String" />
                        <asp:Parameter Name="id_khach_hang" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <header id="Header4" style="color:red;font-size:20px;font-weight:bold;">Chi Tiết Hóa Đơn</header>
                <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource5">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="id_hoa_don" HeaderText="id_hoa_don" SortExpression="id_hoa_don" />
                        <asp:BoundField DataField="id_sp" HeaderText="id_sp" SortExpression="id_sp" />
                        <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
			    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chi_tiet_hoa_don] WHERE [id] = @id" InsertCommand="INSERT INTO [chi_tiet_hoa_don] ([id], [id_hoa_don], [id_sp], [so_luong]) VALUES (@id, @id_hoa_don, @id_sp, @so_luong)" SelectCommand="SELECT [id], [id_hoa_don], [id_sp], [so_luong] FROM [chi_tiet_hoa_don]" UpdateCommand="UPDATE [chi_tiet_hoa_don] SET [id_hoa_don] = @id_hoa_don, [id_sp] = @id_sp, [so_luong] = @so_luong WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="id_hoa_don" Type="Int32" />
                        <asp:Parameter Name="id_sp" Type="Int32" />
                        <asp:Parameter Name="so_luong" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_hoa_don" Type="Int32" />
                        <asp:Parameter Name="id_sp" Type="Int32" />
                        <asp:Parameter Name="so_luong" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
			</article>
		</section>
		<h3><footer>Nhóm 8</footer></h3>  
	</section>
    </form>
</body>
</html>
