<%@ Page Language="C#" MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="Feedback.aspx.cs"
    Inherits="WebAppEcommerce.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            margin-left: 459px;
        }

        .auto-style3 {
            width: 1563px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:80%; margin:50px auto;">

        <h2 style="text-align:center;">My Purchased Products</h2>

        <asp:GridView
            ID="GridViewFeedbck"
            runat="server"
            AutoGenerateColumns="False"
            Width="100%">

            <Columns>

                <asp:ImageField
                    DataImageUrlField="Product_Image"
                    HeaderText="Product">
                </asp:ImageField>

                <asp:BoundField
                    DataField="Product_name"
                    HeaderText="Product Name" />

                <asp:BoundField
                    DataField="Product_description"
                    HeaderText="Description" />

                <asp:TemplateField HeaderText="Feedback">

                    <ItemTemplate>

                        <asp:Button
                            ID="btnfeedbck"
                            runat="server"
                            Text="Send Feedback"
                            CommandArgument='<%# Eval("Product_id") %>'
                            OnCommand="btnfeedbck_Command" />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>

    </div>

</asp:Content>