package sort
{
	public class MergeSort implements ISort
	{
		private var temp:Array;
		public function MergeSort()
		{
		}
		
		public function sort(r:Array):void{
			temp = new Array(r.length);
			m_sort(r, temp, 1, r.length-1);
			trace("[sort end]  1-- "+r);
			trace("[sort end]  2-- "+temp);
		}
		private function m_sort(sr:Array, tr:Array, low:int, high:int):void
		{
//			var temp:Array = new Array(sr.length);
			if(low > high){
				return;
			}
			if(low == high){
				tr[low] = sr[low];
				return;
			}
//			var pivot:int = low +(low+high)/2;
//			var temp:Array = new Array(sr.length);
			var pivot:int = (low+high)/2;
			m_sort(sr, temp, low, pivot);
			m_sort(sr, temp, pivot+1, high);
			merge(sr, temp, low, pivot, high);
			trace("[m_sort end] 1-- "+sr);
			trace("[m_sort end] 2-- "+temp);
		}
		/** 将有序的sr[i..m]和sr[m=1..n]*/
		private function merge(sr:Array, tr:Array, i:int, m:int, n:int):void
		{
			var ki:int = i;
			var kj:int = m+1;
			
			var k:int;
			for (k = i; ki<=m&&kj<=n; k++) 
			{
				if(sr[ki]<sr[kj]){
					tr[k] = sr[ki++];
				}
				else{
					tr[k] = sr[kj++];
				}
			}
			
			//以下两个if判断只有一个会生效
			if(ki<=m){
				for (; ki<=m; k++) 
				{
					tr[k] = sr[ki++];
				}
			}
			if(kj<=n){
				for (; kj<=n; k++) 
				{
					tr[k] = sr[kj++];
				}
			}
			
			trace(tr);
			for (var index:int = i; index <= n; index++) 
			{
				sr[index] = tr[index];
			}
		}
	}
}