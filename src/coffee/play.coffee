class playState
	preload: ->	# setup your game
	create: ->	# game mechanics
	update: ->	# update things
game.state.add 'play', playState
game.state.start 'load'