<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddPatient.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 917px;
        }
        .auto-style4 {
            width: 452px;
        }
        .auto-style5 {
            margin-left: 2px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            margin-left: 8px;
        }
        .auto-style8 {
            margin-left: 4px;
        }
        .auto-style9 {
            width: 132px;
            margin-left: 13px;
        }
        .auto-style10 {
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <fieldset>
      <legend><h2>Add Patient</h2></legend>
        <table>
            <tr>
                <td class="auto-style4">
                     <p>First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtFname" runat="server" ></asp:TextBox>
                     </p>

                     <p>Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtLname" runat="server" CssClass="auto-style10"></asp:TextBox>
                     </p>
                     <p>Middle Initial:&nbsp;
                         <asp:TextBox ID="txtMidinit" runat="server" CssClass="auto-style8"></asp:TextBox>
                     </p>

                     <p>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" class="auto-style9" />
                         <asp:TextBox ID="txtDOB" runat="server" ValidateRequestMode="Enabled" maxlength="10" Height="16px"></asp:TextBox>
                         
                     <p>Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtGender" runat="server" CssClass="auto-style8"></asp:TextBox>
                         
                     </p>

                     <p>Home Phone:
                         <asp:TextBox ID="txtHomePhone" runat="server" CssClass="auto-style7"></asp:TextBox>
                     </p>
                     <p>Cell Phone:&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtCellPhone" runat="server" CssClass="auto-style7" ></asp:TextBox>

                     </p>
                     <p>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style6"></asp:TextBox>
                     </p>

                     <p>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="txtCity" runat="server" CssClass="auto-style5"></asp:TextBox>
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

