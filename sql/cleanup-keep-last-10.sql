-- ============================================================
-- Mushketon Live Scoring — удалить старые соревнования
-- Оставить последние 10 по дате создания, остальные удалить.
-- Связанные стрелки удаляются каскадно (ON DELETE CASCADE).
--
-- Supabase → SQL Editor → New Query → вставить → Run
-- ============================================================

DELETE FROM competitions
WHERE id NOT IN (
  SELECT id FROM competitions
  ORDER BY created_at DESC
  LIMIT 10
);
