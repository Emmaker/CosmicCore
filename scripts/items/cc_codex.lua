require "/scripts/cc_util.lua"

function update()
    if not fireableItem.coolingDown() and fireableItem.firing() then
        for _, playerId in pairs(world.playerQuery(fireableItem.ownerAimPosition(), 256)) do
            if world.entityHandItem(playerId, "primary") == item.name() or world.entityHandItem(playerId, "alt") == item.name() then
                local length = string.len(item.name()) - 6
                local codex = string.sub(item.name(), 1, length)

                cc.logInfo("Unlocking codex %s for %s", codex, playerId)
                world.sendEntityMessage(playerId, "cc_learnCodex", codex)
            end
        end
    end
end