<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminReply.aspx.cs" Inherits="WebAppEcommerce.AdminReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 410px;
    }
    .auto-style2 {
        width: 175px;
    }
    .auto-style3 {
        width: 276px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="X-Small" Text="User's Name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
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
        <td class="auto-style2">
            <asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Size="X-Small" Text="Email"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
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
        <td class="auto-style2">
            <asp:Label ID="lblsub" runat="server" Font-Bold="True" Font-Size="X-Small" Text="Subject"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtsub" runat="server" TextMode="MultiLine"></asp:TextBox>
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
        <td class="auto-style2">
            <asp:Label ID="lblreply" runat="server" Font-Bold="True" Font-Size="X-Small" Text="Reply Message"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine"></asp:TextBox>
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
            <asp:Button ID="btnReply" runat="server" BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="45px" OnClick="btnReply_Click" Text="Send Mail" Width="111px" />
        </td>
        <td>
            <asp:Label ID="lblmsg" runat="server" Text="msg"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
