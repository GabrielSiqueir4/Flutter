package BR.FAG.EDU.CONTAS.repositorio;

import java.sql.Time;
import java.util.UUID;

import BR.FAG.EDU.CONTAS.Modelo.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteRB extends JpaRepository<Cliente, UUID> {

}
