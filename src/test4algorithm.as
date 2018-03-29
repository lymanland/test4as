package
{
	import flash.display.Sprite;
	
	import sort.ISort;
	import sort.MergeSort;
	import sort.QuickSort;
	
	public class test4algorithm extends Sprite
	{
		public function test4algorithm()
		{
			var _kmp:kmp = new kmp();
			_kmp.test();
			return;
			
//			var r:Array = [50, 10, 90, 30, 70, 40, 80, 60, 20];
//			r.unshift(0);//哨兵
//			
////			var func:ISort = new QuickSort();
//			var func:ISort = new MergeSort();
//			func.sort(r);
//			trace("[END]\n"+r);
		}
	}
}