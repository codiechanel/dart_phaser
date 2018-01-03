import 'dart:html' show window;
import 'package:phaser/phaser.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

abstract class Sprites {
  static const String PLAYER = 'player';
}

class ExampleGame {
  CursorKeys keys;
  PhaserSprite player;
  Body playerBody;
  int speed = 100;

  void start() {
    new Game(
        window.innerWidth,
        window.innerHeight,
        Phaser.AUTO,
        'phaser-example',
        jsify({
          'preload': allowInterop(preload),
          'create': allowInterop(create),
          'update': allowInterop(update),
          'render': allowInterop(render)
        }));
  }

  preload(Game game) {
    game.load.spritesheet(Sprites.PLAYER, 'assets/character.png', 32, 48);
  }

  create(Game game) {
    // Init physics
    game.physics.startSystem(Physics.ARCADE);

    // Input
    keys = game.input.keyboard.createCursorKeys();

    if (game.input.gamepad.supported) {
      game.input.gamepad.start();
    }

    // Characters
    player = game.add.sprite(0, 0, Sprites.PLAYER);
    game.physics.enable(player);

    // Add some animations
    player.animations
      ..add('up', ArrayUtils.numberArray(12, 15), 5)
      ..add('down', ArrayUtils.numberArray(0, 3), 5)
      ..add('left', ArrayUtils.numberArray(4, 7), 5)
      ..add('right', ArrayUtils.numberArray(8, 11), 5);

    // Center the player
    player
      ..anchor.setTo(0.5)
      ..x = game.world.width / 2
      ..y = game.world.height / 2;

    // And have him collide with the world bounds
    (playerBody = player.body).collideWorldBounds = true;

    // Instruction text
    game.add.text(
      20,
      game.world.centerY,
      'Use the D-Pad (keyboard or gamepad!) to move',
      jsify({
        'fill': 'blue',
      }),
    );
  }

  update(Game game) {
    SinglePad pad;

    if (game.input.gamepad.active && game.input.gamepad.padsConnected >= 1) {
      pad = game.input.gamepad.pad1;
    }

    if (keys.up.isDown || pad?.isDown(Gamepad.XBOX360_DPAD_UP) == true) {
      player.animations.play('up');
      playerBody.velocity.y = speed * -1;
    } else if (keys.down.isDown ||
        pad?.isDown(Gamepad.XBOX360_DPAD_DOWN) == true) {
      player.animations.play('down');
      playerBody.velocity.y = speed;
    } else {
      playerBody.velocity.y = 0;

      if (keys.left.isDown || pad?.isDown(Gamepad.XBOX360_DPAD_LEFT) == true) {
        player.animations.play('left');
        playerBody.velocity.x = speed * -1;
      } else if (keys.right.isDown ||
          pad?.isDown(Gamepad.XBOX360_DPAD_RIGHT) == true) {
        player.animations.play('right');
        playerBody.velocity.x = speed;
      } else {
        playerBody.velocity.x = 0;
      }
    }
  }

  render(Game game) {
    game.debug.spriteInfo(player, 20, 20);
  }
}
