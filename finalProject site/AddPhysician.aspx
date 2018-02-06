<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPhysician.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                margin-left: 4px;
            }
            .auto-style3 {
                margin-left: 2px;
            }
        </style>

    <br />
        <!-- Physician Information-->
        <div>   
    <fieldset>
      <legend><h2>Add a Physician</h2></legend>
        <table>
            <tr>
                <td style="width:400px">
                     <p>First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="txtFname" ></asp:RequiredFieldValidator>

                         <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                     </p>

                     <p>Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                     </p>
                     <p>Middle Initial:&nbsp;
                         <asp:TextBox ID="txtMidinit" runat="server"></asp:TextBox>
                     </p>

                     <p>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtDOB" runat="server" CssClass="auto-style3"></asp:TextBox>
                     </p>
                     <p>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                     </p>

                     <p>Specialty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtSpec" runat="server"></asp:TextBox>
                     </p>
                     <p>Work Phone:&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="auto-style2"></asp:TextBox>
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
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                     </p>
                     <p>Salary:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtSalary" runat="server" onkeypress="return onlyDotsAndNumbers(this,event);"></asp:TextBox>
                         
                     </p>

                     

                </td>
                <td>

                
                    <img ; alt="Louis' Pharmacy" class="auto-style1" align="middle" src="pics/louisPharm.png"/>
                </td>
            </tr>
        </table>

      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:button id="btnAddPhysician" runat="server" Text="Add Physician" height="50px"/> </p>
    </fieldset>


</asp:Content>


