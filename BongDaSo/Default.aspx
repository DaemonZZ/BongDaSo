<%@ Page Title="Tin Tức Bóng Đá" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BongDaSo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="ngayDang desc, gioDang desc, doUuTien desc" TableName="TinTucs">
    </asp:LinqDataSource>

    <section id="sliderSection">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="slick_slider">
                    <asp:Repeater ID="rpSlider" runat="server">
                        <ItemTemplate>
                            <div class="single_iteam">
                                <a href="<%#Eval("id","Desc.aspx?ID={0}") %>">
                                    <img src="<%# Eval("cover") %>" alt=""></a>
                                <div class="slider_article">
                                    <h2><a class="slider_tittle" href="<%#Eval("id","Desc.aspx?ID={0}") %>"><%#Eval("title") %></a></h2>
                                    <p><%#Eval("tomTat") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="latest_post">
                    <h2><span>Tin Mới Nhất</span></h2>
                    <div class="latest_post_container">
                        <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
                        <ul class="latest_postnav">
                            <asp:Repeater ID="rpLasterPost" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="media">
                                            <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="media-left">
                                                <img alt="" src="<%#Eval("cover") %>">
                                            </a >
                                            <div class="media-body"><a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="catg_title"><%#Eval("title") %></a> </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                        <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contentSection">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="left_content">
                    <div class="single_post_content">
                        <h2><span>Hậu Trường</span></h2>

                        <div class="single_post_content_left">
                            <ul class="business_catgnav  wow fadeInDown">

                                <li>
                                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="LinqDataSource2" OnDataBound="FormView1_DataBound1">
                                        <EditItemTemplate>
                                            id:
                                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                            <br />
                                            title:
                                            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                                            <br />
                                            tomTat:
                                            <asp:TextBox ID="tomTatTextBox" runat="server" Text='<%# Bind("tomTat") %>' />
                                            <br />
                                            thumb:
                                            <asp:TextBox ID="thumbTextBox" runat="server" Text='<%# Bind("thumb") %>' />
                                            <br />
                                            cover:
                                            <asp:TextBox ID="coverTextBox" runat="server" Text='<%# Bind("cover") %>' />
                                            <br />
                                            noiDung:
                                            <asp:TextBox ID="noiDungTextBox" runat="server" Text='<%# Bind("noiDung") %>' />
                                            <br />
                                            id_User:
                                            <asp:TextBox ID="id_UserTextBox" runat="server" Text='<%# Bind("id_User") %>' />
                                            <br />
                                            ngayDang:
                                            <asp:TextBox ID="ngayDangTextBox" runat="server" Text='<%# Bind("ngayDang") %>' />
                                            <br />
                                            gioDang:
                                            <asp:TextBox ID="gioDangTextBox" runat="server" Text='<%# Bind("gioDang") %>' />
                                            <br />
                                            luotXem:
                                            <asp:TextBox ID="luotXemTextBox" runat="server" Text='<%# Bind("luotXem") %>' />
                                            <br />
                                            doUuTien:
                                            <asp:TextBox ID="doUuTienTextBox" runat="server" Text='<%# Bind("doUuTien") %>' />
                                            <br />
                                            idLoai:
                                            <asp:TextBox ID="idLoaiTextBox" runat="server" Text='<%# Bind("idLoai") %>' />
                                            <br />
                                            BinhLuans:
                                            <asp:TextBox ID="BinhLuansTextBox" runat="server" Text='<%# Bind("BinhLuans") %>' />
                                            <br />
                                            LoaiTin:
                                            <asp:TextBox ID="LoaiTinTextBox" runat="server" Text='<%# Bind("LoaiTin") %>' />
                                            <br />
                                            User:
                                            <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            id:
                                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                                            <br />
                                            title:
                                            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                                            <br />
                                            tomTat:
                                            <asp:TextBox ID="tomTatTextBox" runat="server" Text='<%# Bind("tomTat") %>' />
                                            <br />
                                            thumb:
                                            <asp:TextBox ID="thumbTextBox" runat="server" Text='<%# Bind("thumb") %>' />
                                            <br />
                                            cover:
                                            <asp:TextBox ID="coverTextBox" runat="server" Text='<%# Bind("cover") %>' />
                                            <br />
                                            noiDung:
                                            <asp:TextBox ID="noiDungTextBox" runat="server" Text='<%# Bind("noiDung") %>' />
                                            <br />
                                            id_User:
                                            <asp:TextBox ID="id_UserTextBox" runat="server" Text='<%# Bind("id_User") %>' />
                                            <br />
                                            ngayDang:
                                            <asp:TextBox ID="ngayDangTextBox" runat="server" Text='<%# Bind("ngayDang") %>' />
                                            <br />
                                            gioDang:
                                            <asp:TextBox ID="gioDangTextBox" runat="server" Text='<%# Bind("gioDang") %>' />
                                            <br />
                                            luotXem:
                                            <asp:TextBox ID="luotXemTextBox" runat="server" Text='<%# Bind("luotXem") %>' />
                                            <br />
                                            doUuTien:
                                            <asp:TextBox ID="doUuTienTextBox" runat="server" Text='<%# Bind("doUuTien") %>' />
                                            <br />
                                            idLoai:
                                            <asp:TextBox ID="idLoaiTextBox" runat="server" Text='<%# Bind("idLoai") %>' />
                                            <br />
                                            BinhLuans:
                                            <asp:TextBox ID="BinhLuansTextBox" runat="server" Text='<%# Bind("BinhLuans") %>' />
                                            <br />
                                            LoaiTin:
                                            <asp:TextBox ID="LoaiTinTextBox" runat="server" Text='<%# Bind("LoaiTin") %>' />
                                            <br />
                                            User:
                                            <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="imgCover" runat="server" ImageUrl='<%# Eval("cover", "{0}") %>' Width="300px" />
                                            <br />
                                            <asp:HyperLink ID="linkLastPost" runat="server" NavigateUrl='<%#Eval("id","Desc.aspx?ID={0}") %>' Text='<%# Eval("title", "{0}") %>' Font-Bold="True"></asp:HyperLink>
                                            <br />
                                        </ItemTemplate>

                                    </asp:FormView>
                                </li>
                            </ul>
                        </div>

                        <div class="single_post_content_right">
                            <ul class="spost_nav">
                                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="ngayDang desc, gioDang desc" TableName="TinTucs" Where="idLoai == @idLoai">
                                    <WhereParameters>
                                        <asp:Parameter DefaultValue="2" Name="idLoai" Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
                                <asp:Repeater ID="rpHauTruong" runat="server" DataSourceID="LinqDataSource2">
                                    <ItemTemplate>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="media-left">
                                                    <img alt="" src="<%#Eval("cover") %>">
                                                </a>
                                               <div class="media-body"><a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="catg_title"><%#Eval("title") %></a> </div>
                                            </div>
                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="fashion_technology_area">
                        <div class="fashion">
                            <div class="single_post_content">
                                <h2><span>Thị Trường Chuyển Nhượng</span></h2>
                                <asp:LinqDataSource ID="chuyenNhuong" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="TinTucs" Where="idLoai == @idLoai">
                                    <WhereParameters>
                                        <asp:Parameter DefaultValue="3" Name="idLoai" Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
                                <ul class="business_catgnav wow fadeInDown">
                                    <li>

                                        <figure class="bsbig_fig">
                                            <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="featured_img"><span class="overlay"></span>
                                                <asp:FormView ID="FormView2" runat="server" DataKeyNames="id" DataSourceID="chuyenNhuong">
                                                    <EditItemTemplate>
                                                        id:
                                                        <asp:DynamicControl ID="idDynamicControl" runat="server" DataField="id" Mode="ReadOnly" />
                                                        <br />
                                                        title:
                                                        <asp:DynamicControl ID="titleDynamicControl" runat="server" DataField="title" Mode="Edit" />
                                                        <br />
                                                        tomTat:
                                                        <asp:DynamicControl ID="tomTatDynamicControl" runat="server" DataField="tomTat" Mode="Edit" />
                                                        <br />
                                                        thumb:
                                                        <asp:DynamicControl ID="thumbDynamicControl" runat="server" DataField="thumb" Mode="Edit" />
                                                        <br />
                                                        cover:
                                                        <asp:DynamicControl ID="coverDynamicControl" runat="server" DataField="cover" Mode="Edit" />
                                                        <br />
                                                        noiDung:
                                                        <asp:DynamicControl ID="noiDungDynamicControl" runat="server" DataField="noiDung" Mode="Edit" />
                                                        <br />
                                                        id_User:
                                                        <asp:DynamicControl ID="id_UserDynamicControl" runat="server" DataField="id_User" Mode="Edit" />
                                                        <br />
                                                        ngayDang:
                                                        <asp:DynamicControl ID="ngayDangDynamicControl" runat="server" DataField="ngayDang" Mode="Edit" />
                                                        <br />
                                                        gioDang:
                                                        <asp:DynamicControl ID="gioDangDynamicControl" runat="server" DataField="gioDang" Mode="Edit" />
                                                        <br />
                                                        luotXem:
                                                        <asp:DynamicControl ID="luotXemDynamicControl" runat="server" DataField="luotXem" Mode="Edit" />
                                                        <br />
                                                        doUuTien:
                                                        <asp:DynamicControl ID="doUuTienDynamicControl" runat="server" DataField="doUuTien" Mode="Edit" />
                                                        <br />
                                                        idLoai:
                                                        <asp:DynamicControl ID="idLoaiDynamicControl" runat="server" DataField="idLoai" Mode="Edit" />
                                                        <br />
                                                        BinhLuans:
                                                        <asp:DynamicControl ID="BinhLuansDynamicControl" runat="server" DataField="BinhLuans" Mode="Edit" />
                                                        <br />
                                                        LoaiTin:
                                                        <asp:DynamicControl ID="LoaiTinDynamicControl" runat="server" DataField="LoaiTin" Mode="Edit" />
                                                        <br />
                                                        User:
                                                        <asp:DynamicControl ID="UserDynamicControl" runat="server" DataField="User" Mode="Edit" />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        id:
                                                        <asp:DynamicControl ID="idDynamicControl" runat="server" DataField="id" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        title:
                                                        <asp:DynamicControl ID="titleDynamicControl" runat="server" DataField="title" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        tomTat:
                                                        <asp:DynamicControl ID="tomTatDynamicControl" runat="server" DataField="tomTat" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        thumb:
                                                        <asp:DynamicControl ID="thumbDynamicControl" runat="server" DataField="thumb" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        cover:
                                                        <asp:DynamicControl ID="coverDynamicControl" runat="server" DataField="cover" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        noiDung:
                                                        <asp:DynamicControl ID="noiDungDynamicControl" runat="server" DataField="noiDung" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        id_User:
                                                        <asp:DynamicControl ID="id_UserDynamicControl" runat="server" DataField="id_User" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        ngayDang:
                                                        <asp:DynamicControl ID="ngayDangDynamicControl" runat="server" DataField="ngayDang" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        gioDang:
                                                        <asp:DynamicControl ID="gioDangDynamicControl" runat="server" DataField="gioDang" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        luotXem:
                                                        <asp:DynamicControl ID="luotXemDynamicControl" runat="server" DataField="luotXem" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        doUuTien:
                                                        <asp:DynamicControl ID="doUuTienDynamicControl" runat="server" DataField="doUuTien" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        idLoai:
                                                        <asp:DynamicControl ID="idLoaiDynamicControl" runat="server" DataField="idLoai" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        BinhLuans:
                                                        <asp:DynamicControl ID="BinhLuansDynamicControl" runat="server" DataField="BinhLuans" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        LoaiTin:
                                                        <asp:DynamicControl ID="LoaiTinDynamicControl" runat="server" DataField="LoaiTin" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        User:
                                                        <asp:DynamicControl ID="UserDynamicControl" runat="server" DataField="User" Mode="Insert" ValidationGroup="Insert" />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                                                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("cover", "{0}") %>' />
                                                        <br />
                                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id","Desc.aspx?ID={0}") %>' Text='<%# Eval("title", "{0}") %>' Font-Bold="True"></asp:HyperLink>
                                                        <br />
                                                        <br />
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("tomTat", "{0}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </a>
                                        </figure>
                                    </li>
                                </ul>
                                <ul class="spost_nav">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="chuyenNhuong">
                                        <ItemTemplate>
                                            <li>
                                                <div class="media wow fadeInDown">
                                                    <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="media-left">
                                                        <img alt="" src="<%#Eval("cover") %>">
                                                    </a>
                                                    <div class="media-body"><a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="catg_title"><%#Eval("title") %></a> </div>
                                                </div>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <div class="technology">
                            <div class="single_post_content">
                                <h2><span>Phân tich - Dự đoán</span></h2>
                                    <ul class="business_catgnav">
                                    <li>
                                        <figure class="bsbig_fig wow fadeInDown">
                                            <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="featured_img"><span class="overlay"></span>
                                                <asp:Image ID="Image2" runat="server" OnDataBinding="Page_Load" />
                                            </a>
                                            <figcaption>
                                                <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                                            </figcaption>
                                            <p>
                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </p>
                                        </figure>
                                    </li>
                                </ul>
                                <ul class="spost_nav">

                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="phantichdudoanDts">
                                        <ItemTemplate>
                                            <li>
                                                <div class="media wow fadeInDown">
                                                    <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="media-left">
                                                        <img alt="" src="<%#Eval("cover") %>">
                                                    </a>
                                                   <div class="media-body"><a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="catg_title"><%#Eval("title") %></a> </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:LinqDataSource ID="phantichdudoanDts" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="TinTucs" Where="idLoai == @idLoai">
                                        <WhereParameters>
                                            <asp:Parameter DefaultValue="4" Name="idLoai" Type="Int32" />
                                        </WhereParameters>
                                    </asp:LinqDataSource>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="single_post_content">
                        <h2><span>Photography</span></h2>
                        <ul class="photograph_nav  wow fadeInDown">
                            <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="photo_grid">
                                            <figure class="effect-layla">
                                                <a class="fancybox-buttons" data-fancybox-group="button" href="<%#Eval("id","Desc.aspx?ID={0}") %>" title="<%#Eval("title") %>">
                                                    <img src="<%#Eval("cover") %>" alt="" height="375" width="500" /></a>
                                            </figure>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="single_post_content">
                        <h2><span>Báo cáo trận đấu</span></h2>
                        <div class="single_post_content_left">
                            <ul class="business_catgnav">
                                <li>
                                    <figure class="bsbig_fig  wow fadeInDown">
                                        <a class="featured_img" href="<%#Eval("id","Desc.aspx?ID={0}") %>"><span class="overlay"></span>
                                            <asp:Image ID="Image3" runat="server" OnDataBinding="Page_Load" />
                                        </a>
                                        <figcaption>
                                            <asp:HyperLink ID="HyperLink3" runat="server">HyperLink</asp:HyperLink>
                                        </figcaption>
                                        <p>
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </figure>
                                </li>
                            </ul>
                        </div>
                        <div class="single_post_content_right">
                            <ul class="spost_nav">
                                <asp:Repeater ID="Repeater5" runat="server" DataSourceID="DtsBaoCao">
                                    <ItemTemplate>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="media-left">
                                                    <img alt="" src="<%#Eval("cover") %>">
                                                </a>
                                                <div class="media-body"><a href="<%#Eval("id","Desc.aspx?ID={0}") %>" class="catg_title"><%#Eval("title") %></a> </div>
                                            </div>
                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:LinqDataSource ID="DtsBaoCao" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="ngayDang desc, gioDang desc, luotXem desc" TableName="TinTucs" Where="idLoai == @idLoai">
                                    <WhereParameters>
                                        <asp:Parameter DefaultValue="5" Name="idLoai" Type="Int32" />
                                    </WhereParameters>
                                </asp:LinqDataSource>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <aside class="right_content">
                    <div class="single_sidebar">
                        <h2><span>Popular Post</span></h2>
                        <asp:LinqDataSource ID="LinqluotView" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="luotXem desc" TableName="TinTucs"></asp:LinqDataSource>
                        <ul class="spost_nav">
                            <asp:Repeater ID="rpMostPop" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="/" class="media-left">
                                                <img alt="" src="<%#Eval("cover") %>">
                                            </a>
                                            <div class="media-body">
                                                <a href="/" class="catg_title"><%#Eval("title") %></a>
                                            </div>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                    <div class="single_sidebar">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#category" aria-controls="home" role="tab" data-toggle="tab">Category</a></li>
                            <li role="presentation"><a href="#video" aria-controls="profile" role="tab" data-toggle="tab">Video</a></li>
                            <li role="presentation"><a href="#comments" aria-controls="messages" role="tab" data-toggle="tab">Comments</a></li>
                            
                        </ul>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="category">
                                <ul>
                                    <asp:Repeater ID="rpCatTab" runat="server" DataSourceID="DtsLoaiTin">
                                        <ItemTemplate>
                                            <li class="cat-item"><a href="<%#Eval("id","Category.aspx?Loai={0}") %>"><%#Eval("tenLoai") %></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:LinqDataSource ID="DtsLoaiTin" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="LoaiTins">
                                    </asp:LinqDataSource>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="video">
                                <div class="vide_area">
                                    <iframe width="100%" height="250" src="https://www.youtube.com/embed/OGGiJtRCHJM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="comments">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1                           </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Sponsor</span></h2>
                        <a class="sideAdd" href="https://www.facebook.com/sgooophx/">
                            <img src="images/add_img.jpg" alt=""></a>
                    </div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Category Archive</span></h2>
                        <select class="catgArchive">
                            <option>Select Category</option>
                            <option>Life styles</option>
                            <option>Sports</option>
                            <option>Technology</option>
                            <option>Treads</option>
                        </select>
                    </div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Links</span></h2>
                        <ul>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Rss Feed</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Life &amp; Style</a></li>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </section>


    </span>


</asp:Content>
