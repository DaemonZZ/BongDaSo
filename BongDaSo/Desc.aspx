<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Desc.aspx.cs" Inherits="BongDaSo.Desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="contentSection">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="left_content">
                    <div class="single_page">
                        <ol class="breadcrumb">
                            <li><a href="../index.html">Home</a></li>
                            <li><a href="#">Technology</a></li>
                            <li class="active">Mobile</li>
                        </ol>
                        <asp:FormView ID="FormView2" runat="server" DataSourceID="LinqDataSource1" OnDataBound="FormView2_DataBound">
                            <ItemTemplate>
                                <h1>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("title", "{0}") %>'></asp:Label>
                                </h1>
                                <div class="post_commentbox"><asp:Label ID="Label4" runat="server" Text='<%# Eval("ngayDang", "{0:d}") %>'></asp:Label>
<asp:Label ID="Label5" runat="server" Text='<%# Eval("luotXem", "{0}") %>'></asp:Label>

                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("idLoai", "{0}") %>'></asp:Label>
                                </div>

                            </ItemTemplate>
                        </asp:FormView>
                        <div class="single_page_content">

                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="LinqDataSource1">
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
                                    <asp:Image ID="Image1" runat="server" Width="100%" ImageUrl='<%# Eval("cover", "{0}") %>' />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#666666" Text='<%# Eval("tomTat", "{0}") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("noiDung", "{0}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="TinTucs" Where="id == @id">
                                <WhereParameters>
                                    <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="Int32" />
                                </WhereParameters>
                            </asp:LinqDataSource>

                            <br />
                            <br />
                            <button class="btn default-btn">Default</button>
                            <button class="btn btn-red">Red Button</button>
                            <button class="btn btn-yellow">Yellow Button</button>
                            <button class="btn btn-green">Green Button</button>
                            <button class="btn btn-black">Black Button</button>
                            <button class="btn btn-orange">Orange Button</button>
                            <button class="btn btn-blue">Blue Button</button>
                            <button class="btn btn-lime">Lime Button</button>
                            <button class="btn btn-theme">Theme Button</button>
                        </div>
                        <div class="social_link">
                            <ul class="sociallink_nav">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="related_post">
                            <h2>Related Post <i class="fa fa-thumbs-o-up"></i></h2>
                            <ul class="spost_nav wow fadeInDown animated">
                                <li>
                                    <div class="media">
                                        <a class="media-left" href="single_page.html">
                                            <img src="../images/post_img1.jpg" alt="">
                                        </a>
                                        <div class="media-body"><a class="catg_title" href="single_page.html">Aliquam malesuada diam eget turpis varius</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a class="media-left" href="single_page.html">
                                            <img src="../images/post_img2.jpg" alt="">
                                        </a>
                                        <div class="media-body"><a class="catg_title" href="single_page.html">Aliquam malesuada diam eget turpis varius</a> </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a class="media-left" href="single_page.html">
                                            <img src="../images/post_img1.jpg" alt="">
                                        </a>
                                        <div class="media-body"><a class="catg_title" href="single_page.html">Aliquam malesuada diam eget turpis varius</a> </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="nav-slit">
                <a class="prev" href="#"><span class="icon-wrap"><i class="fa fa-angle-left"></i></span>
                    <div>
                        <h3>City Lights</h3>
                        <img src="../images/post_img1.jpg" alt="" />
                    </div>
                </a><a class="next" href="#"><span class="icon-wrap"><i class="fa fa-angle-right"></i></span>
                    <div>
                        <h3>Street Hills</h3>
                        <img src="../images/post_img1.jpg" alt="" />
                    </div>
                </a>
            </nav>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <aside class="right_content">
                    <div class="single_sidebar">
                        <h2><span>Popular Post</span></h2>
                        <ul class="spost_nav">
                            <li>
                                <div class="media wow fadeInDown">
                                    <a href="single_page.html" class="media-left">
                                        <img alt="" src="../images/post_img1.jpg">
                                    </a>
                                    <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                </div>
                            </li>
                            <li>
                                <div class="media wow fadeInDown">
                                    <a href="single_page.html" class="media-left">
                                        <img alt="" src="../images/post_img2.jpg">
                                    </a>
                                    <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                </div>
                            </li>
                            <li>
                                <div class="media wow fadeInDown">
                                    <a href="single_page.html" class="media-left">
                                        <img alt="" src="../images/post_img1.jpg">
                                    </a>
                                    <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                </div>
                            </li>
                            <li>
                                <div class="media wow fadeInDown">
                                    <a href="single_page.html" class="media-left">
                                        <img alt="" src="../images/post_img2.jpg">
                                    </a>
                                    <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
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
                                            <a href="single_page.html" class="media-left">
                                                <img alt="" src="../images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 1</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="single_page.html" class="media-left">
                                                <img alt="" src="../images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 2</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="single_page.html" class="media-left">
                                                <img alt="" src="../images/post_img1.jpg">
                                            </a>
                                            <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 3</a> </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="media wow fadeInDown">
                                            <a href="single_page.html" class="media-left">
                                                <img alt="" src="../images/post_img2.jpg">
                                            </a>
                                            <div class="media-body"><a href="single_page.html" class="catg_title">Aliquam malesuada diam eget turpis varius 4</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="single_sidebar wow fadeInDown">
                        <h2><span>Sponsor</span></h2>
                        <a class="sideAdd" href="#">
                            <img src="../images/add_img.jpg" alt=""></a>
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
</asp:Content>
