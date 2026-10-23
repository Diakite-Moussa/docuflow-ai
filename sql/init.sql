CREATE UNIQUE INDEX IF NOT EXISTS uq_invoice_supplier_number
    ON invoice_extractions(supplier_name, invoice_number);

CREATE TABLE IF NOT EXISTS processing_logs (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    workflow_name TEXT,
    execution_id TEXT,
    failed_node TEXT,
    error_message TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);