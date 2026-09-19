<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="WebAppEcommerce.ViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 495px;
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
            <asp:GridView ID="GridViewFeedback" runat="server" AutoGenerateColumns="False" CssClass="auto-style1">
                <Columns>
                    <asp:BoundField DataField="Product_id" HeaderText="Product Id" />
                    <asp:BoundField DataField="Feed_msg" HeaderText="Feedback" />
                    <asp:TemplateField HeaderText="Reply">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButtonReply" runat="server" CommandArgument='<%# Eval("Feed_id") %>' Font-Bold="True" Font-Underline="True" ForeColor="Blue" OnCommand="LinkButtonReply_Command">Reply</asp:LinkButton>
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
