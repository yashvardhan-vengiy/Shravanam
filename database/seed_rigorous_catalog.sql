-- SHRAVANAM RIGOROUS STARTER CATALOG
-- Run this after database/schema.sql.
-- These are starter metadata rows. Replace source_url/youtube_url with exact lecture links as you collect them.
-- No audio is hosted or played inside Shravanam.

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select * from (values
('Bhagavad Gita 1.1 — Setting the Scene of Dharma', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 48, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['gita','dharma','kurukshetra'], 'Beginner'),
('Bhagavad Gita 2.13 — Understanding the Soul', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 52, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['soul','atma','gita'], 'Beginner'),
('Bhagavad Gita 3 — Karma Yoga and Duty', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 55, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['karma yoga','duty','work'], 'Beginner'),
('Bhagavad Gita 4 — Transcendental Knowledge', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 58, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['knowledge','parampara','avatar'], 'Beginner'),
('Bhagavad Gita 7 — Knowledge of the Absolute', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 50, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['krishna','absolute truth','gita'], 'Intermediate'),
('Bhagavad Gita 9 — Most Confidential Knowledge', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 62, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['confidential','bhakti','surrender'], 'Intermediate'),
('Bhagavad Gita 12 — Devotional Service', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 46, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['bhakti','devotional service','sadhana'], 'Beginner'),
('Bhagavad Gita 18.66 — Complete Surrender', 'Srila Prabhupada', 'Bhagavad Gita', 'Bhagavad Gita As It Is', 49, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['surrender','sarva dharman','krishna'], 'Beginner'),

('Srimad Bhagavatam 1.1 — Questions of the Sages', 'Srila Prabhupada', 'Srimad Bhagavatam', 'Canto 1', 55, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['bhagavatam','sages','questions'], 'Beginner'),
('Srimad Bhagavatam 1.2 — Dharma and Pure Devotion', 'Srila Prabhupada', 'Srimad Bhagavatam', 'Canto 1', 60, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['dharma','pure devotion','bhakti'], 'Beginner'),
('Srimad Bhagavatam 2.9 — Lord Brahma Receives Knowledge', 'Srila Prabhupada', 'Srimad Bhagavatam', 'Canto 2', 57, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['brahma','knowledge','bhagavatam'], 'Intermediate'),
('Srimad Bhagavatam 3 — Vidura and Maitreya', 'Srila Prabhupada', 'Srimad Bhagavatam', 'Canto 3', 51, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['vidura','maitreya','inquiry'], 'Intermediate'),
('Srimad Bhagavatam 4 — Dhruva Maharaja', 'Radhanath Swami', 'Srimad Bhagavatam', 'Dhruva Maharaja', 72, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['dhruva','determination','devotion'], 'Beginner'),
('Srimad Bhagavatam 5 — Rishabhadeva Teachings', 'Bhakti Vikasa Swami', 'Srimad Bhagavatam', 'Canto 5', 70, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['rishabhadeva','human life','austerity'], 'Intermediate'),
('Srimad Bhagavatam 6 — Ajamila Deliverance', 'Radhanath Swami', 'Srimad Bhagavatam', 'Ajamila', 65, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['ajamila','holy name','mercy'], 'Beginner'),
('Srimad Bhagavatam 7 — Prahlada Maharaja', 'Radhanath Swami', 'Srimad Bhagavatam', 'Prahlada Maharaja', 75, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['prahlada','faith','fearlessness'], 'Beginner'),
('Srimad Bhagavatam 10 — Damodara Lila', 'Sacinandana Swami', 'Srimad Bhagavatam', 'Krishna Lila', 68, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['damodara','krishna lila','mother yasoda'], 'Beginner'),

('Nectar of Devotion — Beginning of Bhakti', 'Srila Prabhupada', 'Nectar of Devotion', 'Bhakti-rasamrita-sindhu', 45, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['nod','bhakti','sadhana'], 'Beginner'),
('Nectar of Devotion — 64 Angas of Bhakti', 'Bhakti Charu Swami', 'Nectar of Devotion', 'Sadhana Bhakti', 64, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['64 angas','sadhana','devotion'], 'Intermediate'),
('Nectar of Instruction — Text 1', 'Srila Prabhupada', 'Nectar of Instruction', 'Upadesamrita', 42, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['noi','control','speech','mind'], 'Beginner'),
('Nectar of Instruction — Texts 2–3', 'Bhakti Vikasa Swami', 'Nectar of Instruction', 'Upadesamrita', 56, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['enthusiasm','patience','confidence'], 'Beginner'),
('Isopanishad — Invocation and Mantra 1', 'Srila Prabhupada', 'Isopanishad', 'Sri Isopanishad', 44, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['isopanishad','ishavasyam','ownership'], 'Beginner'),

('Japa Improvement — Hearing the Holy Name', 'Sacinandana Swami', 'Japa', 'Japa Retreat', 80, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['japa','holy name','attention'], 'Beginner'),
('Japa Workshop — Avoiding Mechanical Chanting', 'Radhanath Swami', 'Japa', 'Japa Seminar', 62, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['japa','focus','chanting'], 'Beginner'),
('Kirtan as Deep Prayer', 'Indradyumna Swami', 'Kirtan', 'Kirtan Meditations', 55, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['kirtan','prayer','holy name'], 'Beginner'),
('The Mood of Vaishnava Kirtan', 'Sacinandana Swami', 'Kirtan', 'Holy Name Series', 61, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['kirtan','vaishnava','bhava'], 'Intermediate'),

('Humility in Devotional Life', 'Radhanath Swami', 'Seminars', 'Foundations of Bhakti', 73, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['humility','service','bhakti'], 'Beginner'),
('The Power of Association', 'Radhanath Swami', 'Seminars', 'Foundations of Bhakti', 69, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['association','sanga','sadhu'], 'Beginner'),
('Surrender in Daily Life', 'Giriraj Swami', 'Seminars', 'Bhakti Practice', 58, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['surrender','daily life','faith'], 'Intermediate'),
('Overcoming Anarthas', 'Bhakti Vikasa Swami', 'Seminars', 'Self Purification', 84, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['anartha','purification','discipline'], 'Intermediate'),

('Bhakti Sastri — Gita Overview', 'Bhakti Charu Swami', 'Bhakti Sastri', 'Bhakti Sastri Preparation', 90, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['bhakti sastri','gita','study'], 'Intermediate'),
('Bhakti Sastri — Nectar of Devotion Overview', 'Bhakti Vikasa Swami', 'Bhakti Sastri', 'Bhakti Sastri Preparation', 88, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['bhakti sastri','nod','study'], 'Intermediate'),
('Bhakti Sastri — Nectar of Instruction Overview', 'Romapada Swami', 'Bhakti Sastri', 'Bhakti Sastri Preparation', 76, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['bhakti sastri','noi','study'], 'Intermediate'),
('Bhakti Sastri — Isopanishad Overview', 'Giriraj Swami', 'Bhakti Sastri', 'Bhakti Sastri Preparation', 74, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['bhakti sastri','isopanishad','study'], 'Intermediate'),

('Preaching with Compassion', 'Jayapataka Swami', 'Preaching', 'Outreach and Care', 59, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['preaching','compassion','outreach'], 'Beginner'),
('Book Distribution Mood', 'Gopal Krishna Goswami', 'Preaching', 'Srila Prabhupada Mission', 63, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['books','preaching','mission'], 'Beginner'),
('Leadership as Service', 'Romapada Swami', 'Leadership', 'Vaishnava Leadership', 66, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['leadership','service','community'], 'Intermediate'),
('Temple Community and Cooperation', 'Jayapataka Swami', 'Leadership', 'Community Development', 71, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['temple','cooperation','community'], 'Intermediate'),

('Youth and Krishna Consciousness', 'Radhanath Swami', 'Youth', 'Youth Inspiration', 54, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['youth','purpose','krishna consciousness'], 'Beginner'),
('Relationships in Devotional Life', 'Giriraj Swami', 'Relationships', 'Vaishnava Relationships', 67, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['relationships','respect','care'], 'Beginner'),
('Counseling with Vaishnava Values', 'Romapada Swami', 'Counseling', 'Care and Guidance', 78, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['counseling','care','values'], 'Intermediate'),
('Questions and Answers on Sadhana', 'Bhakti Vikasa Swami', 'Questions & Answers', 'Sadhana Q&A', 82, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['qa','sadhana','practice'], 'Beginner'),

('Janmashtami Lecture — Appearance of Krishna', 'Srila Prabhupada', 'Festival Lectures', 'Janmashtami', 52, 'English', 'ISKCON Desire Tree', 'https://iskcondesiretree.com/', null, array['janmashtami','krishna','festival'], 'Beginner'),
('Gaura Purnima — Mercy of Lord Chaitanya', 'Jayapataka Swami', 'Festival Lectures', 'Gaura Purnima', 64, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['gaura purnima','chaitanya','mercy'], 'Beginner'),
('Radhastami — Service Mood of Srimati Radharani', 'Radhanath Swami', 'Festival Lectures', 'Radhastami', 70, 'English', 'YouTube / External Source', null, 'https://youtube.com/', array['radhastami','radharani','service'], 'Intermediate'),
('Govardhan Puja — Shelter of Krishna', 'Sacinandana Swami', 'Festival Lectures', 'Govardhan Puja', 61, 'English', 'External Source', 'https://iskcondesiretree.com/', null, array['govardhan','shelter','krishna'], 'Beginner')
) as v(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
where not exists (
  select 1 from public.lectures l
  where l.title = v.title and coalesce(l.speaker, '') = coalesce(v.speaker, '')
);
