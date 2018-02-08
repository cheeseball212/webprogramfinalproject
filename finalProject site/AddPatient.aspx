﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPatient.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 917px;
        }
        .auto-style2 {
            margin-left: 13px;
        }
        .auto-style3 {
            margin-left: 12px;
        }
        .auto-style4 {
            width: 526px;
        }
        .auto-style5 {
            margin-left: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtFName" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="txtLName" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="txtMidinit" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="txtDOB" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  ControlToValidate="txtGender" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  ControlToValidate="txtHomePhone" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtCellPhone" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtCity" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtState" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtZip" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"  ErrorMessage="FUCK ME" ControlToValidate="txtEmail" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
    <fieldset>
      <legend><h2>Add Patient</h2></legend>
        <table style="width:500px">
            <tr>
                <td class="auto-style4">
                     <p>First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                         
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                         
                     </p>

                     <p>Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtLName" runat="server" CssClass="auto-style5"></asp:TextBox>
                     </p>
                     <p>Middle Initial:&nbsp;
                         <asp:TextBox ID="txtMidinit" runat="server"></asp:TextBox>
                     </p>

                     <p>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtDOB" runat="server" maxlength="10"></asp:TextBox>
                         
                     <p>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                         
                     </p>

                     <p>Home Phone:
                         <asp:TextBox ID="txtHomePhone" runat="server" CssClass="auto-style2"></asp:TextBox>
                     </p>
                     <p>Cell Phone:&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtCellPhone" runat="server" CssClass="auto-style3" ></asp:TextBox>

                     </p>
                     <p>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                     </p>

                     <p>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                     </p>
                     <p>State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                     </p>
                     <p>ZIP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtZip" runat="server" maxlength="5"></asp:TextBox>
                     </p>

                     <p>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                     </p>


                    

                </td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td>

                
                    <img ; alt="Louis' Pharmacy" class="auto-style1" align="middle" src="pics/louisPharm.png"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">

                </td>
            </tr>
        </table>

      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:button id="btnAddPatient" runat="server" Text="Add Physician" height="50px" type="submit"/> </p>
    </fieldset>

</asp:Content>

