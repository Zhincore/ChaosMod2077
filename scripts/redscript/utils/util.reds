module ChaosMod.Utils

public static func Call(target: wref<IScriptable>, fn: CName, opt data: array<Variant>) {
  if !IsDefined(target) {
    return;
  }
  Reflection
    .GetClassOf(target)
    .GetFunction(fn)
    .Call(target, data);
}

