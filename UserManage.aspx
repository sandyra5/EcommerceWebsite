<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="WebAppEcommerce.UserManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .user-management {
            width: 95%;
            margin: 40px auto;
        }

        .user-heading {
            text-align: center;
            margin-bottom: 25px;
        }

        .user-grid {
            width: 100%;
        }

        .user-grid th,
        .user-grid td {
            padding: 10px;
            text-align: center;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="user-management">

        <h2 class="user-heading">User Management</h2>

        <asp:GridView
            ID="GridViewUsers"
            runat="server"
            CssClass="user-grid"
            AutoGenerateColumns="False"
            Width="100%"
            DataKeyNames="User_id"
            OnRowCancelingEdit="GridViewUsers_RowCancelingEdit"
            OnRowEditing="GridViewUsers_RowEditing"
            OnRowUpdating="GridViewUsers_RowUpdating">

            <Columns>

                <asp:BoundField
                    DataField="User_id"
                    HeaderText="User Id" />

                <asp:BoundField
                    DataField="Name"
                    HeaderText="Name" />

                <asp:BoundField
                    DataField="Email"
                    HeaderText="Email" />

                <asp:BoundField
                    DataField="Phone"
                    HeaderText="Phone No" />

                <asp:BoundField
                    DataField="Address"
                    HeaderText="Address" />

                <asp:TemplateField HeaderText="Status">

                    <ItemTemplate>

                        <asp:Label
                            ID="Label1"
                            runat="server"
                            Text='<%# Eval("User_status") %>'>
                        </asp:Label>

                    </ItemTemplate>

                    <EditItemTemplate>

                        <asp:DropDownList
                            ID="ddlStatus"
                            runat="server"
                            SelectedValue='<%# Bind("User_status") %>'>

                            <asp:ListItem>active</asp:ListItem>
                            <asp:ListItem>inactive</asp:ListItem>

                        </asp:DropDownList>

                    </EditItemTemplate>

                </asp:TemplateField>


                <asp:CommandField ShowEditButton="True">

                    <ControlStyle
                        Font-Underline="True"
                        ForeColor="Blue" />

                </asp:CommandField>

            </Columns>

        </asp:GridView>

    </div>

</asp:Content>