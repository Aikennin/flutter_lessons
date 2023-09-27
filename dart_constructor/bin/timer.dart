import 'dart:async';

void main() => runApp(MyApp());

runApp(MyApp myApp) {}

class MyApp {}

class TimerClass {
  int _seconds = 0;
  bool _isActive = false;
  late Timer _timer;

  Function(int) onUpdate;

  TimerClass(this.onUpdate);

  void start() {
    if (!_isActive) {
      _isActive = true;
      _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
    }
  }

  void pause() {
    if (_isActive) {
      _isActive = false;
      _timer.cancel();
    }
  }

  void resume() {
    if (!_isActive) {
      _isActive = true;
      _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
    }
  }

  void reset() {
    _seconds = 0;
    onUpdate(_seconds);
    pause();
  }

  void _updateTimer(Timer timer) {
    _seconds++;
    onUpdate(_seconds);
  }
}
