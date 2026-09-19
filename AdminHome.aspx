<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebAppEcommerce.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 592px;
        }
        .auto-style2 {
            margin-left: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLinkUser" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/UserManage.aspx">User Management</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="lblcat" runat="server" Font-Bold="True" Font-Size="Small" Text="Add Category"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="134px" ImageUrl="~/Admhome/category.jpg" PostBackUrl="~/Category.aspx" Width="157px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/EditCategory.aspx">Edit Category</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="lblprod" runat="server" Font-Bold="True" Font-Size="Small" Text="Add Products"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style2" Height="110px" ImageUrl="~/Admhome/Product.png" PostBackUrl="~/Product.aspx" Width="152px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/EditProduct.aspx">Edit Product</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLinkfeedbk" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ViewFeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
