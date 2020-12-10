<%@ Page Title="Bài Đăng Mới" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NewPost.aspx.cs" Inherits="BongDaSo.NewPost1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="assets/js/nicEdit.js" type="text/javascript"></script>
    <script type="text/javascript">
        bkLib.onDomLoaded(function () {
            new nicEditor({ fullPanel: true }).panelInstance('area2');
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" TableName="TinTucs" Where="id == @id">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="ID" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <h3 class="ml-3">Thêm bài mới</h3>
    <br />
    <div class="container">
        <div class="col-10">
            <div class="row">
                <h4 class="ml-3">
                    <asp:Label ID="Label1" runat="server" Text="Tiêu đề:" CssClass="mr-5"></asp:Label></h4>
                <asp:TextBox ID="txtTitle" runat="server" Width="80%"></asp:TextBox>
            </div>

        </div>
        <div class="row mt-3 ml-3 ">
            <div class="col-4">
                <h5>Nội dung:</h5>
            </div>
            <div class="col-4">
                <h5>Loại tin:<asp:DropDownList ID="cbLoai" DataTextField="tenLoai" DataValueField="id" runat="server" OnSelectedIndexChanged="cbLoai_SelectedIndexChanged">
                </asp:DropDownList>
                </h5>
            </div>
            <div class="col-4">
                <h5>Danh mục:<asp:DropDownList ID="cbDanhMuc" DataTextField="tenGiai" DataValueField="id" runat="server">
                </asp:DropDownList>
                </h5>
            </div>

        </div>
        <div class="row mt-2 ml-3">
                <textarea id="area2" rows="10" name="area2" >
                </textarea>
        </div>
        <div class="row">
            <div class="col-6">
                <h5 class="ml-5 mt-3">Tóm tắt nội dung:<asp:TextBox ID="txtTomTat" runat="server" Width="100%" CssClass="mt-2"></asp:TextBox>
                </h5>
            </div>
            <div class="col-6 mt-4">
                <h5>Ảnh đại diện</h5><asp:FileUpload ID="imgUp" runat="server" />
            </div>
                   
        </div>
        <div class="row">
            <div class="mx-auto mt-3">
                <asp:Button ID="btnPreview" runat="server" Text="Xem Trước" OnClick="btnPreview_Click" />
                <asp:Button ID="btnSubmit" runat="server" Text="Gửi bài" CssClass="btn-info" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>

</asp:Content>
