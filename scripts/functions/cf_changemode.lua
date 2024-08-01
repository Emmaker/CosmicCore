-- Actions
function changeListMode()
    self.listMode = self.listMode == "compact" and "full" or "compact"
    populateLists()
end