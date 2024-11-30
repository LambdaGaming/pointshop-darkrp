ITEM.Name = 'Fedora 2'
ITEM.Price = 1000
ITEM.Model = 'models/gmod_tower/fedorahat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	ang:RotateAroundAxis(ang:Right(), -90)
	
	return model, pos, ang
end
