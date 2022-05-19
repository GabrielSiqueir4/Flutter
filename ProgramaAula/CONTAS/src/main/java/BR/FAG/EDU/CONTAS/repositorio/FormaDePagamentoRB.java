package BR.FAG.EDU.CONTAS.repositorio;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.FormaDePagamento;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface FormaDePagamentoRB extends JpaRepository<FormaDePagamento, UUID> {
}
