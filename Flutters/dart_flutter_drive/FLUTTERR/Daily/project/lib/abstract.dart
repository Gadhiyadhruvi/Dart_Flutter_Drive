abstract class RBI {
  void roi();
}

class SBI extends RBI {
  @override
  void roi() {
    print("7.8");
  }
}

class HDFC extends RBI {
  @override
  void roi() {
    print("8.2");
  }
}

void main(List<String> args) {
  var sbi = SBI();
  sbi.roi();

  var hdfc = HDFC();
  hdfc.roi();
}
