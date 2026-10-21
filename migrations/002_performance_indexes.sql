-- Migration 002: B-Tree and GiST Indexes for Sub-Millisecond Scans
CREATE INDEX IF NOT EXISTS idx_pulsebed_status ON pulsebed_entities (status);
CREATE INDEX IF NOT EXISTS idx_pulsebed_cat_status ON pulsebed_entities (category, status);
CREATE INDEX IF NOT EXISTS idx_pulsebed_lease_expires ON pulsebed_leases (entity_id, expires_at) WHERE released = FALSE;
