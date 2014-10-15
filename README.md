DynamicObjC

Objective-Cの"オブジェクト指向"の文脈はやっぱり動的と言うんでしょ的な話
===========
~~~~Objective-C
@interface ViewController : UIViewController

-(id)hogehogeWithNum:num; //ここで型指定しなくてもnumは投げられて
//略
@end

@implementation ViewController
-(id)hogehogeWithNum:num{ //numの型はとりあえずなんでも受け付ける
  
  NSString *obj;
  if([num isKindOfClass:[NSString class]]){
      obj = @"num is NSString.";
  }else{
      obj = @"num is NSINumber.";
  }
  
  return obj;
}
//略
@end
~~~~  

-静的型のCの上に、動的なSmallTalkのオブジェクトモデル/ランタイムが乗ってる、というような理解。

-swiftは静的言語だけど、型推論が走るから、コンパイル時にコンパイラが変数の型を決定してくれる、というのが正しいのかな、と。
(処理系よくわからんので知らない)

__ちがってたらごめんなさい__
