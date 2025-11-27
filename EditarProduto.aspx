<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarProduto.aspx.cs" Inherits="WebApplication3.EditarProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row"="row margin-top-60">
    <div class="col-8">
        <div class="border box-shadow padding-14">
            <h2>Editar Produto</h2>
            <br />
            <asp:Label ID="Alerta" ForeColor="Red" Font-Size="16px" runat="server" ></asp:Label>
            <br />
            <br />
            <asp:Label ID="Codigo" runat="server" Text="Label" Font-Size="30px"></asp:Label>
            <br />
            <br />

            <label>Nome do Produto</label>
            <asp:TextBox ID="Nome" MaxLength="255" runat="server"></asp:TextBox>
            <label>Quantidade</label>
            <asp:TextBox ID="Quantidade" Text="0" TextMode="Number" Width="100" runat="server"></asp:TextBox>
            <label>Preço Compra</label>
            <asp:TextBox ID="PrecoCusto" Text="0" TextMode="Number" Width="100" runat="server"></asp:TextBox>
             <label>Preço Venda</label>
            <asp:TextBox ID="PrecoVenda" Text="0" TextMode="Number" Width="100" runat="server"></asp:TextBox>
            <label>Descrição</label>
            <asp:TextBox ID="Descricao" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
         <label>Imagem</label>
            <asp:FileUpload ID="FileUpload" runat="server" />

            <label>Situação</label>
            <asp:DropDownList Width="100" ID="Situacao" runat="server">
                <asp:ListItem Text="Ativo" Value="1"></asp:ListItem>
                <asp:ListItem Text="Inativo" Value="0"></asp:ListItem>    
                </asp:DropDownList>
            <br />
            <asp:Button ID="Editar" OnClick="Editar_Click" runat="server" Text="Editar" />
            <asp:Button ID="Excluir" BackColor="DarkRed" OnClick="Excluir_Click" runat="server" Text="Excluir" />
        </div>
    </div>
    <div class="col-4">
        <div class="border box-shadow">
            <asp:Image ID="Imagem" runat="server" Width="100%"/>
        </div>
    </div>
    </div>
</asp:Content>
