<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPhysician.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
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
      <legend><h2>Add a Physician</h2></legend>
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
                             <td class="auto-style11">Specialty</td>
                             <td class="auto-style11">
                         <asp:TextBox ID="txtSpec" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Work Phone</td>
                             <td class="auto-style10">
                         <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="auto-style2"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtWorkPhone" ErrorMessage="Format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Format xxx-xxx-xxxx</asp:RegularExpressionValidator>
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
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style14">Salary</td>
                             <td class="auto-style14">
                         <asp:TextBox ID="txtSalary" runat="server" onkeypress="return onlyDotsAndNumbers(this,event);"></asp:TextBox>
                         
                             </td>
                         </tr>
                     </table>

                     

                     <asp:Label ID="lblMessage" runat="server" Font-Size="XX-Large"></asp:Label>

                     

                </td>
                <td>

                
                    <img ; alt="Louis' Pharmacy" class="auto-style1" align="middle" src="pics/louisPharm.png"/>
                </td>
            </tr>
        </table>

      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:button id="btnAddPhysician" runat="server" Text="Add Physician" input-type="submit" height="50px"/> </p>
    </fieldset>


</div>
</asp:Content>


