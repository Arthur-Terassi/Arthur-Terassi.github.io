<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirProdutos.aspx.cs" Inherits="WebApplication3.ExibirProdutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row">
        <div class="col-10">
            <div class="border box-shadow padding-14">
                <asp:TextBox ID="BuscarProduto"  Width="120px" runat="server"></asp:TextBox>

                <asp:Button ID="Buscar" OnClick="Buscar_Click" runat="server" Text="Buscar" />
                <asp:Button ID="Cancelar" OnClick="Cancelar_Click" runat="server" Text="X" /> 
                <br />
                <br />

                <asp:GridView AutoGenerateSelectButton="true" OnSelectedIndexChanged="Produtos_SelectedIndexChanged" runat="server" width="100%" CellPadding="8" BorderColor="#c0c0c0" ID="Produtos"></asp:GridView>
                <asp:Button ID="Cadastrar" OnClick="Cadastrar_Click" runat="server" Text="Cadastrar"/>
            </div>
        </div>

    </div>
</asp:Content>
