package BR.FAG.EDU.CONTAS.repositorio;

import BR.FAG.EDU.CONTAS.Modelo.Conta;
import org.springframework.data.jpa.repository.JpaRepository;
import java.sql.Time;
import java.util.UUID;

public interface ContaRB extends JpaRepository<Conta, UUID> {
}
