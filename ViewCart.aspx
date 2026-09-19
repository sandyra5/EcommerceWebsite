<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="WebAppEcommerce.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 780px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               <asp:GridView ID="GridViewCart"
                            runat="server"
                            AutoGenerateColumns="False"
                            DataKeyNames="Cart_id"
                            Width="100%"
                            GridLines="Horizontal"
                            CellPadding="10"
                            BorderWidth="1px"
                            BorderColor="LightGray" OnRowCancelingEdit="GridViewCart_RowCancelingEdit" OnRowDeleting="GridViewCart_RowDeleting" OnRowEditing="GridViewCart_RowEditing" OnRowUpdating="GridViewCart_RowUpdating">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Product_image" HeaderText="Product Image">
                            <ControlStyle Font-Bold="True" Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_name" HeaderText="Product Name">
                        <ControlStyle Font-Bold="True" /> <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Product_price" HeaderText="Price">
                        <ControlStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                        <ControlStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal">
                        <ControlStyle Font-Bold="True" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="Edit Item" ShowEditButton="True">
                        <ControlStyle Font-Bold="True" Font-Underline="True" ForeColor="Blue" />
                        </asp:CommandField>
                        <asp:CommandField HeaderText="Delete Item" ShowDeleteButton="True">
                        <ControlStyle Font-Bold="True" Font-Underline="True" ForeColor="Blue" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <table class="featured">
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnConfirm" runat="server" BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="49px" OnClick="btnConfirm_Click" Text="Confirm" Width="145px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
