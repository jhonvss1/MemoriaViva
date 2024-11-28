<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Memória Viva</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server" class="app">

        <!-- Sidebar -->
        <sidebar class="sidebar">
            <!-- Logo -->
            <div>
                <div class="d-flex justify-content-center py-3">
                    <img src="imgs/logo.png" alt="Logomarca" class="img-fluid" style="max-width: 150px" />
                </div>

                <!-- Filtros -->
                <div class="py-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                        <path fill="currentColor" d="M21 4v2h-1l-5 7.5V22H9v-8.5L4 6H3V4zM6.404 6L11 12.894V20h2v-7.106L17.596 6z" />
                    </svg>
                    <asp:Button ID="btnOrdemAleatoria" runat="server" CssClass="btn-filtro-ativo" OnClick="btnOrdemAleatoria_Click" Text="Ordem Sequencial" />
                    <asp:Button ID="btnOrdemAlfabetica" runat="server" CssClass="btn-filtro-inativo" OnClick="btnOrdemAlfabetica_Click" Text="Ordem Alfabética" />
                </div>
            </div>

            <!-- Lista de Cards -->
            <div class="lista-cards">
                <!-- Repeater fica responsável por gerar vários cards dinâmicamente -->
               <asp:Repeater ID="rptFalecidos" runat="server">
    <ItemTemplate>
        <div class="card card-item">
            <div class="card-body row g-0">
                <div class="col-10 p-3">
                    <h5 class="card-title">
                        <strong><%# Eval("nome_vitima") %></strong>
                    </h5>
                    <p class="card-text">✟ <%# Eval("data_obito", "{0:dd/MM/yyyy}") %></p>
                    <div class="d-flex gap-2">
                        <!-- Botão para acender vela -->
                        <asp:Button ID="btnAcenderVela" runat="server" 
                                    Text="Acender vela 🔥" 
                                    CssClass="btn btn-acender-vela" 
                                    OnClick="btnAcenderVela_Click" />
                        <!-- Botão para escrever prece -->
                        <button type="button" class="btn btn-escrever-prece" 
                                data-bs-toggle="modal" 
                                data-bs-target="#modalPrece">Escrever prece ✍️</button>
                    </div>
                </div>
                <div class="col-2 d-flex flex-column align-items-center justify-content-center">
                    <span class="h1 text-center vela-icone">🕯️</span>
                    <span id="lblVelaNumero" runat="server" class="h6 px-2 py-1 vela-numero">0</span>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
            </div>

            <!-- Botão Adicionar Vítima -->
            <button type="button" class="btn botao-adicionar mt-3 p-3 btn-dark" data-bs-toggle="modal" data-bs-target="#adicionarVitima">Adicionar Vítima</button>
        </sidebar>

        <!-- Background (Vela gigante) -->
        <div class="background"></div>

        <!-- Modal Adicionar Vítima -->
        <div class="modal fade" id="adicionarVitima" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Adicionar Vítima</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="nomeFalecido" class="form-label">Nome</label>
                            <input type="text" class="form-control" id="nomeFalecidotxt" runat="server" placeholder="Nome completo do falecido" />
                        </div>
                        <div class="mb-3">
                            <label for="dataNascimento" class="form-label">Data de Nascimento</label>
                            <input type="date" class="form-control" id="dataNascimentotxt"  runat="server" placeholder="Data em que a vítima nasceu" />
                        </div>
                        <div class="mb-3">
                            <label for="dataFalecimento" class="form-label">Data do Falecimento</label>
                            <input type="date" class="form-control" id="dataObitotxt" runat="server" placeholder="Data em que a vítima nasceu" />
                        </div>
                        <div class="mb-3">
                            <label for="localObito" class="form-label">Local do Óbito</label>
                            <input type="text" class="form-control" id="localObitotxt" runat="server" placeholder="Local onde ocorreu o acidente" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="d-grid col-8 mx-auto">
                            <asp:Button ID="btnAdicionarVitimaModal" runat="server" class="btn btn-dark px-3" Text="Adicionar" OnClick="btnAdicionarVitimaModal_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Perfil -->
        <div class="modal fade" id="perfil" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">
                            <strong>Thyago Alves Tenório Da Silva</strong>
                        </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Conteúdo do Perfil -->
                        <!-- Exemplo de Preces -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Prece -->
        <div class="modal fade" id="modalPrece" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">
                            Registrando... <asp:Literal ID="litNomeFalecido" runat="server"></asp:Literal>
                        </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="nomeFalecido" class="form-label">Seu nome</label>
                            <input type="text" class="form-control" id="txtNomeUsuario" runat="server" placeholder="Digite seu nome " />
                        </div>
                        <p class="h5">Se sinta livre à:</p>
                        <div class="form-check">
                            <label class="form-check-label" for="flexRadioDefault2">Escrever sua prece</label>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" id="txtPrece" runat="server" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="d-grid col-8 mx-auto">
                            <asp:Button ID="btnSalvarPrece" runat="server" class="btn btn-success" Text="Salvar Prece" OnClick="btnSalvarPrece_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>
