package sort
{
	public class QuickSort implements ISort
	{
		public function QuickSort()
		{
		}
		
		public function sort(r:Array):void{
			qsort(r, 1, r.length-1);
		}
		
		private function qsort(r:Array, low:int, high:int):void
		{
			if(low >= high){
				return;
			}
			var pivot:int = partion(r, low, high);
			qsort(r, low, pivot-1);
			qsort(r, pivot+1, high);
			trace("[qsort] -- "+r);
		}
		
		private function partion(r:Array, low:int, high:int):int
		{
			r[0] = r[low];
			var pivotkey:int = r[low];
			while(low < high){
				while(high > low && r[high] >= pivotkey){
					high--;
				}
				r[low] = r[high];
				//low++;
				while(low < high && r[low] <= pivotkey){
					low++;
				}
				r[high] = r[low];
				trace("low:"+low + ", high:"+high);
				trace("[partion] -- "+r);
			}
			r[low] = r[0];
			trace("low:"+low + ", high:"+high);
			trace("[partion] -- "+r);
			return low;
		}
	}
}