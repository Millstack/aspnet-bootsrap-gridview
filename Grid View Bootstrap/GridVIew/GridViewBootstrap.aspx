﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridViewBootstrap.aspx.cs" Inherits="GridVIew_GridViewBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView Bootstrap</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script type="text/javascript" src="JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card no-b  no-r">
            <div class="card-body">
                <asp:GridView ShowHeaderWhenEmpty="true" ID="GridMenu" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover text-center">
                    <HeaderStyle CssClass="kt-shape-bg-color-3" />
                    <Columns>
                        <asp:TemplateField ControlStyle-CssClass="col-xs-1" HeaderText="Sr.No">
                            <ItemTemplate>
                                <asp:HiddenField ID="id" runat="server" Value="id" />
                                <span>
                                    <%#Container.DataItemIndex + 1%>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MenuText" HeaderText="Menu Name" SortExpression="MenuText" ItemStyle-CssClass="col-xs-3" />
                        <asp:BoundField DataField="MenuParent" HeaderText="Parent Menu Code" SortExpression="MenuParent" ItemStyle-CssClass="col-xs-3" />
                        <asp:BoundField DataField="MenuCode" HeaderText="Menu Code" SortExpression="MenuCode" ItemStyle-CssClass="col-xs-2" />
                        <asp:BoundField DataField="Publish" HeaderText="Publish" SortExpression="Publish" ItemStyle-CssClass="col-xs-2" />
                    </Columns>
                </asp:GridView> 
            </div>
        </div>
    </form>
</body>
</html>
