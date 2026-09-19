<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebAppEcommerce.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 670px;
        }
        .auto-style14 {
            width: 670px;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            width: 354px;
        }
        .auto-style20 {
            width: 354px;
            height: 32px;
        }
        .auto-style21 {
            width: 284px;
        }
        .auto-style22 {
            width: 284px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" Text="Add Category"></asp:Label>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style21">
                <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="Small" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ControlToValidate="txtname" ErrorMessage="please enter a Category name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style22"></td>
            <td class="auto-style20"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="lbldesc" runat="server" Font-Bold="True" Font-Size="Small" Text="Category description"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatordesc" runat="server" ControlToValidate="txtdesc" ErrorMessage="Please enter a description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="lblimg" runat="server" Font-Bold="True" Font-Size="Small" Text="Image"></asp:Label>
            </td>
            <td class="auto-style18">
                        <asp:FileUpload ID="fuImg" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorpho" runat="server" ControlToValidate="fuImg" ErrorMessage="Please upload a category image"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Font-Size="Small" Height="34px" OnClick="btnAdd_Click" Text="Add" Width="107px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">
                <asp:Label ID="lblAdd" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
