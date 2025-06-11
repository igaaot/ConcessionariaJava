package com.gitcar.app.controladores;

import com.gitcar.app.AplicacaoPrincipal;
import com.gitcar.app.models.Empregado;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.MenuItem;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.Pane;
import java.io.IOException;
import java.net.URL;

public class MenuGerenteControlador {

    @FXML private BorderPane painelPrincipal;
    @FXML private MenuItem itemMenuSair;
    @FXML private MenuItem itemMenuInfo;
    @FXML private Button botaoRelatorioVendas;
    @FXML private Button botaoGerenciarEmpregados;
    @FXML private Button botaoCadastrarVeiculo;
    @FXML private Button botaoGerenciarInteresses;
    @FXML private Pane areaConteudo;
    @FXML private Label rotuloBarraStatus;

    @FXML
    public void initialize() {
        rotuloBarraStatus.setText("Usuário: " + Empregado.logado.getNome());
    }

    @FXML
    void acaoRelatorioVendas(ActionEvent evento) {
        carregarView("/com/gitcar/view/RelatorioVendasView.fxml");
    }

    @FXML
    void acaoGerenciarEmpregados(ActionEvent evento) {
        carregarView("/com/gitcar/view/GerenciarEmpregadosView.fxml");
    }

    @FXML
    void acaoCadastrarVeiculo(ActionEvent evento) {
        carregarView("/com/gitcar/view/CadastrarVeiculoView.fxml");
    }

    @FXML
    void acaoGerenciarInteresses(ActionEvent evento) {
        carregarView("/com/gitcar/view/GerenciarInteressesView.fxml");
    }

    @FXML
    void acaoSair(ActionEvent evento) {
        try {
            AplicacaoPrincipal.mostrarTelaLogin();
        } catch (IOException e) {
            mostrarErro("Erro ao fazer logout: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @FXML
    void acaoSobre(ActionEvent evento) {
        Alert alerta = new Alert(Alert.AlertType.INFORMATION);
        alerta.setTitle("Sobre GIT CAR");
        alerta.setHeaderText("GIT CAR - Sistema para gerenciamento de concessionária");
        alerta.setContentText("Versão 1.0\nDesenvolvido como projeto acadêmico.\nDesenvolvedores: Guilherme Fior | Igor Nogueira Ferreira | Thaison Damaceno Freitas");
        alerta.showAndWait();
    }

    private void carregarView(String caminhoFxml) {
        try {
            URL urlFxml = getClass().getResource(caminhoFxml);
            if (urlFxml == null) {
                mostrarErro("Arquivo FXML não encontrado: " + caminhoFxml);
                return;
            }
            FXMLLoader carregador = new FXMLLoader(urlFxml);
            Parent view = carregador.load();
            areaConteudo.getChildren().setAll(view);
        } catch (IOException e) {
            mostrarErro("Erro ao carregar: " + caminhoFxml + "\n" + e.getMessage());
            e.printStackTrace();
        }
    }

    private void mostrarErro(String mensagem) {
        Alert alerta = new Alert(Alert.AlertType.ERROR);
        alerta.setTitle("Erro");
        alerta.setHeaderText(null);
        alerta.setContentText(mensagem);
        alerta.showAndWait();
    }
}
