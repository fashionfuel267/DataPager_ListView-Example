<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B1_C25_W01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>List View Example</h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <LayoutTemplate>
 <table border="1" style="" >
  <tr style="background-color:#E5E5FE">
   <th ><asp:LinkButton ID="lnkId" runat="server">Name</asp:LinkButton></th>
   <th ><asp:LinkButton ID="lnkType" runat="server">Unit</asp:LinkButton></th>
        <th ><asp:LinkButton ID="LinkButton1" runat="server">Price</asp:LinkButton></th>
   <th></th>
  </tr>
  <tr id="itemPlaceholder" runat="server"></tr>
 </table>
</LayoutTemplate>
<ItemTemplate >
    <tr style="background-color:thistle">
        <td>
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("MeasurmentUnit") %>'></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
        </td>
         <td>
            
        </td>
    </tr>

    
</ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color:tomato">
        <td>
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("MeasurmentUnit") %>'></asp:Label>
        </td>
         <td>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
        </td>
         <td>
            
        </td>
    </tr>
                </AlternatingItemTemplate>
                
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbCafe %>" 
                SelectCommand="SELECT [Name], [Description], [Price], [MeasurmentUnit] FROM [Product] ORDER BY [Name]">
            </asp:SqlDataSource>
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" 
                PageSize="3">
                <Fields>
                    <asp:NextPreviousPagerField ShowFirstPageButton="true"  
                        ShowLastPageButton="true" ShowNextPageButton="true"  
                        ShowPreviousPageButton="true"/>
                    <asp:NumericPagerField  ButtonCount="3" />
                </Fields>

            </asp:DataPager>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
