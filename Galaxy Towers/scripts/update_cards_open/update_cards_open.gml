with obj_card_parent{
	switch (self.card_layer)
	{
		case 1:
			if(self.position = 1){
				if(handler.card_array[1,2] = 0 and handler.card_array[2,2] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 2){
				if(handler.card_array[3,2] = 0 and handler.card_array[4,2] = 0){
					self.open = true;	
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 3){
				if(handler.card_array[5,2] = 0 and handler.card_array[6,2] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			break;
		
		case 2:
			if(self.position = 1){
				if(handler.card_array[1,3] = 0 and handler.card_array[2,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 2){
				if(handler.card_array[2,3] = 0 and handler.card_array[3,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 3){
				if(handler.card_array[4,3] = 0 and handler.card_array[5,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 4){
				if(handler.card_array[5,3] = 0 and handler.card_array[6,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 5){
				if(handler.card_array[7,3] = 0 and handler.card_array[8,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 6){
				if(handler.card_array[8,3] = 0 and handler.card_array[9,3] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			break;
		
		case 3:
			if(self.position = 1){
				if(handler.card_array[1,4] = 0 and handler.card_array[2,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 2){
				if(handler.card_array[2,4] = 0 and handler.card_array[3,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 3){
				if(handler.card_array[3,4] = 0 and handler.card_array[4,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 4){
				if(handler.card_array[4,4] = 0 and handler.card_array[5,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 5){
				if(handler.card_array[5,4] = 0 and handler.card_array[6,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 6){
				if(handler.card_array[6,4] = 0 and handler.card_array[7,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 7){
				if(handler.card_array[7,4] = 0 and handler.card_array[8,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 8){
				if(handler.card_array[8,4] = 0 and handler.card_array[9,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			else if(self.position = 9){
				if(handler.card_array[9,4] = 0 and handler.card_array[10,4] = 0){
					self.open = true;
					alarm_set(0,5)
				}
				else{
					self.open = false;	
				}
			}
			break;
		
		case 4:
			self.open = true;
			self.clickable = true
			break;
	}	
}