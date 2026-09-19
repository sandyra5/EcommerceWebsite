<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="WebAppEcommerce.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 3px;
            margin-left: 514px;
        }
        .auto-style3 {
            width: 501px;
        }
        .auto-style5 {
            width: 873px;
        }
        .auto-style6 {
            margin-left: 340px;
        }
        .auto-style7 {
            width: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="featured">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:GridView ID="CategoryGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_id" OnRowCancelingEdit="CategoryGrid_RowCancelingEdit" OnRowEditing="CategoryGrid_RowEditing" OnRowUpdating="CategoryGrid_RowUpdating" CssClass="auto-style6">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" >
                        <ControlStyle Font-Underline="True" ForeColor="Blue" />
                        </asp:CommandField>
                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                        <asp:BoundField DataField="CategoryDescription" HeaderText="Category Description" />
                        <asp:TemplateField HeaderText="Category Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FuEdit" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl='<%# Eval("CategoryImage") %>' Width="177px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlstatus" runat="server" SelectedValue='<%# Bind("Category_status") %>'>
                                    <asp:ListItem>available</asp:ListItem>
                                    <asp:ListItem>not available</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category_status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
