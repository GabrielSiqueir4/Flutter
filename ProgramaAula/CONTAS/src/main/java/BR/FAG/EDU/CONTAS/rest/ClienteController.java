package BR.FAG.EDU.CONTAS.rest;
import br.com.caelum.stella.ValidationMessage;
import br.com.caelum.stella.tinytype.CPF;
import br.com.caelum.stella.validation.CPFValidator;

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
    public ResponseEntity<?> insert(@RequestBody Cliente cliente) {
        if (cliente.getNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Nome invalido");

        } else if (cliente.getSobreNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Sobre nome invalido");
        }


        try {
            CPFValidator v1 = new CPFValidator();
            v1.assertValid(cliente.getCpf());

        }
        catch(Exception e) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("CPF inválido");
        }

        clienteRB.saveAndFlush(cliente);

        return ResponseEntity.ok().build();
    }

    @Override
    public ResponseEntity<?> update(@RequestBody Cliente updateTela) {
        Cliente clienteBanco = clienteRB.findById(updateTela.getId()).get();
        if (updateTela.getNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Erro ao informar o nome");
        } else if (updateTela.getSobreNome() == null) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Erro ao informar o Sobre nome");
        }

            try {
                CPFValidator v1 = new CPFValidator();
                v1.assertValid(updateTela.getCpf());

            }
            catch(Exception e) {
                return ResponseEntity.status(HttpStatus.FORBIDDEN).body("CPF inválido");
            }


        clienteBanco.setSobreNome(updateTela.getSobreNome());
        clienteBanco.setCpf(updateTela.getCpf());
        clienteBanco.setNome(updateTela.getNome());
        clienteRB.saveAndFlush(clienteBanco);
        return ResponseEntity.ok().build();
    }

}
