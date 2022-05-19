package BR.FAG.EDU.CONTAS.repositorio;

import java.util.UUID;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRB extends JpaRepository<Cliente, UUID> {

}
