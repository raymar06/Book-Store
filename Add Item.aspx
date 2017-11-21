<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Item.aspx.cs" Inherits="BookStore2.Add_Item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
    <div style="height: 475px">
    
    
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 40px; top: 90px; position: absolute; height: 439px; width: 1600px; margin-top: 0px">
            <asp:ListView ID="ListView1" runat="server" style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 63px; width: 293px" DataKeyNames="BookID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="text-align: center; font-family: Corbel; font-size: 25px;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete Book" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Update Book" />
                        </td>
                        <td>
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookDescLabel" runat="server" Text='<%# Eval("BookDesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Eval("PublisherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookQuantityLabel" runat="server" Text='<%# Eval("BookQuantity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded","{0:MMM  d, yyyy }") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:0,0.00}") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                      <tr style="text-align: center; font-family: Corbel; font-size: 25px;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" />
                        </td>
                        <td>
                            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookDescTextBox" runat="server" Text='<%# Bind("BookDesc") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PublisherNameTextBox" runat="server" Text='<%# Bind("PublisherName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookQuantityTextBox" runat="server" Text='<%# Bind("BookQuantity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded","{0:MMM  d, yyyy }") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price","{0:0,0.00}") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                             <table runat="server" style="text-align: center; font-family: Corbel; font-size: 25px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="text-align: center; font-family: Corbel; font-size: 25px;">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Add Book" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookDescTextBox" runat="server" Text='<%# Bind("BookDesc") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PublisherNameTextBox" runat="server" Text='<%# Bind("PublisherName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookQuantityTextBox" runat="server" Text='<%# Bind("BookQuantity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded","{0:MMM  d, yyyy }") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price","{0:0,0.00}") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="text-align: center; font-family: Corbel; font-size: 25px;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete Book" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Update Book" />
                        </td>
                        <td>
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookDescLabel" runat="server" Text='<%# Eval("BookDesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Eval("PublisherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookQuantityLabel" runat="server" Text='<%# Eval("BookQuantity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded","{0:MMM  d, yyyy }") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:0,0.00}") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="background-color:#2C3539; color: white; text-align: center; text-transform: uppercase; font-family: Corbel; font-size: 22pt; margin-right: 5px; margin-left: 5px;">
                                        <th runat="server"></th>
                                        <th runat="server">Book ID</th>
                                        <th runat="server">Book Name</th>
                                        <th runat="server">Book Desc</th>
                                        <th runat="server">Author</th>
                                        <th runat="server">Publisher Name</th>
                                        <th runat="server">Book Quantity</th>
                                        <th runat="server">Date Added</th>
                                        <th runat="server">Price</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                           <td runat="server" style="font-family: Corbel; font-size:x-large; border-radius: 2px; text-transform: uppercase; padding: 3px; cursor: pointer; text-align: center;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                     <tr style="text-align: center; font-family: Corbel; font-size: 25px;">
">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete Book" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Update Book" />
                        </td>
                        <td>
                            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookDescLabel" runat="server" Text='<%# Eval("BookDesc") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Eval("PublisherName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookQuantityLabel" runat="server" Text='<%# Eval("BookQuantity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded","{0:MMM  d, yyyy }") %>' />
                        </td>
                         <td>
                             <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:0,0.00}") %>' />
                         </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString2 %>" SelectCommand="SELECT * FROM [Bookinfo]" DeleteCommand="DELETE FROM [Bookinfo] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Bookinfo] ([BookName], [BookDesc], [Author], [PublisherName], [BookQuantity], [DateAdded], [Price]) VALUES (@BookName, @BookDesc, @Author, @PublisherName, @BookQuantity, @DateAdded, @Price)" UpdateCommand="UPDATE [Bookinfo] SET [BookName] = @BookName, [BookDesc] = @BookDesc, [Author] = @Author, [PublisherName] = @PublisherName, [BookQuantity] = @BookQuantity, [DateAdded] = @DateAdded, [Price] = @Price WHERE [BookID] = @BookID">
                <DeleteParameters>
                    <asp:Parameter Name="BookID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="BookDesc" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="PublisherName" Type="String" />
                    <asp:Parameter Name="BookQuantity" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DateAdded" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="BookDesc" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="PublisherName" Type="String" />
                    <asp:Parameter Name="BookQuantity" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DateAdded" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="BookID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSourceSearch" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString2 %>" SelectCommand="SELECT * FROM [Bookinfo]"></asp:SqlDataSource>
        </asp:Panel>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 43px; top: 47px; position: absolute; height: 38px; width: 144px;" Text="Search Author" BorderStyle="Solid" Font-Bold="True" Font-Names="Corbel" Font-Size="Large" />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 201px; top: 49px; position: absolute; height: 28px; width: 137px;" Font-Bold="True" Font-Names="Corbel" Font-Size="Large"></asp:TextBox>
    
    
        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Corbel" Font-Size="Large" style="z-index: 1; left: 352px; top: 48px; position: absolute; height: 37px; width: 71px" Text="Clear" OnClick="Button3_Click" />
    
    
    </div>
      
    </form>
</body>
</html>
