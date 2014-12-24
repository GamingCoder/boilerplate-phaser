game = new Phaser.Game 720, 1280, Phaser.AUTO, 'game-div'

class loadState
	preload: ->
		# set game options
		game.scale.scaleMode = Phaser.ScaleManager.SHOW_ALL
		game.scale.pageAlignHorizontally = true
		game.scale.refresh()
		game.stage.backgroundColor = '#ffffff'

		# load assets
		#game.load.image 'name', 'assets/name.png'

		# do other things to set up game
	create: -> game.state.start 'menu'
game.state.add 'load', loadState