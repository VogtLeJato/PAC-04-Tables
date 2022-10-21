using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class INTERACTIONS
    {
        public DateTime INTERACTION_DATETIME { get; set; }
        public eINTERACTION_TYPE INTERACTION_TYPE { get; set; }
        public CERTIFICATES CERTIFICATE_ID { get; set; }
        public string INTERACTION_DESCRIPTION { get; set; }
    }
    public enum eINTERACTION_TYPE
    {
        Alterado,
        Reprovado,
        Aprovado,
        Fechado
    }

}
