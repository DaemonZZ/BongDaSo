<%@ Page Title="Tin Tức Bóng Đá" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BongDaSo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" >

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="ngayDang desc, gioDang desc, doUuTien desc" TableName="TinTucs" Select="new (cover, tomTat, title)" Where="LoaiTin == @LoaiTin">
            <WhereParameters>
                <asp:Parameter DefaultValue="2" Name="LoaiTin" Type="Object" />
            </WhereParameters>
        </asp:LinqDataSource>

        <section id="sliderSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="slick_slider">
                        <asp:Repeater ID="rpSlider" runat="server">
                            <ItemTemplate>
                                <div class="single_iteam">
                                    <a href="pages/single_page.html">
                                        <img src="<%# Eval("cover") %>" alt=""></a>
                                    <div class="slider_article">
                                        <h2><a class="slider_tittle" href="pages/single_page.html"><%#Eval("title") %></a></h2>
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
                                                <a href="#" class="media-left">
                                                    <img alt="" src="<%#Eval("cover") %>">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body"><a href="#" class="catg_title"><%#Eval("title") %></a> </div>
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
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="imgCover" runat="server" ImageUrl='<%# Eval("cover", "{0}") %>' Width="300px" />
                                            <br />
                                            <asp:HyperLink ID="linkLastPost" runat="server" NavigateUrl='<%# Eval("id", "/") %>' Text='<%# Eval("title", "{0}") %>'></asp:HyperLink>
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
                                                    <a href="pages/single_page.html" class="media-left">
                                                        <img alt="" src="<%#Eval("cover") %>">
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body"><a href="#" class="catg_title"><%#Eval("title") %></a> </div>
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
                                    <h2><span>Fashion
                                    usiness_catgnav wow fadeInDown">
                                        <li>
                                            <figure class="bsbig_fig">
                                                <a href="pages/single_page.html" class="featured_img">
                                                    <img alt="" src="images/featured_img2.jpg">
                                                    <span class="overlay"></span></a>
                                                &nbsp;<figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="technology">
                                <div class="single_post_content">
                                    <h2><span>Technology</span></h2>
                                    <ul class="business_catgnav">
                                        <li>
                                            <figure class="bsbig_fig wow fadeInDown">
                                                <a href="pages/single_page.html" class="featured_img">
                                                    <img alt="" src="images/featured_img3.jpg">
                                                    <span class="overlay"></span></a>
                                                &nbsp;<figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                                <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                            </figure>
                                        </li>
                                    </ul>
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single_post_content">
                            <h2><span>Photography</span></h2>
                            <ul class="photograph_nav  wow fadeInDown">
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img2.jpg" title="Photography Ttile 1">
                                                <img src="images/photograph_img2.jpg" alt="" /></a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img3.jpg" title="Photography Ttile 2">
                                                <img src="images/photograph_img3.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img4.jpg" title="Photography Ttile 3">
                                                <img src="images/photograph_img4.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img4.jpg" title="Photography Ttile 4">
                                                <img src="images/photograph_img4.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img2.jpg" title="Photography Ttile 5">
                                                <img src="images/photograph_img2.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                                <li>
                                    <div class="photo_grid">
                                        <figure class="effect-layla">
                                            <a class="fancybox-buttons" data-fancybox-group="button" href="images/photograph_img3.jpg" title="Photography Ttile 6">
                                                <img src="images/photograph_img3.jpg" alt="" />
                                            </a>
                                        </figure>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="single_post_content">
                            <h2><span>Games</span></h2>
                            <div class="single_post_content_left">
                                <ul class="business_catgnav">
                                    <li>
                                        <figure class="bsbig_fig  wow fadeInDown">
                                            <a class="featured_img" href="pages/single_page.html">
                                                <img src="images/featured_img1.jpg" alt="">
                                                <span class="overlay"></span></a>
                                            &nbsp;<figcaption><a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
                                            <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img1.jpg">
                                            </a>
                                            &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="pages/single_page.html" class="media-left">
                                                <img alt="" src="images/post_img2.jpg">
                                            </a>
                                            &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <aside class="right_content">
                        <div class="single_sidebar">
                            <h2><span>Popular Post</span></h2>
                            <ul class="spost_nav">
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img1.jpg">
                                        </a>
                                        &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media wow fadeInDown">
                                        <a href="pages/single_page.html" class="media-left">
                                            <img alt="" src="images/post_img2.jpg">
                                        </a>
                                        &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                    </div>
                                </li>
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
                                        <li class="cat-item"><a href="#">Sports</a></li>
                                        <li class="cat-item"><a href="#">Fashion</a></li>
                                        <li class="cat-item"><a href="#">Business</a></li>
                                        <li class="cat-item"><a href="#">Technology</a></li>
                                        <li class="cat-item"><a href="#">Games</a></li>
                                        <li class="cat-item"><a href="#">Life &amp; Style</a></li>
                                        <li class="cat-item"><a href="#">Photography</a></li>
                                    </ul>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="video">
                                    <div class="vide_area">
                                        <iframe width="100%" height="250" src="http://www.youtube.com/embed/h5QWbURNEpA?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="comments">
                                    <ul class="spost_nav">
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img1.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media wow fadeInDown">
                                                <a href="pages/single_page.html" class="media-left">
                                                    <img alt="" src="images/post_img2.jpg">
                                                </a>
                                                &nbsp;<div class="media-body"><a href="pages/single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single_sidebar wow fadeInDown">
                            <h2><span>Sponsor</span></h2>
                            <a class="sideAdd" href="#">
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

    </form>

    </span>

</asp:Content>
