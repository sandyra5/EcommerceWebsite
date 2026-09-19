<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingleProduct.aspx.cs" Inherits="WebAppEcommerce.SingleProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 358px;
        }
        .auto-style4 {
            height: 59px;
        }
        .auto-style5 {
            width: 358px;
            height: 59px;
        }
        .auto-style6 {
            height: 72px;
        }
        .auto-style7 {
            width: 358px;
            height: 72px;
        }
        .auto-style8 {
            width: 200px;
        }
        .auto-style9 {
            width: 200px;
            height: 59px;
        }
        .auto-style10 {
            width: 200px;
            height: 72px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            width: 358px;
            height: 37px;
        }
        .auto-style13 {
            width: 200px;
            height: 37px;
        }
        .auto-style14 {
            width: 150px;
        }
        .auto-style15 {
            margin-bottom: 44;
        }
        .auto-style16 {
            height: 255px;
        }
        .auto-style17 {
            width: 358px;
            height: 255px;
        }
        .auto-style18 {
            width: 200px;
            height: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Image ID="ImgProduct" runat="server" Height="253px" Width="362px" />
            </td>
            <td class="auto-style18">
                </td>
            <td class="auto-style16">
                <table class="featured">
                    <tr>
                        <td class="auto-style14">
                <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="Small" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Label ID="lbldes" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Label ID="lblprice" runat="server" Font-Bold="True" Font-Size="Small" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Quantity"></asp:Label>
                <asp:DropDownList ID="ddlQuantity" runat="server" Height="45px">
                </asp:DropDownList>
                        </td>
                        <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlQuantity" ErrorMessage="Select the Quantity"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Button ID="btnaddtocart" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" Text="Add to Cart" Height="37px" Width="187px" OnClick="btnaddtocart_Click" CssClass="auto-style15" Font-Size="Small" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                <asp:Button ID="btncontinue" runat="server" BackColor="Black" Font-Bold="True" Text="Continue" Height="37px" PostBackUrl="~/UserHome.aspx" Width="187px" Font-Size="Small" ForeColor="White" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:Button ID="btnviewcart" runat="server" BackColor="Black" Font-Bold="True" Text="View cart" Height="37px" OnClick="btnviewcart_Click" Width="187px" Font-Size="Small" ForeColor="White" />
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style10">
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
