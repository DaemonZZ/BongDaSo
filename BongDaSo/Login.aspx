<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BongDaSo.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="wrapper fadeInDown">
                    <div id="formContent">
                        <!-- Tabs Titles -->

                        <!-- Icon -->
                        <div class="fadeIn first">
                            <img src="images/login1.png" id="icon" alt="User Icon" />
                        </div>

                        <!-- Login Form -->
                        <form>
                            <asp:TextBox ID="txtLogin" class="fadeIn second" name="login" placeholder="Tên đăng nhập" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtPass" class="fadeIn third" type="password" name="login" placeholder="Mật khẩu"  runat="server"></asp:TextBox>
                            <asp:Button ID="btnLogin" class="fadeIn fourth" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />
                        </form>
                        <h5 style="color:#D26552; display:inline-block; font:bold">
                            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label></h5>

                        <!-- Remind Passowrd -->
                        <div id="formFooter">
                            <a class="underlineHover" href="#">Quên mật khẩu?</a>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
</asp:Content>
