-- ============================================================
-- Mushketon Live Scoring — удалить одно соревнование по id
-- Связанные стрелки удаляются каскадно (ON DELETE CASCADE).
--
-- 1. Найди нужный id: Supabase → Table Editor → competitions
--    или выполни: SELECT id, created_at, type, is_active FROM competitions ORDER BY created_at DESC;
-- 2. Замени ВСТАВЬ_ID_СЮДА на реальный uuid
-- 3. Supabase → SQL Editor → New Query → вставить → Run
-- ============================================================

DELETE FROM competitions
WHERE id = 'ВСТАВЬ_ID_СЮДА';
