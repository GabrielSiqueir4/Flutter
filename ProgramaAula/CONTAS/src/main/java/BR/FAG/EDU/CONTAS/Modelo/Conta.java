package BR.FAG.EDU.CONTAS.Modelo;


import javax.persistence.*;
import java.sql.Date;
import java.util.UUID;

@Entity
@Table
public class Conta extends BaseModelo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private UUID id;

    @Column
    private Date dtEmissao;

    @Column
    private Date dtVencimento;

    @ManyToOne
    private StatusPagamento statusPagamento;


    @ManyToOne
    private Cliente cliente;

    @Column
    private double valor;

    @Column
    private String descricao;

    @Column
    private String status;

    @Column
    @Lob
    private byte[] anexo;


    
}

