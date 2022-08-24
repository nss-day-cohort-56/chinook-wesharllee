SELECT
    p.Name,
    COUNT(*)
FROM playlist p
JOIN playlisttrack pt 
    ON pt.playlistid = p.playlistid
GROUP BY p.name;
