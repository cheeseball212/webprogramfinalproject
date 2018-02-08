<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPatient.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                     </p>


                     

                </td>
                <td>

                
                    <img ; alt="Louis' Pharmacy" class="auto-style1" align="middle" src="pics/louisPharm.png"/>
                </td>
            </tr>
        </table>

      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:button id="btnAddPatient" runat="server" Text="Add Physician" height="50px"/> </p>
    </fieldset>
</asp:Content>

