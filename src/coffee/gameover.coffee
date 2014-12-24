class gameOverState
	create: ->
		# restart game on tap
		game.input.onDown.add @startGame, this
	startGame: -> game.state.start 'play'
game.state.add 'gameOver', gameOverState