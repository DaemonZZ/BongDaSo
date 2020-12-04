﻿<%@ Page Title="Lịch Thi Đấu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lich.aspx.cs" Inherits="BongDaSo.Lich" %>

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
                        <div>


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
                                    <iframe width="100%" height="250" src="https://www.youtube.com/embed/Ttfs5YjsdzY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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