cc = {}

-- ---------------------------------------------------------------------------
-- Logging functions for CosmicCore scripts. Not for use outside of CosmicCore
-- ---------------------------------------------------------------------------

function cc.logInfo(...)
    sb.logInfo("[CosmicCore] " .. string.format(...))
end

function cc.logWarn(...)
    sb.logWarn("[CosmicCore] " .. string.format(...))
end

function cc.logError(...)
    sb.logError("[CosmicCore] " .. string.format(...))
    -- TODO: Error popup
end