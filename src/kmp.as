package
{
	public class kmp
	{
		public function kmp()
		{
			
		}
		
		public function test():void
		{
			var P:Array = ["a","b","a","b","a","a","a","b","a"];
//			var P:Array = ["A","B","C","D","A","B","D"];
			var next2:Array = [0,0,0,0,0,0,0];
			trace("P:"+P);
			makeNext2(P, next2);
			trace(" "+next2);
			var next:Array = [0,0,0,0,0,0,0];
			makeNextVal(P, next);
			trace(" "+next);
		}
		
		/**
		 * @p <char>
		 * @next <int>
		 * @return 
		 */	
		public function makeNext2(P:Array,next:Array):void
		{
			next[0] = -1;
			var j:int = 0;
			var k:int = -1;
			
			while (j < P.length - 1) {
				
				if (k == -1 || P[j] == P[k]) {
					
					next[++j] = ++k;
					
				} else {
					
					k = next[k];
				}
				
			}
			next.splice(P.length);
		}
		public function makeNextVal(P:Array,next:Array):void
		{
			next[0] = -1;
			var j:int = 0;
			var k:int = -1;
			
			while (j < P.length - 1) {
				
				if (k == -1 || P[j] == P[k]) {
					
					if (P[++j] == P[++k]) { // 当两个字符相等时要跳过
						
						next[j] = next[k];
						
					} else {
						
						next[j] = k;
						
					}
					
				} else {
					
					k = next[k];
				}
				
			}
			next.splice(P.length);
		}
	}
}