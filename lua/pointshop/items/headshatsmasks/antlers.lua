ITEM.Name = 'Antlers'
ITEM.Price = 1000
ITEM.Model = 'models/sam/antlers.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	--model:SetModelScale(1.6, 0)
	pos = pos + (ang:Forward() * -1) + (ang:Up() * 1)
	--ang:RotateAroundAxis(ang:Right(), 90)
	
	return model, pos, ang
end
