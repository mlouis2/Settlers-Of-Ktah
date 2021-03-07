class Road:
    def __init__(self, player_index):
        self.is_barricade = False
        self.round_count = 0
    
    def upgrade(self):
        self.is_barricade = True
        self.round_count = 3
    
    def update(self):
        if self.is_barricade:
            self.round_count = self.round_count - 1
            if self.round_count == 0:
                self.is_barricade = False