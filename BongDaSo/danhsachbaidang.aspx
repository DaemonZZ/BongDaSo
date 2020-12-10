<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="danhsachbaidang.aspx.cs" Inherits="BongDaSo.danhsachbaidang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4><asp:Label ID="Label1" runat="server" Text="Danh sách bài đăng"></asp:Label></h4>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" PageSize="5">
            <Columns>
                <asp:ImageField DataImageUrlField="thumb" DataImageUrlFormatString="images/{0}" HeaderText="Thumb">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Desc.aspx?ID={0}" DataTextField="title" HeaderText="Tiêu đề">
                <ItemStyle BackColor="White" Font-Italic="True" Font-Underline="True" ForeColor="#0099FF" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="ngayDang" HeaderText="Ngày Đăng" SortExpression="ngayDang" />
                <asp:BoundField DataField="luotXem" HeaderText="Lượt xem" SortExpression="luotXem" />
                <asp:BoundField DataField="tinhTrang" HeaderText="Tình trạng" SortExpression="tinhTrang" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/images/edit.png" PostBackUrl='<%# Eval("id", "NewPost.aspx?ID={0}") %>' Text="Chỉnh sửa" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/del.png" OnClientClick="return confirm(&quot;Bạn chắc chắn muốn xóa ?&quot;)" Text="Xóa" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="White" BorderStyle="Solid" Font-Underline="True" ForeColor="#00CCFF" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EnableDelete="True" EntityTypeName="" OrderBy="ngayDang desc" TableName="TinTucs" Where="id_User == @id_User">
            <WhereParameters>
                <asp:SessionParameter DefaultValue="0" Name="id_User" SessionField="userid" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
    
</asp:Content>
