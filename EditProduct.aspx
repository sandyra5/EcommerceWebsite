<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="WebAppEcommerce.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 508px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="ProductGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_id" OnRowCancelingEdit="ProductGrid_RowCancelingEdit" OnRowEditing="ProductGrid_RowEditing" OnRowUpdating="ProductGrid_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowEditButton="True">
                        <ControlStyle Font-Bold="False" Font-Underline="True" ForeColor="Blue" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                        <asp:BoundField DataField="Product_description" HeaderText="Product Description" />
                        <asp:BoundField DataField="Product_price" HeaderText="Product Price" />
                        <asp:BoundField DataField="Product_stock" HeaderText="Product Stock" />
                        <asp:TemplateField HeaderText="Product Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="fuImg" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl='<%# Eval("Product_image") %>' Width="164px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlstatus" runat="server" SelectedValue='<%# Bind("Product_status") %>'>
                                    <asp:ListItem>available</asp:ListItem>
                                    <asp:ListItem>not available</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
