package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Cliente;
import BR.FAG.EDU.CONTAS.repositorio.Modelo.FormaDePagamento;
import BR.FAG.EDU.CONTAS.repositorio.FormaDePagamentoRB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/formadepagamento")

public class FormaDePagamentoController extends BaseController<FormaDePagamento> {

    @Autowired
    private FormaDePagamentoRB formaDePagamentoRB;

    @Override
    public List<FormaDePagamento> list() {
        return formaDePagamentoRB.findAll();
    }

    @Override
    public FormaDePagamento find(String id) {
        return formaDePagamentoRB.getById(UUID.fromString(id));
    }

    @Autowired
    private FormaDePagamento formaDePagamento;

    @Override
    public ResponseEntity<?> insert(@RequestBody FormaDePagamento formaDePagamento) {
        if (formaDePagamento.getNomeFormaPgm() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Forma de pagamento invalida! ");
        }
        formaDePagamentoRB.saveAndFlush(formaDePagamento);
        return ResponseEntity.ok().build();
    }

    @Override
    public ResponseEntity<?> update(@RequestBody FormaDePagamento updateObjeto) {
        FormaDePagamento formaDePagamentoBanco = formaDePagamentoRB.findById(updateObjeto.getId()).get();
        if (updateObjeto.getNomeFormaPgm() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Erro Message");
        }
        formaDePagamentoBanco.setNomeFormaPgm(updateObjeto.getNomeFormaPgm());
        formaDePagamentoRB.saveAndFlush(formaDePagamentoBanco);
        return ResponseEntity.ok().build();
    }
}
