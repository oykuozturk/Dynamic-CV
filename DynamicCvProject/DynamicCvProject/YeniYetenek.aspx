<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="DynamicCvProject.YeniYetenek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="margin-left: 50PX">YENİ YETENEK EKLEME SAYFASI</h4>
    <br />
    <div style="margin-left: 50px; margin-top: 20px">
        <asp:Label ID="Label1" runat="server" Text="Yetenek: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div style="margin-left: 50px; margin-top: 50px">
        <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="Button1_Click" />
    </div>
</asp:Content>
