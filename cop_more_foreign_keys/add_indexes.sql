-- add indexes to column (which is not primary key)
-- index helps to sort the column which is not primary key, which makes our query faster & more efficient

select * from music where band='Vague Laugh'; -- before indexes is added

alter table music add index idx_band(band);    -- create index for column 'band'. Therefore, will speed up query for column 'band'

select * from music where band='Vague Laugh'; -- after indexes is added (will be faster since the column is sorted first before query is run)

alter table music drop index idx_band;




-- add indexes for multiple columns

-- will speed up query for column 'band & 'song'. BUT, will not speed up query for column 'band' only or 'song' only.
alter table music add index idx_band(band,song);

select * from music where band='Vague Laugh'; -- the query will not speed up
select * from music where song='Some Song';   -- the query will not speed up
select * from music where band='Vague Laugh' AND song='Some Song';   -- the query will speed up

