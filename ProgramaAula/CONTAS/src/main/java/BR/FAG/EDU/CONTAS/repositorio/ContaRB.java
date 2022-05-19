package BR.FAG.EDU.CONTAS.repositorio;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Conta;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ContaRB extends JpaRepository<Conta, UUID> {
}
