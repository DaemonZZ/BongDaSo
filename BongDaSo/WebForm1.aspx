<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BongDaSo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BongDaSo.BongDaSoDataContext" EntityTypeName="" OrderBy="ngayDang desc, gioDang desc, doUuTien desc" TableName="TinTucs">
            </asp:LinqDataSource>
        <div>
            <ul id="ticker01" class="news_sticker">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="LinqDataSource1" RepeatColumns="10" RepeatDirection="Horizontal" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False" ForeColor="White">
                                <ItemTemplate>
                                    <li><a href="#">
                                        <img src="images/news_thumbnail3.jpg" alt="">My First News Item</a></li>
                                    <li>
                                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                        <asp:Label ID="thumbLabel" runat="server" Text='<%# Eval("thumb") %>' />
                                    </li>
                                </ItemTemplate>
                            </asp:DataList>
                        </ul>
        </div>
    </form>
</body>
</html>
