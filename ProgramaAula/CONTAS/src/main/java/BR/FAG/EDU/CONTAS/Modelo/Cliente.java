package BR.FAG.EDU.CONTAS.Modelo;


import javax.persistence.*;
import java.util.UUID;

@Entity
@Table
public class Cliente extends BaseModelo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String nome;
    @Column
    private String sobreNome;


}
