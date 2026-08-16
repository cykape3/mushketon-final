-- ============================================================
-- Mushketon Live Scoring — добавить поле created_at в competitions
-- Запустить ОДИН РАЗ на живой базе:
-- Supabase → SQL Editor → New Query → вставить → Run
-- ============================================================

ALTER TABLE competitions
  ADD COLUMN IF NOT EXISTS created_at timestamptz NOT NULL DEFAULT now();

-- RLS: политики для судьи уже покрывают UPDATE/SELECT competitions —
-- новые поля автоматически попадают под существующие политики.
-- Отдельных политик добавлять не нужно.

-- У уже существующих строк created_at встанет одинаковым (момент миграции).
-- Порядок между ними произвольный. Разово, дальше корректно.
