class prova{
	
	// Dicotomico
    public static int contaDispari(int[] a, int l, int r) {
		
		if(l < r)
			return contaDispari(a, l, (l + r) / 2) + contaDispari(a, (l + r) / 2 + 1, r);
		else{
			if(a[l] % 2 == 1)
				return 1;
			else
				return 0;
		}
		
    }

    // Contro-variante
    public static int fDcon(int[] a, int i, int[] r) {
		
		if(i < a.length){
			
			int temp = fDcon(a, i + 1, r);
			
			if(a[i] % 2 == 1){
				r[temp] = a[i];
				return temp + 1;
			}
			else
				return temp;
			
		}
		else
			return 0;
		
    }
	
  // Co-variante
	public static int fDcov(int[] a, int i, int[] r) {
		
		if(i >= 0){
			
			int temp = fDcov(a, i - 1, r);
			
			if(a[i] % 2 == 1)
				return temp + 1;
			else
				return temp;
		}
		else
			return 0;
	}
	
    // Wrapper
    public static void fD(int[] a) {
		
		System.out.println(contaDispari(a, 0, a.length - 1));
		int [] r = new int [contaDispari(a, 0, a.length - 1)];
		
		fDcon(a, 0, r);
		for(int i = 0; i < r.length; i++){
			
			System.out.print(r[i] + " ");
			
		}
		System.out.println();
		
		fDcov(a, a.length - 1, r);
		for(int i = 0; i < r.length; i++){
			
			System.out.print(r[i] + " ");
			
		}
		
    }

	public static void main (String [] args){
		
		int [] a = {1,3,5,67,8,3,23,5,6};
		
		for(int i = 0; i < a.length; i++){
			
			System.out.print(a[i] + " ");
			
		}
		
		System.out.println();
		
		fD(a);
		
	}
	
}
