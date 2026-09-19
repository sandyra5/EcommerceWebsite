<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site1.master"
    AutoEventWireup="true" CodeBehind="Payment.aspx.cs"
    Inherits="WebAppEcommerce.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .payment-panel {
            width: 600px;
            margin: 50px auto;
            padding: 25px;
            border: 1px solid #ccc;
        }

        .payment-table {
            width: 100%;
        }

        .payment-table td {
            padding: 8px;
        }

        .heading {
            text-align: center;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="payment-panel">

        <h2 class="heading">Payment</h2>

        <!-- ACCOUNT CHOICE -->

        <table class="payment-table">

            <tr>
                <td colspan="2">
                    <asp:Label
                        ID="lblquestion"
                        runat="server"
                        Text="Do you have an existing account?">
                    </asp:Label>
                </td>
            </tr>

            <tr>

                <td>

                    <asp:RadioButton
                        ID="rdoYes"
                        runat="server"
                        Text="Yes"
                        GroupName="AccountChoice"
                        AutoPostBack="true"
                        OnCheckedChanged="rdoYes_CheckedChanged" />

                </td>

                <td>

                    <asp:RadioButton
                        ID="rdoNo"
                        runat="server"
                        Text="No"
                        GroupName="AccountChoice"
                        AutoPostBack="true"
                        OnCheckedChanged="rdoNo_CheckedChanged" />

                </td>

            </tr>

        </table>


        <!-- EXISTING ACCOUNT PANEL -->

        <asp:Panel
            ID="pnlExisting"
            runat="server"
            Visible="false">

            <h3>Existing Account</h3>

            <table class="payment-table">

                <tr>

                    <td>
                        <asp:Label
                            ID="lblExistingAccNo"
                            runat="server"
                            Text="Account Number">
                        </asp:Label>
                    </td>

                    <td>
                        <asp:TextBox
                            ID="txtExistingAccNo"
                            runat="server">
                        </asp:TextBox>
                    </td>

                    <td>

                        <asp:RequiredFieldValidator
                            ID="rfvExistingAccNo"
                            runat="server"
                            ControlToValidate="txtExistingAccNo"
                            ErrorMessage="Enter account number"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>

                    <td></td>

                    <td>

                        <asp:Button
                            ID="btnPay"
                            runat="server"
                            Text="Pay"
                            OnClick="btnPay_Click" />

                    </td>

                    <td></td>

                </tr>

                <tr>

                    <td colspan="3">

                        <asp:Label
                            ID="lblPayment"
                            runat="server">
                        </asp:Label>

                    </td>

                </tr>

                <tr>

                    <td colspan="3">

                        <asp:Button
                            ID="btnFeedback"
                            runat="server"
                            Text="Give Feedback"
                            Visible="false"
                            OnClick="btnFeedback_Click" />

                        &nbsp;&nbsp;&nbsp;

                        <asp:LinkButton
                            ID="LinkButtonHome"
                            runat="server"
                            OnClick="LinkButtonHome_Click">
                            Continue shopping
                        </asp:LinkButton>

                    </td>

                </tr>

            </table>

        </asp:Panel>


        <!-- NEW ACCOUNT PANEL -->

        <asp:Panel
            ID="pnlNew"
            runat="server"
            Visible="false">

            <h3>New Account</h3>

            <table class="payment-table">

                <!-- ACCOUNT NAME -->

                <tr>

                    <td>

                        <asp:Label
                            ID="lblname"
                            runat="server"
                            Text="Account Name">
                        </asp:Label>

                    </td>

                    <td>

                        <asp:TextBox
                            ID="txtname"
                            runat="server">
                        </asp:TextBox>

                    </td>

                    <td>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="txtname"
                            ErrorMessage="Enter the name"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>


                <!-- ACCOUNT NUMBER -->

                <tr>

                    <td>

                        <asp:Label
                            ID="Label2"
                            runat="server"
                            Text="Account Number">
                        </asp:Label>

                    </td>

                    <td>

                        <asp:TextBox
                            ID="txtaccno"
                            runat="server">
                        </asp:TextBox>

                    </td>

                    <td>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="txtaccno"
                            ErrorMessage="Enter the Account number"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>


                <!-- BALANCE -->

                <tr>

                    <td>

                        <asp:Label
                            ID="Label3"
                            runat="server"
                            Text="Account Balance">
                        </asp:Label>

                    </td>

                    <td>

                        <asp:TextBox
                            ID="txtbalance"
                            runat="server">
                        </asp:TextBox>

                    </td>

                    <td>

                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtbalance"
                            ErrorMessage="Enter the Balance"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </td>

                </tr>


                <!-- ADD ACCOUNT -->

                <tr>

                    <td></td>

                    <td>

                        <asp:Button
                            ID="btnadd"
                            runat="server"
                            Text="Add Account"
                            OnClick="btnadd_Click" />

                    </td>

                    <td></td>

                </tr>


                <!-- MESSAGE -->

                <tr>

                    <td colspan="3">

                        <asp:Label
                            ID="lblcheck"
                            runat="server"
                            ForeColor="Red">
                        </asp:Label>

                    </td>

                </tr>

            </table>

        </asp:Panel>

    </div>

</asp:Content>