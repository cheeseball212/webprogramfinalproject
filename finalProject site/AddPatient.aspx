<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPatient.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 917px;
        }
<<<<<<< HEAD
        .auto-style4 {
        width: 374px;
    }
    .auto-style5 {
        width: 500px;
        margin-right: 109px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <style type="text/css">
        .style2 {
            width: 326px;
            margin-left: 26px;         
            margin-top: 0px;
            align-items:flex-end;
        }
        .auto-style1 {
            height: 125%;
            width: 170%;
            margin-left: 65px;
            margin-top: 61px;
            }
            .auto-style2 {
                margin-left: 0px;
            }
            .auto-style3 {
                margin-left: 2px;
            }
        .auto-style4 {
        width: 476px;
    }
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 35px;
    }
    .auto-style8 {
        height: 40px;
    }
    .auto-style9 {
        height: 41px;
    }
    .auto-style10 {
        height: 42px;
    }
    .auto-style11 {
        height: 33px;
    }
    .auto-style12 {
        height: 36px;
    }
    .auto-style13 {
        height: 37px;
    }
    .auto-style14 {
        height: 38px;
    }
        </style>

    <br />
        <!-- Physician Information-->
        <div>   
    <fieldset>
      <legend><h2>Add a Patient</h2></legend>
        <table>
            <tr>
                <td class="auto-style4">
                     <table class="auto-style5">
                         <tr>
                             <td class="auto-style12">First Name</td>
                             <td class="auto-style12">
                         
                         <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" Display="Dynamic" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Invalid format!</asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style13">Last Name</td>
                             <td class="auto-style13">
                         <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">Invalid format!</asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">Middle Name</td>
                             <td class="auto-style6">
                         <asp:TextBox ID="txtMidinit" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style11">Date of Birth</td>
                             <td class="auto-style11">
                         <asp:TextBox ID="txtDOB" runat="server" CssClass="auto-style3"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style12">Gender</td>
                             <td class="auto-style12">
                         <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Home Phone</td>
                             <td class="auto-style10">
                         <asp:TextBox ID="txtHomePhone" runat="server" CssClass="auto-style2"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtHomePhone" ErrorMessage="Format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Format xxx-xxx-xxxx</asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Cell Phone</td>
                             <td class="auto-style10">
                         <asp:TextBox ID="txtCellPhone" runat="server" CssClass="auto-style2"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCellPhone" ErrorMessage="Format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Format xxx-xxx-xxxx</asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style9">Address</td>
                             <td class="auto-style9">
                         <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style6">City</td>
                             <td class="auto-style6">
                         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style8">State</td>
                             <td class="auto-style8">
                         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style8">Zip</td>
                             <td class="auto-style8">
                         <asp:TextBox ID="txtZip" runat="server" onkeypress="CheckNumeric(event);" xmlns:asp="#unknown" maxlength="5"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?">Invalid format!</asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style12">Email</td>
                             <td class="auto-style12">
=======
        .auto-style2 {
            margin-left: 13px;
        }
        .auto-style3 {
            margin-left: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <fieldset>
      <legend><h2>Add Patient</h2></legend>
        <table>
            <tr>
                <td style="width:400px">
                     <p>First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtFname" runat="server" ></asp:TextBox>
                     </p>

                     <p>Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                     </p>
                     <p>Middle Initial:&nbsp;
                         <asp:TextBox ID="txtMidinit" runat="server"></asp:TextBox>
                     </p>

                     <p>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" />
                         <asp:TextBox ID="txtDOB" runat="server" ValidateRequestMode="Enabled" maxlength="10"></asp:TextBox>
                         
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
                         <asp:TextBox ID="txtZip" runat="server" onkeypress="CheckNumeric(event);" xmlns:asp="#unknown" maxlength="5"></asp:TextBox>
                     </p>

                     <p>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
>>>>>>> cbcd6ddab691f350bc10741516a9fb9a41743517
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style14">&nbsp;</td>
                             <td class="auto-style14">
                                 &nbsp;</td>
                         </tr>
                     </table>

                     

<<<<<<< HEAD
                     <asp:Label ID="lblMessage" runat="server" Font-Size="XX-Large"></asp:Label>

=======
>>>>>>> cbcd6ddab691f350bc10741516a9fb9a41743517
                     

                </td>
                <td>

                
                    <img ; alt="Louis' Pharmacy" class="auto-style1" align="middle" src="pics/louisPharm.png"/>
                </td>
            </tr>
        </table>

      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<<<<<<< HEAD
          <asp:button id="btnAddPatient" runat="server" Text="Add Patient" height="50px" type="submit"/> </p>
    

       </div>
=======
          <asp:button id="btnAddPatient" runat="server" Text="Add Physician" height="50px"/> </p>
    </fieldset>
>>>>>>> cbcd6ddab691f350bc10741516a9fb9a41743517
</asp:Content>

