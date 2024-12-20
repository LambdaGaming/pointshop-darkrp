ITEM.Name = 'Witch Hat'
ITEM.Price = 1000
ITEM.Model = 'models/gmod_tower/witchhat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1.1, 0)
	ang:RotateAroundAxis(ang:Right(), 15)
	pos = pos + (ang:Forward() * -2.6) + (ang:Up() * 2)
	--
	
	return model, pos, ang
end
