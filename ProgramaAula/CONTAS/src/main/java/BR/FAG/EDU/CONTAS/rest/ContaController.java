package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Conta;
import BR.FAG.EDU.CONTAS.repositorio.ContaRB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;
import java.util.UUID;

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


}
