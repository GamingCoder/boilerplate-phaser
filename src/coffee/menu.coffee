class menuState
	create: ->
		# display your menu screen

		# start game on tap
		game.input.onDown.add @startGame, this
	startGame: -> game.state.start 'play'
game.state.add 'menu', menuState