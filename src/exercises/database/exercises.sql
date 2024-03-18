-- top 10 artists
select
  artist.artistId,
  artist.name,
  count(album.artistId)
from album
inner join artist on artist.artistId = album.artistId
group by artist.artistId
order by 3 desc
limit 10;

-- What is the most popular genre?
select
  genre.genreId,
  genre.name,
  count(track.genreId)
from genre
inner join track on genre.genreId = track.genreId
order by 3 desc
limit 1;

-- What is the total time in minutes from 'rock' and 'rock and roll' together?
select
  '"rock" and "rock and roll"' as genre_name,
  sum(milliseconds)/1000/60 as minutes
from genre
inner join track on genre.genreId = track.genreId
where
  genre.name = 'Rock'
  or genre.name = 'Rock And Roll';

--  What is the media type with less sales?
select
  Mediatype.Name,
  count(InvoiceLine.InvoiceLineId)
from Mediatype
inner join Track on Track.MediaTypeId = MediaType.MediaTypeId
inner join InvoiceLine on InvoiceLine.TrackId = Track.TrackId
group by MediaType.MediaTypeId
order by 2
limit 1;

-- How many tracks from Academy of St. Martin in the Fields there are?
select
  count(Track.TrackId)
from Artist
inner join Album on Album.ArtistId = Artist.ArtistId
inner join Track on Track.AlbumId = Album.AlbumId
where Artist.Name like '%Academy of St. Martin in the Fields%';

-- Who is the employee with more customers?
select
  Employee.FirstName,
  Employee.LastName,
  count(Customer.CustomerId)
from Employee
inner join Customer on Customer.SupportRepId = Employee.EmployeeId
group by Employee.EmployeeId
order by 3 desc
limit 1;

-- What is this employee's total sales?
select
  Employee.FirstName,
  Employee.LastName,
  count(Customer.CustomerId),
  sum(Invoice.Total)
from Employee
inner join Customer on Customer.SupportRepId = Employee.EmployeeId
left join Invoice on Invoice.CustomerId = Customer.CustomerId
group by Employee.EmployeeId
order by 3 desc
limit 1;

-- What is the total sales for 2008?
select
  sum(Invoice.Total)
from Invoice
where strftime('%Y', Invoice.InvoiceDate) = '2008'
;