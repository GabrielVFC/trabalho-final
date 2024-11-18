-- Relatório de participantes em um evento específico
SELECT p.nome, p.email, p.telefone
FROM Participante p
JOIN Inscricao i ON p.id_participante = i.id_participante
WHERE i.id_evento = 1;

-- Relatório de certificados gerados para um evento específico
SELECT c.caminho_certificado, p.nome
FROM Certificado c
JOIN Participante p ON c.id_participante = p.id_participante
WHERE c.id_evento = 1;

-- Relatório de eventos em um local específico
SELECT e.nome_evento, e.data_evento
FROM Evento e
JOIN Locais l ON e.id_local = l.id_local
WHERE l.nome_local = 'Centro de Convenções';