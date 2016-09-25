<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobApp.Web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application</title>
    <link href="css/design.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table-active">
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="label" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>First Name:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="first_Name" runat="server" class="form-control"></asp:TextBox>
                    </td>
                    <h3 runat="server">Application Form</h3>
                </tr>
                <tr>
                    <td>Last Name:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="last_name" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="contact" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email ID:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address1:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="address1" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address2:   
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="address2" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>City:    
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="city" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Select your State:
                    </td>
                    <td class="dropdown col-lg-5">
                        <asp:DropDownList ID="State" runat="server" class="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Select your Country:
                    </td>
                    <td class="col-lg-5">
                        <asp:DropDownList ID="DropDown" runat="server" class="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>LinkedIn Profile:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="LinkedIn" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Website:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="website" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>How did you hear about this job:
                    </td>
                    <td class="col-lg-5">
                        <asp:TextBox ID="referral" runat="server" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td class="col-lg-5">
                        <asp:RadioButtonList ID="gender" runat="server">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Please Identify your Race:
                    </td>
                    <td class="col-lg-5">
                        <asp:DropDownList ID="race" runat="server" class="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Veteran Status:
                    </td>
                    <td class="col-lg-12">
                        <asp:RadioButtonList ID="Veteran" runat="server" >
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Disability Status:
                    </td>
                    <td class="col-lg-7">
                        <asp:RadioButtonList ID="disability" runat="server">
                        </asp:RadioButtonList>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_submit" runat="server" Text="Submit Application" OnClick="btn_submit_Click" class="btn btn-success" OnClientClick="validate();"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
