package BR.FAG.EDU.CONTAS.rest;

import
        BR.FAG.EDU.CONTAS.repositorio.Modelo.Cliente;
import BR.FAG.EDU.CONTAS.repositorio.Modelo.Conta;
import BR.FAG.EDU.CONTAS.repositorio.ContaRB;
import BR.FAG.EDU.CONTAS.repositorio.Service.ClienteService;
import BR.FAG.EDU.CONTAS.repositorio.Service.ContaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/conta")

public class ContaController extends BaseController<Conta> {

    @Autowired
    private ContaRB contaRB;

    @Override
    public List<Conta> list() {
        return contaRB.findAll();
    }

    @Override
    public Conta find(String id) {
        return contaRB.getById(UUID.fromString(id));
    }

    @Autowired
    private ContaService contaService;

    @Override
    public ResponseEntity<?> insert(@RequestBody Conta conta) {
        if (conta.getCliente() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Cliente invalido");
        } else if (conta.getDtEmissao() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Data de emissao invalida");

        }
        if (conta.getDtVencimento() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Data de vencimento invalido!");

        }
        contaRB.saveAndFlush(conta);
        return ResponseEntity.ok().build();
    }

    @Override
    public ResponseEntity<?> update(@RequestBody Conta updateTela) {
        Conta contaBanco = contaRB.findById(updateTela.getId()).get();
        if (updateTela.getValor() == 0) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Erro Message");
        }
        contaBanco.setDtVencimento(updateTela.getDtVencimento());
        contaBanco.setDtEmissao(updateTela.getDtEmissao());
        contaBanco.setDescricao(updateTela.getDescricao());
        contaBanco.setCliente(updateTela.getCliente());
        contaBanco.setStatus(updateTela.getStatus());
        contaBanco.setValor(updateTela.getValor());
        contaRB.saveAndFlush(contaBanco);
        return ResponseEntity.ok().build();
    }
}



