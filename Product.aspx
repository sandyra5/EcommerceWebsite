<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebAppEcommerce.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 443px;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            width: 418px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblcatna" runat="server" Font-Bold="True" Font-Size="Small" Text="Category Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownListCategory" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldcatname" runat="server" ControlToValidate="DropDownListCategory" ErrorMessage="Please select a category"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblprona" runat="server" Font-Bold="True" Font-Size="Small" Text="Product Name"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtprona" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorproname" runat="server" ControlToValidate="txtprona" ErrorMessage="Please enter a product name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lbldesc" runat="server" Font-Bold="True" Font-Size="Small" Text="Product description"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatordesc" runat="server" ControlToValidate="txtdesc" ErrorMessage="Please enter a description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblimg" runat="server" Font-Bold="True" Font-Size="Small" Text="Product Image"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:FileUpload ID="fuimg" runat="server" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorimg" runat="server" ControlToValidate="fuimg" ErrorMessage="Please upload a product image"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblprice" runat="server" Font-Bold="True" Font-Size="Small" Text="Product Price"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorprice" runat="server" ControlToValidate="txtprice" ErrorMessage="Please enter the price"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblstock" runat="server" Font-Bold="True" Font-Size="Small" Text="Product Stock"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtstock" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorstock" runat="server" ControlToValidate="txtstock" ErrorMessage="Please enter the stock"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnadd" runat="server" Font-Bold="True" Font-Size="Small" OnClick="btnadd_Click" Text="Add product" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblAdd" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
    </table>
</asp:Content>
