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
                            <asp:ListItem Text="Select State" Value="-1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="AL" Value="1"></asp:ListItem>
                            <asp:ListItem Text="AK" Value="2"></asp:ListItem>
                            <asp:ListItem Text="AZ" Value="3"></asp:ListItem>
                            <asp:ListItem Text="AR" Value="4"></asp:ListItem>
                            <asp:ListItem Text="CA" Value="5"></asp:ListItem>
                            <asp:ListItem Text="CO" Value="6"></asp:ListItem>
                            <asp:ListItem Text="CT" Value="7"></asp:ListItem>
                            <asp:ListItem Text="DE" Value="8"></asp:ListItem>
                            <asp:ListItem Text="FL" Value="9"></asp:ListItem>
                            <asp:ListItem Text="GA" Value="10"></asp:ListItem>
                            <asp:ListItem Text="HI" Value="11"></asp:ListItem>
                            <asp:ListItem Text="ID" Value="12"></asp:ListItem>
                            <asp:ListItem Text="IL" Value="13"></asp:ListItem>
                            <asp:ListItem Text="IN" Value="14"></asp:ListItem>
                            <asp:ListItem Text="IA" Value="15"></asp:ListItem>
                            <asp:ListItem Text="KS" Value="16"></asp:ListItem>
                            <asp:ListItem Text="KY" Value="17"></asp:ListItem>
                            <asp:ListItem Text="LA" Value="18"></asp:ListItem>
                            <asp:ListItem Text="ME" Value="19"></asp:ListItem>
                            <asp:ListItem Text="MD" Value="20"></asp:ListItem>
                            <asp:ListItem Text="MA" Value="21"></asp:ListItem>
                            <asp:ListItem Text="MI" Value="22"></asp:ListItem>
                            <asp:ListItem Text="MN" Value="23"></asp:ListItem>
                            <asp:ListItem Text="MS" Value="24"></asp:ListItem>
                            <asp:ListItem Text="MO" Value="25"></asp:ListItem>
                            <asp:ListItem Text="MT" Value="26"></asp:ListItem>
                            <asp:ListItem Text="NE" Value="27"></asp:ListItem>
                            <asp:ListItem Text="NV" Value="28"></asp:ListItem>
                            <asp:ListItem Text="NH" Value="29"></asp:ListItem>
                            <asp:ListItem Text="NJ" Value="30"></asp:ListItem>
                            <asp:ListItem Text="NM" Value="31"></asp:ListItem>
                            <asp:ListItem Text="NY" Value="32"></asp:ListItem>
                            <asp:ListItem Text="NC" Value="33"></asp:ListItem>
                            <asp:ListItem Text="ND" Value="34"></asp:ListItem>
                            <asp:ListItem Text="OH" Value="35"></asp:ListItem>
                            <asp:ListItem Text="OK" Value="36"></asp:ListItem>
                            <asp:ListItem Text="OR" Value="37"></asp:ListItem>
                            <asp:ListItem Text="PA" Value="38"></asp:ListItem>
                            <asp:ListItem Text="RI" Value="39"></asp:ListItem>
                            <asp:ListItem Text="SC" Value="40"></asp:ListItem>
                            <asp:ListItem Text="SD" Value="41"></asp:ListItem>
                            <asp:ListItem Text="TN" Value="42"></asp:ListItem>
                            <asp:ListItem Text="TX" Value="43"></asp:ListItem>
                            <asp:ListItem Text="UT" Value="44"></asp:ListItem>
                            <asp:ListItem Text="VT" Value="45"></asp:ListItem>
                            <asp:ListItem Text="VA" Value="46"></asp:ListItem>
                            <asp:ListItem Text="WA" Value="47"></asp:ListItem>
                            <asp:ListItem Text="WV" Value="48"></asp:ListItem>
                            <asp:ListItem Text="WI" Value="49"></asp:ListItem>
                            <asp:ListItem Text="WY" Value="50"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Select your Country:
                    </td>
                    <td class="col-lg-5">
                        <asp:DropDownList ID="DropDown" runat="server" class="form-control">
                            <asp:ListItem Text="Select a Country" Value="-1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="United States" Value="1"></asp:ListItem>
                            <asp:ListItem Text="India" Value="2"></asp:ListItem>
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
                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Don't want to disclose" Value="D"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Please Identify your Race:
                    </td>
                    <td class="col-lg-5">
                        <asp:DropDownList ID="race" runat="server" class="form-control">
                            <asp:ListItem Text="Select your Race" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Hispanic or Latino" Value="1"></asp:ListItem>
                            <asp:ListItem Text="American Indian or Alaskan Native" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Asian" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Black or African American" Value="4"></asp:ListItem>
                            <asp:ListItem Text="White" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Native Hawaiian or Other Pacific Islander" Value="6"></asp:ListItem>
                            <asp:ListItem Text="Two or more races" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Decline to Self Identify" Value="8"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Veteran Status:
                    </td>
                    <td class="col-lg-12">
                        <asp:RadioButtonList ID="Veteran" runat="server" >
                            <asp:ListItem Text="I am not a protect veteran" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Yes, I identify as one or more of classifications of a protected veteran" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Don't wish to answer" Value="3"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Disability Status:
                    </td>
                    <td class="col-lg-7">
                        <asp:RadioButtonList ID="disability" runat="server" >
                            <asp:ListItem Text="Yes, I have a disability" Value="1"></asp:ListItem>
                            <asp:ListItem Text="No, I don't have a disability" Value="2"></asp:ListItem>
                            <asp:ListItem Text="I don't wish to answer" Value="3"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_submit" runat="server" Text="Submit Application" OnClick="btn_submit_Click" class="btn btn-success" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
