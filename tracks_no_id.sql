SELECT
    a.title,
    mt.name,
    g.name
FROM track t
JOIN album a
    on a.albumid = t.albumid
JOIN mediatype mt 
    on mt.mediatypeid = t.mediatypeid
JOIN genre g
    on g.genreid = t.genreid