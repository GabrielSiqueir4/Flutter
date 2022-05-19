package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Cliente;
import BR.FAG.EDU.CONTAS.repositorio.ClienteRB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/cliente")

public class ClienteController extends BaseController<Cliente> {

    @Autowired
    private ClienteRB clienteRB;

    @Override
    public List<Cliente> list() {
        return clienteRB.findAll();
    }

    @Override
    public Cliente find(String id) {
        return clienteRB.getById(UUID.fromString(id));
    }


    @Override
    public ResponseEntity<?> insert(Cliente cliente){
        if (cliente.getNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Nome invalido");

        } else if (cliente.getSobreNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Sobre nome invalido");
        }
        if (cliente.getCpf() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("CPF invalido");
        }
        clienteRB.saveAndFlush(cliente);

        return ResponseEntity.ok().build();
    }

}
