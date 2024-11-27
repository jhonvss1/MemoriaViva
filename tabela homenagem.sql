SELECT 
nome_usuario,
descricao_prece,
nome_vitima

FROM prece as p 
INNER JOIN homenagem as h ON h.id_prece = p.id_prece
INNER JOIN vitima as v ON v.id_vitima = h.id_vitima;