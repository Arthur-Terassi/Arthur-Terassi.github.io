using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;
using System.IO;

namespace WebApplication3
{
    public partial class CadastroProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            // 1. validar os dados
            if (Nome.Text.Trim() == "")
            {
                Alerta.Text = "Digite o nome do produto";
                Alerta.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string imagem = "";
                if (FileUpload.FileName != "")
                {
                    imagem = Path.GetFileName(FileUpload.FileName);

                    // 2. Obtem o nome da imagem

                    //Obtem o caminho físico para gravar a imagem
                    string imagemCaminho = Server.MapPath("~/App_Files/") + Path.GetFileName(FileUpload.FileName);

                    //Salva a imagem no caminho especificado
                    FileUpload.SaveAs(imagemCaminho);

                }
                // 3. Gravar o produto na tabela Produtos

                // 3.1 Criar a String de conexão com o banco de dados
                // https://www.connectionstrings.com
                string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/DataBase.accdb") + ";Persist Security Info=False;";



                // 3.2 Cria o Comando SQL para o banco de dados
                string sql = "INSERT INTO Produtos(Nome,Quantidade,PrecoCusto,PrecoVenda,Descricao,DataHoraRegistro,Situacao, Imagem) VALUES('" + Nome.Text.Trim() + "'," + Quantidade.Text + "," + PrecoCusto.Text + "," + PrecoVenda.Text + ",'" + Descricao.Text + "','" + DateTime.Now.ToString() + "'," + Situacao.SelectedValue + ",'" + imagem + "');";


                // 4. Conectar no Banco de Dados

                Datapost.DB.DAO db = new Datapost.DB.DAO();
                db.ConnectionString = conexao;
                db.DataProviderName = DAO.ProviderName.OleDb;
                db.Query(sql);


                // Limpar os valores do form
                Nome.Text = "";
                Quantidade.Text = "";
                PrecoCusto.Text = "";
                PrecoVenda.Text = "";
                Descricao.Text = "";
                Situacao.Text = "";

                Alerta.Text = "Cadastro bem sucedido";
                Alerta.ForeColor = System.Drawing.Color.Black;



            }

        }
    }
}