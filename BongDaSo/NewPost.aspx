<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NewPost.aspx.cs" Inherits="BongDaSo.NewPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Post Thread</h1>
        <br />
    </div>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="GiaiDaus">
            </asp:LinqDataSource>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="TextBox1" Width="100%" placeholder="Thread Title" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="Giải đấu"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="tenGiai" DataValueField="id"></asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Loại Tin"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource2" DataTextField="tenLoai" DataValueField="id"></asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="LoaiTins">
                    </asp:LinqDataSource>
                </div>

            </div>
        </div>

</asp:Content>
