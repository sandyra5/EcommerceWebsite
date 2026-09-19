<%@ Page Title="Order Invoice" Language="C#" MasterPageFile="~/Site1.master"
    AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs"
    Inherits="WebAppEcommerce.ViewBill" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        .invoice {
            width: 850px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        .header {
            text-align: center;
            margin-bottom: 25px;
        }

        .header h1 {
            margin: 0;
            color: #2c3e50;
        }

        .header h3 {
            margin-top: 5px;
            color: gray;
        }

        .info {
            width: 100%;
            margin-bottom: 20px;
        }

        .info td {
            padding: 8px;
        }

        .grid {
            width: 100%;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .total {
            width: 300px;
            float: right;
            margin-top: 15px;
        }

        .total td {
            padding: 8px;
            font-size: 17px;
        }

        .footer {
            clear: both;
            text-align: center;
            margin-top: 50px;
        }

        .btn {
            background: #007bff;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #0056b3;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="invoice">

        <div class="header">

            <h1>FOOTWEAR STORE</h1>
            <h3>ORDER INVOICE</h3>

        </div>

        <hr />

        <table class="info">

            <tr>

                <td><b>Bill No :</b></td>

                <td>
                    <asp:Label
                        ID="lblBillNo"
                        runat="server">
                    </asp:Label>
                </td>

                <td><b>Date :</b></td>

                <td>
                    <asp:Label
                        ID="lblDate"
                        runat="server">
                    </asp:Label>
                </td>

            </tr>


            <tr>

                <td><b>Customer :</b></td>

                <td>
                    <asp:Label
                        ID="lblName"
                        runat="server">
                    </asp:Label>
                </td>

                <td><b>Phone :</b></td>

                <td>
                    <asp:Label
                        ID="lblPhone"
                        runat="server">
                    </asp:Label>
                </td>

            </tr>


            <tr>

                <td><b>Address :</b></td>

                <td colspan="3">

                    <asp:Label
                        ID="lblAddress"
                        runat="server">
                    </asp:Label>

                </td>

            </tr>

        </table>


        <asp:GridView
            ID="GridViewBill"
            runat="server"
            CssClass="grid"
            AutoGenerateColumns="False"
            Width="100%"
            GridLines="None"
            BorderStyle="Solid"
            BorderWidth="1px"
            HeaderStyle-BackColor="#343A40"
            HeaderStyle-ForeColor="White">

            <Columns>

                <asp:BoundField
                    DataField="Product_name"
                    HeaderText="Product" />

                <asp:BoundField
                    DataField="Product_price"
                    HeaderText="Price" />

                <asp:BoundField
                    DataField="Quantity"
                    HeaderText="Quantity" />

                <asp:BoundField
                    DataField="Subtotal_amt"
                    HeaderText="Subtotal" />

            </Columns>

            <HeaderStyle
                BackColor="#343A40"
                ForeColor="White">
            </HeaderStyle>

        </asp:GridView>


        <table class="total">

            <tr>

                <td>
                    <b>Grand Total :</b>
                </td>

                <td>

                    ₹
                    <asp:Label
                        ID="lblGrandTotal"
                        runat="server">
                    </asp:Label>

                </td>

            </tr>

        </table>


        <div class="footer">

            <h3>Thank You For Shopping With Us!</h3>

            <br />

            <asp:Button
                ID="btnPayment"
                runat="server"
                Text="Payment"
                CssClass="btn"
                OnClick="btnPayment_Click"
                BackColor="Black"
                Font-Bold="True"
                Font-Size="Small"
                Height="40px"
                Width="138px" />

        </div>

    </div>

</asp:Content>